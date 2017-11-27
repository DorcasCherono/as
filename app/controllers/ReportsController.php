<?php

class ReportsController extends \BaseController {




	public function members(){

		$members = Member::all();

		$organization = Organization::find(1);

		$pdf = PDF::loadView('pdf.memberlist', compact('members', 'organization'))->setPaper('a4')->setOrientation('potrait');

		return $pdf->stream('MemberList.pdf');

	}



	public function remittance(){
		//$members = DB::table('members')->where('is_active', '=', '1')->get();

		$members = Member::all();
		$organization = Organization::find(1);

		$savingproducts = Savingproduct::all();

		$loanproducts = Loanproduct::all();

		$pdf = PDF::loadView('pdf.remittance', compact('members', 'organization', 'loanproducts', 'savingproducts'))->setPaper('a4')->setOrientation('landscape');

		return $pdf->stream('Remittance.pdf');

	}



	public function template(){

		$members = Member::all();

		$organization = Organization::find(1);

		$pdf = PDF::loadView('pdf.blank', compact('members', 'organization'))->setPaper('a4')->setOrientation('landscape');

		return $pdf->stream('Template.pdf');

	}



	public function loanlisting(){
		$loans = Loanaccount::all();
		$organization = Organization::find(1);
		$pdf = PDF::loadView('pdf.loanreports.loanbalances', compact('loans', 'organization'))->setPaper('a4')->setOrientation('potrait');
		return $pdf->stream('Loan Listing.pdf');

	}



	public function loanproduct($id){
		$loans = Loanproduct::find($id);
		$organization = Organization::find(1);
		$pdf = PDF::loadView('pdf.loanreports.loanproducts', compact('loans', 'organization'))->setPaper('a4')->setOrientation('potrait');
		return $pdf->stream('Loan Product Listing.pdf');
	}

	public function savinglisting(){

		$savings = Savingaccount::all();

		$organization = Organization::find(1);

		$pdf = PDF::loadView('pdf.savingreports.savingbalances', compact('savings', 'organization'))->setPaper('a4')->setOrientation('potrait');

		return $pdf->stream('Savings Listing.pdf');

	}



	public function savingproduct($id){

		$saving = Savingproduct::find($id);

		$organization = Organization::find(1);

		$pdf = PDF::loadView('pdf.savingreports.savingproducts', compact('saving', 'organization'))->setPaper('a4')->setOrientation('potrait');

		return $pdf->stream('Saving Product Listing.pdf');

	}

