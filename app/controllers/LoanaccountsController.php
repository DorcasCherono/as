<?php

class LoanaccountsController extends \BaseController {

	/**
	 * Display a listing of loanaccounts
	 *
	 * @return Response
	 */
	public function index()
	{
		if(Confide::User()->user_type=='credit'){
			$loanaccounts=Loanaccount::where('is_rejected',0)
			->where('secretary_approved',0)->get();
			return View::make('credit.dashboard',compact('loanaccounts'));
		}else if(Confide::User()->user_type=='admin'){
			$loanaccounts = Loanaccount::all();
			return View::make('loanaccounts.index', compact('loanaccounts'));
		}
	}

	public function guarantor()
	{
		$member = Member::where('membership_no',Confide::user()->username)->get()->first();
		//$loanaccounts = Loanaccount::where('member_id',$member->id)->get();
        $loanaccounts = DB::table('loanaccounts')
		               ->join('loanguarantors', 'loanaccounts.id', '=', 'loanguarantors.loanaccount_id')
		               ->join('loanproducts', 'loanaccounts.loanproduct_id', '=', 'loanproducts.id')
		               ->join('members', 'loanaccounts.member_id', '=', 'members.id')
		               //->where('loanguarantors.member_id',$member->id)
		               ->select('loanaccounts.id','members.name as mname','loanproducts.name as pname','application_date',
		               	'amount_applied','repayment_duration','loanaccounts.interest_rate')
		               ->get();
		               //return $loanaccounts;
		if(empty($loanaccounts)){
			$prompt='There are no available guarantors to approve';
			return View::make('css.loanindex')->withPrompt($prompt)->with('loanaccounts',$loanaccounts);
		}else{
			return View::make('css.loanindex', compact('loanaccounts'));
		}
	}

	/**
	 * Show the form for creating a new loanaccount
	 *
	 * @return Response
	 */
	public function apply($id)
	{
		$member = Member::find($id);
		$guarantors = Member::where('group_id','=',$member->group_id)
            ->get();
		$loanproducts = Loanproduct::all();
		$disbursed=Disbursementoption::all();
		$matrix=Matrix::all();
		return View::make('loanaccounts.create', compact('member', 'guarantors', 'loanproducts','disbursed','matrix'));
	}




	public function apply2($id){
		$member = Member::find($id);
        $guarantors = Member::where('id','!=',$id)
            ->where('group_id','=',$member->group_id)
            ->get();
		$loanproducts = Loanproduct::all();
		$disbursed=Disbursementoption::all();
        $matrix=Matrix::all();
		return View::make('css.loancreate', compact('member', 'guarantors', 'loanproducts','disbursed','matrix'));
	}

	/**
	 * Store a newly created loanaccount in storage.
	 *
	 * @return Response
	 */
	public function doapply()
	{
		$data = Input::all();
		$appliedamount= array_get($data, 'amount_applied');
		$disburseoption=array_get($data, 'disbursement_id');
		$opted=Disbursementoption::where('id','=',$disburseoption)->pluck('max');
		switch ($opted) {
			case $opted<$appliedamount:
				 return Redirect::back()->withGlare('The amount applied is more than the maximum amount that can be disbursed by the selected disbursement option!');
				break;
			case $opted>$appliedamount:

					$validator = Validator::make($data = Input::all(), Loanaccount::$rules);

					if ($validator->fails())
					{
						return Redirect::back()->withErrors($validator)->withInput();
					}
					Loanaccount::submitApplication($data);
					$id = array_get($data, 'member_id');

					return Redirect::to('loans');
				break;
			}
	}



	public function doapply2(){
		$data = Input::all();
		$appliedamount= array_get($data, 'amount_applied');
		$disburseoption=array_get($data, 'disbursement_id');
		$opted=Disbursementoption::where('id','=',$disburseoption)->pluck('max');
		switch ($opted) {
			case $opted<$appliedamount:
				 	return Redirect::back()->withGlare('The amount applied is more than the maximum amount that can be disbursed by the selected disbursement option!');
				break;
			case $opted>$appliedamount:
					$validator = Validator::make($data = Input::all(), Loanaccount::$rules);
					if ($validator->fails())
					{
						return Redirect::back()->withErrors($validator)->withInput();
					}
					Loanaccount::submitApplication($data);
					$id = array_get($data, 'member_id');
					return Redirect::to('memberloans')->withFlashMessage('Loan successfully applied!');
				break;
			}
	}

public function shopapplication(){
		$data =Input::all();
		Loanaccount::submitShopApplication($data);
		return Redirect::to('memberloans');
	}

