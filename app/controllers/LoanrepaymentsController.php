<?php

class LoanrepaymentsController extends \BaseController {

	/**
	 * Display a listing of loanrepayments
	 *
	 * @return Response
	 */
	public function index()
	{
		$loanrepayments = Loanrepayment::all();

		return View::make('loanrepayments.index', compact('loanrepayments'));
	}

	/**
	 * Show the form for creating a new loanrepayment
	 *
	 * @return Response
	 */
	public function create($id)
	{

		$loanaccount = Loanaccount::where('id','=',$id)->get()->first();

		$loanbalance = Loantransaction::getLoanBalance($loanaccount);

		if($loanbalance<=0){
			return Redirect::back()->withCompleted('The loan has been fully cleared!');
		}else{
			$principal_due = Loantransaction::getPrincipalDue($loanaccount);

			$interest = Loanaccount::getInterestAmount($loanaccount);

			$interest_due = Loantransaction::getInterestDue($loanaccount);

			if(Confide::user()->user_type == 'member'){

				return View::make('css.loanpay', compact('loanaccount', 'principal_due', 'interest_due', 'loanbalance', 'interest'));
		    }else{
				return View::make('loanrepayments.create', compact('loanaccount', 'principal_due', 'interest_due', 'loanbalance', 'interest'));
		    }
		}		
	}
	//Recover loan
	public function recoverloan($id)
	{
		$loanaccount = Loanaccount::where('id','=',$id)->get()->first();

		$status=$loanaccount->is_recovered;
		switch ($status) {
			case 0:
				$loanguarantors=DB::table('loanguarantors')
						->join('members','loanguarantors.member_id','=','members.id')
						->join('loanaccounts','loanguarantors.loanaccount_id','=','loanaccounts.id')
						->where('loanguarantors.loanaccount_id','=',$id)
						->select('members.name as mname','members.id as mid')
						->get();
				//return $loanguarantors;
				$loanbalance = Loantransaction::getLoanBalance($loanaccount);

				$principal_due = Loantransaction::getPrincipalDue($loanaccount);

				$interest = Loanaccount::getInterestAmount($loanaccount);

				$interest_due = Loantransaction::getInterestDue($loanaccount);
				return View::make('loanrepayments.recover', compact('loanaccount', 'loanguarantors','principal_due', 'interest_due', 'loanbalance', 'interest'));
				break;			
			case 1:
					return Redirect::back()->withRecover('The loan has already been recovered..');
				break;
		}		
	}
	/**/
	public function demandLetter($id){
		$loan=Loanaccount::where('id',$id)->first();
		$member=Member::where('id','=',$loan->member_id)->first();
		$loanbalance = Loantransaction::getLoanBalance($loan);
		$organization=Organization::find(1);
		$pdf = PDF::loadView('pdf.loanreports.demand', compact('loanbalance', 'organization', 'member', 'loan'))->setPaper('a4')->setOrientation('potrait'); 	
		return $pdf->stream($member->name.' '.$member->membership_no.' '.date('d-F-Y').' '.'Demand Letter.pdf');

	}
	//Recovering loan from guarantor deposits
	public function doRecover(){
		//Obtain user supplied form data
		$records=Input::all();
		$data = Input::all();
		$loan_id=array_get($records,'loanaccount_id');
		$loanbalance = array_get($records,'loanaccount_balance');
		$loanamount=	array_get($records,'amount');
		//Obtain the last principal paid
		$recovered_status=DB::table('loanaccounts')
					->where('id','=',$loan_id)
					->pluck('is_recovered');
		
		switch ($recovered_status) {
			case 0:
					//Select the guarantors in question details and relevant data
					$loanguarantors=DB::table('loanguarantors')
						->join('members','loanguarantors.member_id','=','members.id')
						->join('loanaccounts','loanguarantors.loanaccount_id','=','loanaccounts.id')
						->where('loanguarantors.loanaccount_id','=',$loan_id)
						->select('members.name as mname','members.id as mid','loanguarantors.amount as mamount')
						->get();	
						//Check if the loan has already been settled			
						if($loanbalance<=0){
							return Redirect::back()->withBalance('The loan is fully settled by the Borrower!');
						}else{		
								//Deny recovering of loans without guarantors				
								if(count($loanguarantors)<1){
									return Redirect::back()->withNone('No guarantors available!');					
								}else{
									foreach($loanguarantors as $loanguara){
										//Obtain the fraction liability of each guarantor::iteratively
										$fraction=round((($loanguara->mamount)/$loanamount),0);
										//Check the amount to pay from the remaining loan balance
										$amount_to_recover=round(($fraction * $loanbalance),0);

										//recover two-thirds of the guarantor liability from the guarantor savings
										$recover_from_savings=0.8 *(round(2/3 *$amount_to_recover,0));
										//Recover amount from savings
										$savings=DB::table('savingtransactions')
														->join('savingaccounts','savingtransactions.savingaccount_id','=','savingaccounts.id')
														->where('savingaccounts.member_id','=',$loanguara->mid)
														->where('savingtransactions.type','=','credit')
														->select(DB::raw('max(amount) as largesave'),'savingtransactions.id as saveid')
														->get();
										//dd($savings);
										foreach ($savings as $save) {
											$sid=$save->saveid;
											$slarge=$save->largesave;
											DB::table('savingtransactions')->where('id','=',$sid)							  
											  ->update(['amount'=>round($slarge-$recover_from_savings,0)]);
										}	
										//recover one-third of the guarantor liability from the guarantor shares
										$recover_from_shares=0.8*(round(1/3 *$amount_to_recover,0));
										//Recover amount from shares
										$shares=DB::table('sharetransactions')
														->join('shareaccounts','sharetransactions.shareaccount_id','=','shareaccounts.id')
														->where('shareaccounts.member_id','=',$loanguara->mid)
														->where('sharetransactions.type','=','credit')
														->select(DB::raw('max(amount) as largeshare'),'sharetransactions.id as shareid')
														->get();
										foreach ($shares as $share) {
											$shareid=$share->shareid;
											$sharelarge=$share->largeshare;
											DB::table('sharetransactions')->where('id','=',$shareid)							  
											  ->update(['amount'=>round($sharelarge-$recover_from_shares,0)]);
										}	
										Loanrepayment::repayLoan($data);
																				
									}				
								}
						}
						//Insert into repayment relation the remaining loan balance in full which has been recovered from each //guarantor
						$loanrecover=Loanaccount::where('id','=',$loan_id)->get();
						$loanrecover->is_recovered=1;
						$loanrecover->loan_status='closed';
						$loanrecover->save();

						$date_today=date('Y-m-d');
						$loanaccountupdate = new Loanrepayment;
						$loanaccountupdate->loanaccount_id=$loan_id;
						$loanaccountupdate->date=$date_today;
						$loanaccountupdate->principal_paid=$loanbalance;
						$loanaccountupdate->interest_paid=0;
						$loanaccountupdate->save();
						//redirect with success message indicating the loan has been fully recovered
						return Redirect::back()->withDone('The loan balance has been successfully recovered from guarantor deposits.');									
				break;
			//Execute when the last paid principal was more than the current loan balance:: Indicates that the loan had 
			//earlier been recovered
			case 1:
					//Redirect indicating the loan had earlier been recovered
					return Redirect::back()->withDeposits('The loan had already been settled from guarantor deposits.');			
				break;
		}							
	}
	//Convert Loan
	public function convert($id)
	{
		$loanaccount = Loanaccount::findOrFail($id);

		$status=$loanaccount->is_converted;
		switch($status){
			case 0:
				$loanguarantors=DB::table('loanguarantors')
						->join('members','loanguarantors.member_id','=','members.id')
						->join('loanaccounts','loanguarantors.loanaccount_id','=','loanaccounts.id')
						->where('loanguarantors.loanaccount_id','=',$id)
						->select('members.name as mname','members.id as mid')
						->get();
				$loanbalance = Loantransaction::getLoanBalance($loanaccount);

				$principal_due = Loantransaction::getPrincipalDue($loanaccount);

				$interest = Loanaccount::getInterestAmount($loanaccount);

				$interest_due = Loantransaction::getInterestDue($loanaccount);
				return View::make('loanrepayments.convert', compact('loanaccount', 'loanguarantors','principal_due', 'interest_due', 
					'loanbalance', 'interest'));
			break;
			case 1:
				return Redirect::back()->withConvert('The Loan has already been converted!!');
			break;
		}		
	}