	public function monthlyrepayments(){

		$date = Input::get('date');
		$loanid=Input::get('member');
		if($date!=null && $loanid!=null){
			$scrapdate=Loanrepayment::where('loanaccount_id','=',$loanid)
					  ->get();
			$organization = Organization::find(1);
			$pdf = PDF::loadView('pdf.monthlyrepayments', compact('freebies','date','scrapdate', 'organization'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Monthly Repayment Report.pdf');
		}else{
			return Redirect::back()
			->withAlarm('Please select the repayment duration and the respective member');
		}
	}

	public function creditappraisal($id,$loanid){
		$member = Member::where('id','=',$id)->get()->first();
		$loans= Loanaccount::where('member_id','=',$id)
				->where('is_disbursed','=',1)
				->get();
		$currentloan=Loanaccount::where('id','=',$loanid)
					->get()->first();
		$savingaccount=DB::table('savingaccounts')
					->where('member_id','=',$id)->pluck('account_number');
		$savings=DB::table('savingtransactions')
				->join('savingaccounts','savingtransactions.savingaccount_id','=','savingaccounts.id')
				->where('savingaccounts.member_id','=',$id)
				->where('savingtransactions.type','=','credit')
				->sum('savingtransactions.amount');
		$shareaccount=DB::table('shareaccounts')
					->where('member_id','=',$id)->pluck('account_number');
		$shares=DB::table('sharetransactions')
				->join('shareaccounts','sharetransactions.shareaccount_id','=','shareaccounts.id')
				->where('shareaccounts.member_id','=',$id)
				->where('sharetransactions.type','=','credit')
				->sum('sharetransactions.amount');
		$pdf = PDF::loadView('pdf.loanreports.creditappraisal', compact('member', 'loans','savings','savingaccount','shares','shareaccount','currentloan'))->setPaper('a4')->setOrientation('portrait');
		return $pdf->stream('Member Credit Appraisal Report.pdf');

	}


	public function financials(){
		$report = Input::get('report_type');
		$fromDate = Input::get('fromDate');
        $toDate = Input::get('toDate');
		$accounts = Account::all();
		$organization = Organization::find(1);
		if($report == 'balancesheet'){
			$pdf = PDF::loadView('pdf.financials.balancesheet', compact('accounts', 'fromDate','toDate', 'organization'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Balance Sheet.pdf');
		}
		if($report == 'income'){
			$pdf = PDF::loadView('pdf.financials.incomestatement', compact('accounts', 'fromDate','toDate', 'organization'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Income Statement.pdf');
		}
		if($report == 'trialbalance'){
			$pdf = PDF::loadView('pdf.financials.trialbalance', compact('accounts', 'fromDate','toDate', 'organization'))->setPaper('a4')->setOrientation('potrait');
			return $pdf->stream('Trial Balance.pdf');
		}

	}

    public function comprehensiveReport(){
        $id=Input::get('member');

        $member=Member::where('id','=',$id)->first();
        /*End Prerequisites and Start Saving Transactions*/
        $account = Savingaccount::where('member_id','=',$id)->first();
        if(!empty($account)){
            $transactions = $account->transactions;
            $credit = DB::table('savingtransactions')->where('savingaccount_id', '=', $account->id)->where('type', '=', 'credit')->sum('amount');
            $debit = DB::table('savingtransactions')->where('savingaccount_id', '=', $account->id)->where('type', '=', 'debit')->sum('amount');
            $balance = $credit - $debit;
            /*End Saving Transactions and Start Loans Transactions Summary*/
            $loans=Loanaccount::where('member_id','=',$id)->get();
            /*End Loan Transactions Summary*/
            $organization = Organization::find(1);
            $pdf = PDF::loadView('pdf.comprehensive', compact('member', 'transactions', 'organization','balance','account','loans'))
                ->setPaper('a4')->setOrientation('potrait');
            return $pdf->stream( $member->name.' '.$member->membership_no. ' Comprehensive Stetement.pdf');
        }else{
            /*End Saving Transactions and Start Loans Transactions Summary*/
            $loans=Loanaccount::where('member_id','=',$id)->get();
            /*End Loan Transactions Summary*/
            $organization = Organization::find(1);
            $pdf = PDF::loadView('pdf.comprehensive', compact('member',  'organization','loans'))->setPaper('a4')->setOrientation('potrait');
            return $pdf->stream( $member->name.' '.$member->membership_no. ' Comprehensive Stetement.pdf');
        }

    }

    public function groups(){
        $groups=Group::all();
        return View::make('pdf.groups.groupreports',compact('groups'));
    }

    public function doReport(){
        $group=Input::get('member_group');
        $type=Input::get('report_type');

        if($type=='members'){
            $organization=Organization::find(1);
            $members= Member::where('group_id','=',$group)->get();
            $chama=Group::find($group);
            $pdf = PDF::loadView('pdf.groups.members', compact('members',  'organization','chama'))->setPaper('a4')->setOrientation('potrait');
            return $pdf->stream( $chama->name.'  Group Member Listing.pdf');
        }else if($type=='loans'){
            $organization=Organization::find(1);
            $members= Member::where('group_id','=',$group)->get();
            foreach($members as $member){
                $loans=Loanaccount::where('member_id','=',$member->id)->get();
            }
            /*return $loans;*/
            $chama=Group::find($group);
            $pdf = PDF::loadView('pdf.groups.loans', compact('members',  'organization','chama','loans'))->setPaper('a4')->setOrientation('potrait');
            return $pdf->stream( $chama->name.' Group Loan Listing.pdf');
        }else if($type=='combined'){
            $organization=Organization::find(1);
            $members= Member::where('group_id','=',$group)->get();
            foreach($members as $member){
                $loans=Loanaccount::where('member_id','=',$member->id)->get();
                $savings = Savingaccount::where('member_id',$member->id)->get();
            }
            /*return $loans;*/
            $chama=Group::find($group);
            $pdf = PDF::loadView('pdf.groups.combined', compact('members', 'savings','organization','chama','loans'))->setPaper('a4')->setOrientation('potrait');
            return $pdf->stream( $chama->name.' Group Combined Report.pdf');
        }else if($type=='savings'){
            $organization=Organization::find(1);
            $members= Member::where('group_id','=',$group)->get();
            foreach($members as $member){
                $savings = Savingaccount::where('member_id',$member->id)->get();
            }
            //return $members;
            $chama=Group::find($group);
            $pdf = PDF::loadView('pdf.groups.savings', compact('savings','members',  'organization','chama'))->setPaper('a4')->setOrientation('potrait');
            return $pdf->stream( $chama->name.' Group Saving Listing.pdf');
        }
        /*
            else if($type=='contributions'){
                $organization=Organization::find(1);
                $members= Member::where('group_id','=',$group)->get();
                $chama=Group::find($group);
                $pdf = PDF::loadView('pdf.groups.contributions', compact('members',  'organization','chama'))->setPaper('a4')->setOrientation('potrait');
                return $pdf->stream( $chama->name.' Group Contribution Listing.pdf');
            }
        **/

    }

}