	/**
	 * Display the specified loanaccount.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$loanaccount = Loanaccount::where('id','=',$id)->get()->first();
		if(empty($loanaccount)){
			return Redirect::back()->withCaution('No records available for the loan. Therefore loan schedule can neither be printed nor previewed.');
		}
		/*//Strart notification
		$period=$loanaccount->period;
		$endpoint=30 *$period;
		$end='+$endpoint';
		$id=$loanaccount->member_id;
		$member=Member::findOrFail($id);
		$startdate=date('Y-m-d',strtotime($loanaccount->repayment_start_date));
		for($date=$startdate;$date<date('Y-m-d',strtotime($startdate."+$endpoint days")); $date=date('Y-m-d',strtotime($startdate."+28 days"))){
			set_time_limit(60);
			$month=date('m');
			$paydate=date('Y-m-d',strtotime($startdate."+30 days"));
			$pay_month=date('m',strtotime($paydate));
			if($month==$pay_month){
				Mail::send( 'emails.notification', array('name'=>$member->name,
				'pay_date'=>date('Y-m-d',strtotime($startdate."+30 days"))), function( $message ) use ($member){
		         $message->to($member->email )->subject( 'Loan Repayment Notification' );
		        });
			}
			break;
		}
		//end notification area*/
		$interest = Loanaccount::getInterestAmount($loanaccount);
		$loanbalance = Loantransaction::getLoanBalance($loanaccount);
		$principal_paid = Loanrepayment::getPrincipalPaid($loanaccount);
		$interest_paid = Loanrepayment::getInterestPaid($loanaccount);
		$loanguarantors = $loanaccount->guarantors;