	public function doConvert(){
		//Collect User Supplied Details
		$records=Input::all();
		$data = Input::all();
		$loan_id=array_get($records,'loanaccount_id');
		$loanbalance = array_get($records,'loanaccount_balance');
		$loanamount= array_get($records,'amount');
		$loanproduct= array_get($records,'loan_product');
		$loaninterest= array_get($records,'loan_interest');
		$loanperiod= array_get($records,'loan_period');
		$accountnumber= array_get($records,'account_number');
		$repaymentduration= array_get($records,'repayment_duration');
		switch($loanbalance){
			case  $loanbalance<=0:
					return Redirect::back()->withStress('Inadequate Loan Balance!!!');
				break;
			case $loanbalance > 0:
					//Get guarantors details
					$loanguarantors=DB::table('loanguarantors')
						->join('members','loanguarantors.member_id','=','members.id')
						->join('loanaccounts','loanguarantors.loanaccount_id','=','loanaccounts.id')
						->where('loanguarantors.loanaccount_id','=',$loan_id)
						->select('members.name as mname','members.id as mid','loanguarantors.amount as mamount')
						->get();	
						$gdate=date('Y-m-d');
					//Check whether there are no guarantors
						if(count($loanguarantors)<1){
							return Redirect::back()->withNone('No guarantors available!');					
						}else{
							$loanconvert=Loanaccount::where('id','=',$loan_id)->get();
							$loanconvert->is_converted=1;							
							$loanconvert->loan_status='closed';
							$loanconvert->save();

							//Iteratively Create new Loan for the guarantors depending on the amount they guaranteed
							foreach($loanguarantors as $loanguara){								
								$gamount=$loanguara->mamount;
								$guarant=new Loanaccount;
								$guarant->member_id=$loanguara->mid;
								$guarant->loanproduct_id=$loanproduct;
								$guarant->application_date=$gdate;
								$guarant->amount_applied=$gamount;
								$guarant->interest_rate=$loaninterest;
								$guarant->period=$loanperiod;
								$guarant->is_approved=1;
								$guarant->date_approved=$gdate;
								$guarant->amount_approved=$gamount;
								$guarant->is_disbursed=1;
								$guarant->is_new_application=0;
								$guarant->amount_disbursed=$gamount;
								$guarant->date_disbursed=$gdate;
								$guarant->account_number=$accountnumber;
								$guarant->repayment_start_date=$gdate;								
								$guarant->repayment_duration=$repaymentduration;	
								$guarant->save();								
							}
							Loanrepayment::repayLoan($data);
							return Redirect::back()->withDone('The Loan was successfully converted to a new loan for the guarantors....');	
						}					
				break;
		}
	}
	/**
	 * Store a newly created loanrepayment in storage.
	 *
	 * @return Response
	 */
	public function store(){
        
		$validator = Validator::make($data = Input::all(), Loanrepayment::$rules);

		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		}
		$loanaccount = Input::get('loanaccount_id');
        /*Get Last repayment remitted*/
        $lastpaid=Loanrepayment::where('loanaccount_id','=',$loanaccount)
            ->orderBy('id','DESC')
            ->get()
            ->first();
        if($lastpaid != null){
            $year = date("Y", strtotime($lastpaid->date));
            $mwaka= date("Y");
            $month= date("m", strtotime($lastpaid->date));
            $mwezi= date("m");
        
            if(($year==$mwaka)&&($month==$mwezi)){
                //Create a transaction record
                $transaction = new Loantransaction;
                $transaction->loanaccount_id=$loanaccount;
                $transaction->date = Input::get('date');
                $transaction->description = 'loan repayment';
                $transaction->amount = Input::get('amount');
                $transaction->type='credit';
                $transaction->save();
                Audit::logAudit(Input::get('date'), Confide::user()->username, 'loan repayment', 'Loans', Input::get('amount'));
                /*Pay Principal with all the amount*/
                $repayment = new Loanrepayment;
                $repayment->loanaccount_id=$loanaccount;
                $repayment->date = Input::get('date');
                $repayment->principal_paid = Input::get('amount');	
                $repayment->transaction_id=$transaction->id;
                $repayment->save();
                /*Loan product*/
                $loan = Loanaccount::where('id','=',$loanaccount)->get()->first();
                $product = Loanproduct::where('id','=',$loan->loanproduct_id)->get()->first();
                $account = Loanposting::getPostingAccount($product, 'principal_repayment');
                $data = array(
                    'credit_account' =>$account['credit'] , 
                    'debit_account' =>$account['debit'] ,
                    'date' => Input::get('date'),
                    'amount' => Input::get('amount'),
                    'initiated_by' => 'system',
                    'description' => 'principal repayment'
                    );
                $journal = new Journal;
                $journal->journal_entry($data);
                //Loanrepayment::payPrincipal($loanaccount, Input::get('date'), Input::get('amount'),$transaction);
                //Redirect to loan page
                return Redirect::to('loans/show/'.$loanaccount)->withFlashMessage('Loan successfully repaid!');  
        }else{
            $loanamount=Loanaccount::where('id','=',$loanaccount)->pluck('amount_applied');
            //dd($loanamount);
            $repayamount= Input::get('amount');
            $guarantors=DB::table('loanguarantors')->where('loanaccount_id','=',$loanaccount)->get();		
            foreach($guarantors as $g){
                $member=$g->member_id;
                $amount=$g->amount;
                $fraction=$amount/$loanamount;	
                $reduceamount=$fraction * $repayamount;
                $reduced=$amount- $reduceamount;								
                Loanguarantor::where('member_id','=',$member)
                  ->where('loanaccount_id','=',$loanaccount)
                  ->update(['amount'=>$reduced]);	
            }
            //return $amount;
            Loanrepayment::repayLoan($data);
            return Redirect::to('loans/show/'.$loanaccount)->withFlashMessage('Loan successfully repaid!');   
            }
        }
        Loanrepayment::repayLoan($data);
        return Redirect::to('loans/show/'.$loanaccount)->withFlashMessage('Loan successfully repaid!'); 
        
	}
	public function offsetloan(){
		$validator = Validator::make($data = Input::all(), Loanrepayment::$rules);
		if ($validator->fails()){
			return Redirect::back()->withErrors($validator)->withInput();
		}
        $date= Input::get('date');
        $loanaccount = Loanaccount::findOrFail(Input::get('loanaccount_id'));
        $loan_balance= Loantransaction::getLoanBalance($loanaccount);
        $bal_percent= 0.05 * $loan_balance;
        $amount_to_offset= $loan_balance + $bal_percent + 500;
        $sacco_income= $bal_percent + 500;
        /*Member Account, then Deposits*/
        $savingaccount= Savingaccount::where('member_id','=',$loanaccount->member_id)
            ->get()->first();
        $deposits= Savingtransaction::where('savingaccount_id','=',$savingaccount->id)
            ->where('type','=','credit')->sum('amount');
        if($deposits <= $amount_to_offset){
            return Redirect::back()->withCaution("Member Deposits not enough to offset the loan and pay off charges accompanying loan offsetting...");
        }
        /*Debit member saving account*/
        $savingtransaction = new Savingtransaction;
		$savingtransaction->date = $date;
		$savingtransaction->savingaccount()->associate($savingaccount);
		$savingtransaction->amount = $amount_to_offset;
		$savingtransaction->type = 'debit';
		$savingtransaction->description = 'Loan Offset using Deposits';
		$savingtransaction->transacted_by =Confide::user()->username;
		$savingtransaction->save();
        /*Get posting accounts*/
        $savingproduct_id=Savingaccount::where('id','=',$savingaccount->id)
            ->pluck('savingproduct_id');
        $savingpostings=Savingposting::where('savingproduct_id','=',$savingproduct_id)
                ->get();
		//Post Transaction
        foreach($savingpostings as $posting){
            $debit_account = $posting->debit_account;
            $credit_account = $posting->credit_account;
            $data = array(
                'credit_account' => $credit_account,
                'debit_account' => $debit_account,
                'date' => $date,
                'amount' => $amount_to_offset,
                'initiated_by' => 'system',
                'description' => 'Loan Offset using Deposits'
                );
            $journal = new Journal;
            $journal->journal_entry($data);
            Savingtransaction::withdrawalCharges($savingaccount->id, $date, $amount_to_offset);
            Audit::logAudit(date('Y-m-d'), Confide::user()->username, 'Loan Offset using Deposits', 'Savings', $amount_to_offset);
        }
        /*Make a journal Entry: Record Sacco Income*/
        $journal = new Journal;
        $account = Account::where('category','=','INCOME')->get()->first();
		$journal->account()->associate($account);
		$journal->date = $date;
		$journal->trans_no = strtotime($date);
		$journal->initiated_by = Confide::user()->username;
		$journal->amount = $sacco_income;
		$journal->type = 'credit';
		$journal->description = "Loan Top Up Charge";
		$journal->save();
        //Offset the Loan
		Loanrepayment::offsetLoan($data);
        //Redirect to loan page
		return Redirect::to('loans/show/'.$loanaccount->id);
	}

	/**
	 * Display the specified loanrepayment.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$loanrepayment = Loanrepayment::findOrFail($id);
		return View::make('loanrepayments.show', compact('loanrepayment'));
	}

	/**
	 * Show the form for editing the specified loanrepayment.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$loanrepayment = Loanrepayment::find($id);
		return View::make('loanrepayments.edit', compact('loanrepayment'));
	}

	/**
	 * Update the specified loanrepayment in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$loanrepayment = Loanrepayment::findOrFail($id);
		$validator = Validator::make($data = Input::all(), Loanrepayment::$rules);
		if ($validator->fails())
		{
			return Redirect::back()->withErrors($validator)->withInput();
		}
		$loanrepayment->update($data);
		return Redirect::route('loanrepayments.index');
	}

	/**
	 * Remove the specified loanrepayment from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		Loanrepayment::destroy($id);
		return Redirect::route('loanrepayments.index');
	}


	public function offset($id){
		$loanaccount = Loanaccount::findOrFail($id);
		$principal_paid = Loanrepayment::getPrincipalPaid($loanaccount);
		$principal_due = ($loanaccount->amount_disbursed +$loanaccount->top_up_amount) - $principal_paid;
		$interest_due = Loanaccount::intBalOffset($loanaccount);
        if(Confide::user()->user_type == 'member'){
		return View::make('css.loanoffset', compact('loanaccount', 'principal_due', 'interest_due', 'principal_paid'));
	    }else{
        return View::make('loanrepayments.offset', compact('loanaccount', 'principal_due', 'interest_due', 'principal_paid'));
	    }
	}

	public function offprint($id){
		$loanaccount = Loanaccount::findOrFail($id);
		$organization = Organization::find(1);
		$principal_paid = Loanrepayment::getPrincipalPaid($loanaccount);
		$principal_due = $loanaccount->amount_disbursed - $principal_paid;
		$interest_due = $principal_due * ($loanaccount->interest_rate / 100);
		$pdf = PDF::loadView('pdf.offset', compact('loanaccount', 'organization', 'principal_paid', 'interest_due', 'principal_due'))->setPaper('a4')->setOrientation('potrait'); 	
		return $pdf->stream('Offset.pdf');
	}

}