		$loantransactions = DB::table('loantransactions')->where('loanaccount_id', '=', $id)->orderBy('id', 'DESC')->get();
		if(Confide::user()->user_type == 'member'){
			return View::make('css.loanscheduleshow', compact('loanaccount', 'loanguarantors', 'interest', 'principal_paid', 'interest_paid', 'loanbalance', 'loantransactions'));
		}else{
			return View::make('loanaccounts.show', compact('loanaccount', 'loanguarantors', 'interest', 'principal_paid', 'interest_paid', 'loanbalance', 'loantransactions'));
		}
	}
	public function show2($id)
	{
		$loanaccount = Loanaccount::findOrFail($id);
		$interest = Loanaccount::getInterestAmount($loanaccount);
		$loanbalance = Loantransaction::getLoanBalance($loanaccount);
		$principal_paid = Loanrepayment::getPrincipalPaid($loanaccount);
		$interest_paid = Loanrepayment::getInterestPaid($loanaccount);
		$loanguarantors = $loanaccount->guarantors;

		return View::make('css.loanshow', compact('loanaccount', 'loanguarantors', 'interest', 'principal_paid', 'interest_paid', 'loanbalance'));
	}

	/**
	 * Show the form for editing the specified loanaccount.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$loanaccount = Loanaccount::find($id);

		return View::make('loanaccounts.edit', compact('loanaccount'));
	}

	/**
	 * Update the specified loanaccount in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$loanaccount = Loanaccount::findOrFail($id);

		$validator = Validator::make($data = Input::all(), Loanaccount::$rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		}
		$loanaccount->update($data);
		return Redirect::route('loanaccounts.index');
	}

	/**
	 * Remove the specified loanaccount from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		Loanaccount::destroy($id);
		return Redirect::route('loanaccounts.index');
	}

	public function approve($id)
	{
		$loanaccount = Loanaccount::find($id);
        $charge="A given amount will be charged (if it was specified as a loan product charge) as loan application fee.";
		return View::make('loanaccounts.approve', compact('loanaccount','charge'));
	}

	/**
	 * Update the specified loanaccount in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function doapprove($id){
        /*Take user provided receipt number*/
        $rece = Input::get('loan_no');
        /*Check whether receipt number exists*/
        $check=Receipt::where('receipt_no','=',$rece)->where('type','=','loans')
        ->count();
        /*Route depending whether the receipt number exists*/
        if($check<=0){
            $logged=Confide::User()->username;
            $membertype=Member::where('membership_no','=',$logged)->pluck('member_type');
            //$loanaccount =  new Loanaccount;
            $validator = Validator::make($data = Input::all(), Loanaccount::$rules);
            if ($validator->fails())
            {
                return Redirect::back()->withErrors($validator)->withInput();
            }
            //$loanaccount->approve($data);
            $loanaccount_id = array_get($data, 'loanaccount_id');
            $loanguarantors=DB::table('loanguarantors')
                            ->join('members','loanguarantors.member_id','=','members.id')
                            ->join('loanaccounts','loanguarantors.loanaccount_id','=','loanaccounts.id')
                            ->where('loanguarantors.loanaccount_id','=',$loanaccount_id)
                            ->select('members.name as mname','members.id as mid','loanguarantors.amount as mamount','loanguarantors.has_approved as approved')
                            ->get();
            if(empty($loanguarantors)){
                /****
                    if($membertype=='chairman'){
                        $loanaccount = Loanaccount::findorfail($loanaccount_id);
                        //Check if the secretary has approved first n order for the chairman to approve
                        $approvalstt=$loanaccount->secretary_approved;
                        switch($approvalstt){
                            case 0:
                                return Redirect::back()->withClinch("SECRETARY APPROVAL: The secretary has not yet approved the loan application.");
                            break;

                            case 1:
                                $loanaccount->date_approved = array_get($data, 'date_approved');
                                $loanaccount->amount_approved = array_get($data, 'amount_approved');
                                $loanaccount->interest_rate = array_get($data, 'interest_rate');
                                $loanaccount->period = array_get($data, 'period');
                                $loanaccount->chairman_approved = TRUE;
                                $loanaccount->is_approved = TRUE;
                                $loanaccount->is_new_application = FALSE;
                                $loanaccount->update();
                                return Redirect::route('loans.index');
                            break;
                        }

                    }else if($membertype=='secretary'){
                    ***/
                        //$chargeamount=Loanproduct::chargeOnApplication($id);
                        $loanaccount = Loanaccount::findorfail($loanaccount_id);
                        $loanaccount->date_approved = array_get($data, 'date_approved');
                        $loanaccount->amount_approved = array_get($data, 'amount_approved');
                        $loanaccount->interest_rate = array_get($data, 'interest_rate');
                        $loanaccount->period = array_get($data, 'period');
                        $loanaccount->chairman_approved = TRUE;
                        $loanaccount->is_approved = TRUE;
                        $loanaccount->secretary_approved = TRUE;
                        $loanaccount->is_new_application = FALSE;
                        $loanaccount->update();

                        /*Create a receipt*/
                        $rec= new Receipt;
                        $rec->type='loans';
                        $rec->receipt_no=$rece;
                        $rec->trans_no=$loanaccount_id;
                        $rec->amount=array_get($data, 'amount_approved');
                        $rec->save();

                        return Redirect::route('loans.index');
                    /**}else{
                        return Redirect::back()->withQuest("UNAUTHORIZED USER: You are not authorized to approve the loan application");
                    }	**/
            }else{
                foreach($loanguarantors as $lguara){
                    $check_if_agreed=$lguara->approved;
                    switch($check_if_agreed){
                        case 0:
                            return Redirect::back()->withStatus('The available guarantors have not agreed to act as guarantors for the loan.');
                        break;
                        case 1:
                            /**
                            if($membertype=='chairman'){
                            $loanaccount = Loanaccount::findorfail($loanaccount_id);
                            //Check if the secretary has approved first n order for the chairman to approve
                            $approvalstt=$loanaccount->secretary_approved;
                                 if($approvalstt==0){
                                    return Redirect::back()->withClinch("SECRETARY APPROVAL: The secretary has not yet approved the loan application.");
                                 }else if($approvalstt==1){
                                        $loanaccount->date_approved = array_get($data, 'date_approved');
                                        $loanaccount->amount_approved = array_get($data, 'amount_approved');
                                        $loanaccount->interest_rate = array_get($data, 'interest_rate');
                                        $loanaccount->period = array_get($data, 'period');
                                        $loanaccount->chairman_approved = TRUE;
                                        $loanaccount->is_approved = TRUE;
                                        $loanaccount->is_new_application = FALSE;
                                        $loanaccount->update();
                                        return Redirect::route('loans.index');
                                 }

                            }else if($membertype=='secretary'){**/
                                //$chargeamount=Loanproduct::chargeOnApplication($id);
                                $loanaccount =Loanaccount::findorfail($loanaccount_id);
                                $loanaccount->date_approved = array_get($data, 'date_approved');
                                $loanaccount->amount_approved = array_get($data, 'amount_approved');
                                $loanaccount->interest_rate = array_get($data, 'interest_rate');
                                $loanaccount->period = array_get($data, 'period');
                                $loanaccount->chairman_approved = TRUE;
                                $loanaccount->is_approved = TRUE;
                                $loanaccount->secretary_approved = TRUE;
                                $loanaccount->is_new_application = FALSE;
                                $loanaccount->update();

                                /*Create a receipt*/
                                $rec= new Receipt;
                                $rec->type='loans';
                                $rec->receipt_no=$rece;
                                $rec->trans_no=$loanaccount_id;
                                $rec->amount=array_get($data, 'amount_approved')+$chargeamount;
                                $rec->save();

                                return Redirect::route('loans.index');
                            /**}else{
                                return Redirect::back()->withQuest("UNAUTHORIZED USER: You are not authorized to approve the loan application");
                         }	**/
                        break;
                    }
                }
            }
        }else if($check>0){
            /*Redirect to current page if the receipt number exists*/
            return Redirect::back()->withExisted('The receipt number is already available. Please provide another receipt number.')->withInput();
        }
	}

	public function guarantorapprove($id){
		//$loanaccount =  new Loanaccount;
		$validator = Validator::make($data = Input::all(), loanguarantor::$rules);

		if ($validator->fails()){
			return Redirect::back()->withErrors($validator)->withInput();
		}
		//$loanaccount->approve($data);
		$member = Member::where('membership_no',Confide::user()->username)->first();

		$loanguarantor = loanguarantor::where('loanaccount_id',$id)
						->where('member_id',$member->id)
						->first();

		$lg = loanguarantor::findOrFail($loanguarantor->id);
        $lg->has_approved = Input::get('status');
        //$lg->date = date('Y-m-d');
		$lg->update();


        include(app_path() . '\views\AfricasTalkingGateway.php');
		$mem_id = array_get($data, 'mid');

		$member1 = Member::findOrFail($mem_id);


    // Specify your login credentials
    $username   = "kenkode";
    $apikey     = "7876fef8a4303ec6483dfa47479b1d2ab1b6896995763eeb620b697641eba670";
    // Specify the numbers that you want to send to in a comma-separated list
    // Please ensure you include the country code (+254 for Kenya in this case)
    $recipients = $member1->phone;
    // And of course we want our recipients to know what we really do
    $message    = "Hello ".$member1->name."!  Member ".$member->name." has approved your loan for Ksh. ".array_get($data, 'amount_applied')." for loan product ".array_get($data, 'pname')." and has agreed to be your guarantor and has guranteed an amount of Ksh. ".array_get($data, 'amount').".
    Please wait for final approval from the managements of the sacco so as to get the loan.
    Thank you!";
    // Create a new instance of our awesome gateway class
    $gateway    = new AfricasTalkingGateway($username, $apikey);
    // Any gateway error will be captured by our custom Exception class below,
    // so wrap the call in a try-catch block
    try
    {
      // Thats it, hit send and we'll take care of the rest.
      //$results = $gateway->sendMessage($recipients, $message);

      /*foreach($results as $result) {
        // status is either "Success" or "error message"
        echo " Number: " .$result->number;
        echo " Status: " .$result->status;
        echo " MessageId: " .$result->messageId;
        echo " Cost: "   .$result->cost."\n";
      }*/
    }
    catch ( AfricasTalkingGatewayException $e )
    {
      echo "Encountered an error while sending: ".$e->getMessage();
    }

    if($member1->email != null){
    	if(Input::get('status') == 'approved'){
    		Mail::send( 'emails.approve', array('name'=>$member1->name,'mname'=>$member->name, 'id'=>$member->id_number, 'amount_applied'=>array_get($data, 'amount_applied'),'product'=>array_get($data, 'pname')), function( $message ) use ($member1)
        {
         $message->to($member1->email )->subject( 'Guarantor Approval' );
        });
    	}else{
           Mail::send( 'emails.reject', array('name'=>$member1->name,'mname'=>$member->name, 'id'=>$member->id_number, 'amount_applied'=>array_get($data, 'amount_applied'),'product'=>array_get($data, 'pname')), function( $message ) use ($member1)
        {
         $message->to($member1->email )->subject( 'Guarantor Approval' );
        });
        }
    }

        if(Input::get('status') == 'approved'){
		return Redirect::to('/guarantorapproval')->withFlashMessage('You have successfully approved member loan!');
	    }else{
        return Redirect::to('/guarantorapproval')->withDeleteMessage('You have successfully rejected member loan!');
	    }
	}

    public function guarantorreject($id)
	{
		//$loanaccount =  new Loanaccount;

		$validator = Validator::make($data = Input::all(), loanguarantor::$rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		}

		//$loanaccount->approve($data);


		$member = Member::where('membership_no',Confide::user()->username)->first();

		$loanguarantor = loanguarantor::where('loanaccount_id',$id)->where('member_id',$member->id)->first();
		$lg = loanguarantor::findOrFail($loanguarantor->id);
        $lg->is_approved = 'rejected';
        $lg->date = date('Y-m-d');
		$lg->update();


        include(app_path() . '\views\AfricasTalkingGateway.php');
		$mem_id = array_get($data, 'mid1');

		$member1 = Member::findOrFail($mem_id);


    // Specify your login credentials
    $username   = "kenkode";
    $apikey     = "7876fef8a4303ec6483dfa47479b1d2ab1b6896995763eeb620b697641eba670";
    // Specify the numbers that you want to send to in a comma-separated list
    // Please ensure you include the country code (+254 for Kenya in this case)
    $recipients = $member1->phone;
    // And of course we want our recipients to know what we really do
    $message    = "Hello ".$member1->name."!  Member ".$member->name." has rejected your loan for Ksh. ".array_get($data, 'amount_applied1')." for loan product ".array_get($data, 'pname1').".
    Thank you!";
    // Create a new instance of our awesome gateway class
    $gateway    = new AfricasTalkingGateway($username, $apikey);
    // Any gateway error will be captured by our custom Exception class below,
    // so wrap the call in a try-catch block
    try
    {
      // Thats it, hit send and we'll take care of the rest.
      //$results = $gateway->sendMessage($recipients, $message);

      /*foreach($results as $result) {
        // status is either "Success" or "error message"
        echo " Number: " .$result->number;
        echo " Status: " .$result->status;
        echo " MessageId: " .$result->messageId;
        echo " Cost: "   .$result->cost."\n";
      }*/
    }
    catch ( AfricasTalkingGatewayException $e )
    {
      echo "Encountered an error while sending: ".$e->getMessage();
    }

    if($member1->email != null){
        Mail::send( 'emails.guarantor', array('name'=>$member1->name,'mname'=>$member->name, 'id'=>$member->id_number, 'amount_applied'=>array_get($data, 'amount_applied'),'product'=>array_get($data, 'pname')), function( $message ) use ($member1)
        {
         $message->to($member1->email )->subject( 'Guarantor Approval' );
        });
        }


		return Redirect::to('/guarantorapproval')->withDeleteMessage('You have successfully rejected member loan!');
	}

	public function reject($id)
	{
		$loanaccount = Loanaccount::find($id);

		return View::make('loanaccounts.reject', compact('loanaccount'));
	}


	public function rejectapplication()
	{

		$validator = Validator::make($data = Input::all(), Loanaccount::$rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		}



		$loanaccount_id = array_get($data, 'loanaccount_id');



		$loanaccount = Loanaccount::findorfail($loanaccount_id);

		$loanaccount->rejection_reason = array_get($data, 'reasons');
		$loanaccount->is_rejected = TRUE;
		$loanaccount->is_approved = FALSE;
		$loanaccount->is_new_application = FALSE;
		$loanaccount->update();
		if(Confide::User()->user_type=='credit'){
			$loanaccounts=Loanaccount::where('is_rejected',0)
			->where('secretary_approved',0)->get();
			return View::make('credit.dashboard',compact('loanaccounts'));
		}else if(Confide::User()->user_type=='admin'){
			return Redirect::route('loans.index');
		}
	}


	public function disburse($id)
	{
		$loanaccount = Loanaccount::find($id);
        $charge="A given amount will be charged if it was specified as a loan product charge as loan disbursement fee.";
		return View::make('loanaccounts.disburse', compact('loanaccount','$charge'));
	}

	/**
	 * Update the specified loanaccount in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function dodisburse($id)
	{
		//$loanaccount =  new Loanaccount;

		$validator = Validator::make($data = Input::all(), Loanaccount::$rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		}

		//$loanaccount->approve($data);


		$loanaccount_id = array_get($data, 'loanaccount_id');

		$chargeamount=Loanproduct::chargeOnDisbursement($id);
        /*Record Charge as income*/
        $charge_journal= new Journal;
        $charge_journal = Account::where('category','=','INCOME')->get()->first();
        $charge_journal->account()->associate($account);
        $charge_journal->date = $date;
        $charge_journal->trans_no = strtotime($date);
        $charge_journal->initiated_by = Confide::user()->username;
        $charge_journal->amount = $chargeamount;
        $charge_journal->type = 'credit';
        $charge_journal->description = "Top Up Fee";
        $charge_journal->save();
		$loanaccount = Loanaccount::findorfail($loanaccount_id);


		$amount = array_get($data, 'amount_disbursed') - $chargeamount;
		$date = array_get($data, 'date_disbursed');

		$loanaccount->date_disbursed = $date;
		$loanaccount->amount_disbursed = $amount;
		$loanaccount->repayment_start_date = array_get($data, 'repayment_start_date');
		$loanaccount->account_number = Loanaccount::loanAccountNumber($loanaccount);
		$loanaccount->is_disbursed = TRUE;
		$loanaccount->update();

		$loanamount = $amount + Loanaccount::getInterestAmount($loanaccount);
		Loantransaction::disburseLoan($loanaccount, $loanamount, $date);

		return Redirect::route('loans.index');
	}



	public function gettopup($id){
		$loanaccount = Loanaccount::findOrFail($id);
        //$chargeamount=Loanproduct::chargeOnTopUp($id);
        $charge="A given amount will be charged (if it was specified as a loan product charge) as loan top up fee.";
		return View::make('loanaccounts.topup', compact('loanaccount','charge'));
	}



	public function topup($id){
		$data = Input::all();
		$date =  Input::get('top_up_date');
        $chargeamount=Loanproduct::chargeOnTopUp($id);
        /*Record Charge as income*/
        $charge_journal= new Journal;
        $account = Account::where('category','=','INCOME')->get()->first();
        $charge_journal->account()->associate($account);
        $charge_journal->date = $date;
        $charge_journal->trans_no = strtotime($date);
        $charge_journal->initiated_by = Confide::user()->username;
        $charge_journal->amount = $chargeamount;
        $charge_journal->type = 'credit';
        $charge_journal->description = "Top Up Fee";
        $charge_journal->save();

		$amount = Input::get('amount') - $chargeamount;
		$loanaccount = Loanaccount::findOrFail($id);
        $loan_balance= Loantransaction::getLoanBalance($loanaccount);

        if($loan_balance > $amount){
            return Redirect::back()->withCaution("Top up amount should be more than the loan balance.");
        }
		 /*Pay Remaining Balance*/
        $transaction = new Loantransaction;
		$transaction->loanaccount()->associate($loanaccount);
		$transaction->date = $date;
		$transaction->description = 'loan repayment';
		$transaction->amount = $loan_balance;
		$transaction->type = 'credit';
		$transaction->save();
        /*Create a Separate Loan Account*/
        if($amount >0){
            $loanaccount_topped= new Loanaccount;
            $loanaccount_topped->is_new_application= FALSE;
            $loanaccount_topped->member_id=$loanaccount->member_id;
            $loanaccount_topped->loanproduct_id=$loanaccount->loanproduct_id;
            $loanaccount_topped->application_date = $date;
            $loanaccount_topped->amount_applied = Input::get('amount');
                /*Get Loan Insurance*/
                $insurance =Loanaccount::insureLoan($loanaccount->repayment_duration,Input::get('amount'));
                $amount_taken = $amount - $insurance;
                /*Record Insurance as income*/
                $insurance_journal= new Journal;
                $account = Account::where('category','=','INCOME')->get()->first();
                $insurance_journal->account()->associate($account);
                $insurance_journal->date = $date;
                $insurance_journal->trans_no = strtotime($date);
                $insurance_journal->initiated_by = Confide::user()->username;
                $insurance_journal->amount = $insurance;
                $insurance_journal->type = 'credit';
                $insurance_journal->description = "Loan Insurance Fee";
                $insurance_journal->save();

            $loanaccount_topped->interest_rate = $loanaccount->interest_rate;
            $loanaccount_topped->period = $loanaccount->period;
            $loanaccount_topped->repayment_duration = $loanaccount->repayment_duration;
            $loanaccount_topped->account_number = Loanaccount::loanAccountNumber($loanaccount);
            $loanaccount_topped->is_approved=TRUE;
            $loanaccount_topped->amount_approved=$amount_taken;
            $loanaccount_topped->is_disbursed=TRUE;
            $loanaccount_topped->amount_disbursed=$amount_taken;
            $loanaccount_topped->date_disbursed=$date;
            $loanaccount_topped->save();
            Loantransaction::disburseLoan($loanaccount_topped, $amount_taken, $date);
        }
		//Loantransaction::topupLoan($loanaccount, $top_up_amount, $date);
		return Redirect::to('loans/show/'.$loanaccount_topped->id);
	}
	public function member(){
		$loans=Loanaccount::pluck('member_id');
		$members = Member::where('id','=',$loans)->get();
		return View::make('pdf.members', compact('members'));
	}

	public function application($id){

		$transaction = Loanaccount::findOrFail($id);

		$guarantors = Loanguarantor::where('loanaccount_id',$id)->where('has_approved',1)->get();

		$kin = Kin::where('member_id',$transaction->member_id)->first();

		$securities = Loansecurity::where('loanaccount_id',$id)->get();

		$purposes   = Loanpurpose::where('loanaccount_id',$id)->get();

		$saving   = DB::table('savingtransactions')
		                    ->join('savingaccounts','savingtransactions.savingaccount_id','=','savingaccounts.id')
		                    ->where('member_id',$transaction->member_id)
		                    ->where('savingtransactions.type','credit')
		                    ->sum('amount');

		$shares   = DB::table('sharetransactions')
		                    ->join('shareaccounts','sharetransactions.shareaccount_id','=','shareaccounts.id')
		                    ->where('member_id',$transaction->member_id)
		                    ->where('sharetransactions.type','credit')
		                    ->sum('amount');

		$remittance   = DB::table('members')
		                    ->where('members.id',$transaction->member_id)
		                    ->sum('monthly_remittance_amount');

		$amount_to_date   = $saving + $remittance+$shares;

		$principal_paid   = DB::table('loanrepayments')
		                    ->join('loanaccounts','loanrepayments.loanaccount_id','=','loanaccounts.id')
		                    ->where('member_id',$transaction->member_id)
		                    ->sum('principal_paid');

		$amount_disbursed   = DB::table('loanaccounts')
		                    ->where('member_id',$transaction->member_id)
		                    ->sum('amount_disbursed');

		$top_up   = DB::table('loanaccounts')
		                    ->where('member_id',$transaction->member_id)
		                    ->sum('top_up_amount');

		$balance_to_date = $amount_disbursed + $top_up - $principal_paid;

		$organization = Organization::findOrFail(1);
		//Get chairman and secretary details:: signature purpose
		$chairman=Member::where('member_type','=','chairman')->get()->first();
		$secretary=Member::where('member_type','=','secretary')->get()->first();

		if($transaction->loanproduct->application_form == 'Quick Advance Application Form'){
			$pdf = PDF::loadView('pdf.loanreports.advanceapplicationform', compact('transaction','balance_to_date','amount_to_date','kin','guarantors', 'organization','securities','purposes','chairman','secretary'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Quick Advance Application Form.pdf');
		}else{
	        $pdf = PDF::loadView('pdf.loanreports.loanapplicationform', compact('transaction','balance_to_date','amount_to_date','kin','guarantors', 'organization','securities','purposes','chairman','secretary'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Loan Application.pdf');
        }

	}


	public function application22(){

		$transaction = Loanaccount::findOrFail(Input::get('loanaccount_id'));
		$guarantors = Loanguarantor::where('loanaccount_id',Input::get('loanaccount_id'))
		->where('has_approved',1)->get();
		$kin = Kin::where('member_id',$transaction->member_id)->first();
		$securities = Loansecurity::where('loanaccount_id',Input::get('loanaccount_id'))
		->get();
		$purposes   = Loanpurpose::where('loanaccount_id',Input::get('loanaccount_id'))
		->get();
		$saving   = DB::table('savingtransactions')
		                    ->join('savingaccounts','savingtransactions.savingaccount_id','=','savingaccounts.id')
		                    ->where('member_id',$transaction->member_id)
		                    ->where('savingtransactions.type','credit')
		                    ->sum('amount');

		$shares   = DB::table('sharetransactions')
		                    ->join('shareaccounts','sharetransactions.shareaccount_id','=','shareaccounts.id')
		                    ->where('member_id',$transaction->member_id)
		                    ->where('sharetransactions.type','credit')
		                    ->sum('amount');

		$remittance   = DB::table('members')
		                    ->where('members.id',$transaction->member_id)
		                    ->sum('monthly_remittance_amount');

		$amount_to_date   = $saving + $remittance+$shares;

		$principal_paid   = DB::table('loanrepayments')
		                    ->join('loanaccounts','loanrepayments.loanaccount_id','=','loanaccounts.id')
		                    ->where('member_id',$transaction->member_id)
		                    ->sum('principal_paid');

		$amount_disbursed   = DB::table('loanaccounts')
		                    ->where('member_id',$transaction->member_id)
		                    ->sum('amount_disbursed');

		$top_up   = DB::table('loanaccounts')
		                    ->where('member_id',$transaction->member_id)
		                    ->sum('top_up_amount');

		$balance_to_date = $amount_disbursed + $top_up - $principal_paid;

		$organization = Organization::findOrFail(1);
		//Get chairman and secretary details:: signature purpose
		$chairman=Member::where('member_type','=','chairman')->get()->first();
		$secretary=Member::where('member_type','=','secretary')->get()->first();

		if($transaction->loanproduct->application_form == 'Quick Advance Application Form'){
			$pdf = PDF::loadView('pdf.loanreports.advanceapplicationform', compact('transaction','balance_to_date','amount_to_date','kin','guarantors', 'organization','securities','purposes','chairman','secretary'))->setPaper('a4')
                ->setOrientation('potrait');
			return $pdf->stream('Quick Advance Application Form.pdf');
		}else{
	        $pdf = PDF::loadView('pdf.loanreports.loanapplicationform', compact('transaction','balance_to_date','amount_to_date','kin','guarantors', 'organization','securities','purposes','chairman','secretary'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Loan Application.pdf');
        }

	}

    public function form_sale($id){
        $member= Member::where('id','=',$id)->first();
        $accounts =Account::where('category','=','INCOME')->get();
        return View::make('loanaccounts.form_sale',compact('member','accounts'));
    }

    public function formSales(){
        return View::make('pdf.loanreports.form_sale');
    }

    public function doFormSales(){
        $fromDate = Input::get('fromDate');
        $toDate = Input::get('toDate');
        $counter=Formsale::whereBetween('date', [$fromDate, $toDate])->count();
        $sales=Formsale::whereBetween('date', [$fromDate, $toDate])->get();
        if($counter>0){
            $organization = Organization::findOrFail(1);
            $pdf = PDF::loadView('pdf.loanreports.formsales', compact( 'organization','sales'))->setPaper('a4')
                ->setOrientation('potrait');
            return $pdf->stream('Summarised Form Sales.pdf');
        }else if($counter<=0){
            return Redirect::back()->withMissed("There are no form sales that occurred between the selected dates. Please select another date range and try again.");
        }

    }

}
