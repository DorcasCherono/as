<?php

class Loanrepayment extends \Eloquent {

	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
	];

	// Don't forget to fill this array
	protected $fillable = [];
	public function loanaccount(){

		return $this->belongsTo('Loanaccount');
	}

	public static function getPrincipalPaid($loanaccount){
			$paid = DB::table('loanrepayments')->where('loanaccount_id', '=', $loanaccount->id)->sum('principal_paid');
			return $paid;
	}

	public static function getInterestPaid($loanaccount){
			$paid = DB::table('loanrepayments')->where('loanaccount_id', '=', $loanaccount->id)->sum('interest_paid');
			return $paid;
	}

	public static function repayLoan($data){
		$loanaccount_id = array_get($data, 'loanaccount_id');
		$loanaccount = Loanaccount::findorfail($loanaccount_id);
		$amount = array_get($data, 'amount');
		$category = "Cash";
		$member = array_get($data, 'member');
		$date = array_get($data, 'date');
		$chosen_date= date('d',strtotime($date));
		$chosen_date_date= date('Y-m-d',strtotime($date));
		$chosen_month =date('m',strtotime($date));
		$chosen_year =date('Y',strtotime($date));
		$start_date= $loanaccount->repayment_start_date;
		$start_month= date('m',strtotime($start_date));
		$start_year= date('Y',strtotime($start_date));
		$balance= Loanaccount::getPrincipalBal($loanaccount);
		$rate= ($loanaccount->interest_rate)/100;
		$last_month_date= date('t',strtotime($date));
		$principal_due = Loanaccount::getLoanAmount($loanaccount) / $loanaccount->repayment_duration;
		$interest_due = Loantransaction::getInterestDue($loanaccount);
		$total_due = $principal_due + $interest_due;
		$paymentamount = $amount;
		$month_disbursed = date('m', strtotime($loanaccount->date_disbursed));
		$year_disbursed = date('Y', strtotime($loanaccount->date_disbursed));
		/*****************************************************************************
		Transworld:  Check number of months not paid by member
		***************************************************************************/
		/*Check if there exists transaction recordsfor the loan account first*/
		$months = (($chosen_year - $start_year) * 12) + ($chosen_month - $start_month);
		$counter = Loantransaction::where('loanaccount_id','=',$loanaccount_id)->count();
		if(($counter < 2) && ($chosen_date_date > $start_date) &&($months > 0)){
									for($i=0;$i<$months;$i++){
															$interest_supposed_to_pay= $balance * $rate;
															Loanrepayment::payPrincipal($loanaccount, $start_date,0);
															Loanrepayment::payInterest($loanaccount, $start_date, 0);
															$total_supposed= $principal_due + $interest_supposed_to_pay;
															$amount_paid_month=0;
															/*Record Arrears*/
															$arrears =$total_supposed;
															Loantransaction::repayLoan($loanaccount, $amount_paid_month, $start_date, $category, $member, $arrears);
															/*Record Transaction for the arrears:  Debit*/
															$transaction = new Loantransaction;
															$transaction->loanaccount()->associate($loanaccount);
															$transaction->date = $start_date;
															$transaction->description = 'loan arrears';
															$transaction->amount = $interest_supposed_to_pay;
															$transaction->type = 'debit';
															$transaction->arrears = 0;
															$transaction->payment_via = $category;
															$transaction->save();
															/*Looping through the days*/
															$start_date= date('Y-m-d', strtotime($start_date.'+30 days'));
															$balance +=$interest_supposed_to_pay;
									}
		}
        //Create a transaction record
    $transaction = new Loantransaction;
		$transaction->loanaccount()->associate($loanaccount);
		$transaction->date = $date;
		$transaction->description = 'loan repayment';
		$transaction->amount = $amount;
		$transaction->type = 'credit';
		$transaction->save();
		Audit::logAudit($date, Confide::user()->username, 'loan repayment', 'Loans', $amount);
		$principal_due = Loantransaction::getPrincipalDue($loanaccount);
		$interest_due = Loantransaction::getInterestDue($loanaccount);
    $insurance_due= Loantransaction::getInsuranceDue($loanaccount);
		$total_due = $principal_due + $interest_due + $insurance_due;
		$payamount = $amount;

 	    if($payamount < $total_due){
					//pay interest first
					Loanrepayment::payInterest($loanaccount, $date, $interest_due,$transaction);
		      Loanrepayment::payInsurance($loanaccount, $date, $insurance_due,$transaction);
					$payamount = $payamount - ($interest_due + $insurance_due);
			if($payamount > 0){
				Loanrepayment::payPrincipal($loanaccount, $date, $payamount,$transaction);
			}
		}


		if($payamount >= $total_due){
			//pay interest first
			Loanrepayment::payInterest($loanaccount, $date, $interest_due,$transaction);
			Loanrepayment::payInsurance($loanaccount, $date, $insurance_due,$transaction);
			$payamount = $payamount - ($interest_due + $insurance_due);
			//pay principal with the remaining amount
			Loanrepayment::payPrincipal($loanaccount, $date, $payamount,$transaction);
		}
	}

	public static function offsetLoan($data){
		$loanaccount_id = array_get($data, 'loanaccount_id');
		$loanaccount = Loanaccount::findorfail($loanaccount_id);
		$amount = array_get($data, 'amount');
		$date = array_get($data, 'date');
		$principal_bal = Loanaccount::getPrincipalBal($loanaccount);
		$interest_bal = Loanaccount::getInterestBal($loanaccount);
		//pay principal
 		Loanrepayment::payPrincipal($loanaccount, $date, $principal_bal);
 		//pay interest
 		Loanrepayment::payInterest($loanaccount, $date, $interest_bal);
		Loantransaction::repayLoan($loanaccount, $amount, $date);
	}

	public static function payPrincipal($loanaccount, $date, $principal_due,$transaction){
		$repayment = new Loanrepayment;
		$repayment->loanaccount()->associate($loanaccount);
		$repayment->date = $date;
		$repayment->principal_paid = $principal_due;
        $repayment->transaction_id=$transaction->id;
		$repayment->save();
		$account = Loanposting::getPostingAccount($loanaccount->loanproduct, 'principal_repayment');
		$data = array(
			'credit_account' =>$account['credit'] ,
			'debit_account' =>$account['debit'] ,
			'date' => $date,
			'amount' => $principal_due,
			'initiated_by' => 'system',
			'description' => 'principal repayment'
			);
		$journal = new Journal;
		$journal->journal_entry($data);
	}

	public static function payInterest($loanaccount, $date, $interest_due,$transaction){
		$repayment = new Loanrepayment;
		$repayment->loanaccount()->associate($loanaccount);
		$repayment->date = $date;
		$repayment->interest_paid = $interest_due;
        $repayment->transaction_id=$transaction->id;
		$repayment->save();
		$account = Loanposting::getPostingAccount($loanaccount->loanproduct, 'interest_repayment');
		$data = array(
			'credit_account' =>$account['credit'] ,
			'debit_account' =>$account['debit'] ,
			'date' => $date,
			'amount' => $interest_due,
			'initiated_by' => 'system',
			'description' => 'interest repayment'
			);
		$journal = new Journal;
		$journal->journal_entry($data);
	}

    public static function payInsurance($loanaccount, $date, $insurance_due,$transaction){
		$repayment = new Loanrepayment;
		$repayment->loanaccount()->associate($loanaccount);
		$repayment->date = $date;
		$repayment->insurance_paid = $insurance_due;
        $repayment->transaction_id=$transaction->id;
		$repayment->save();
		$account = Loanposting::getPostingAccount($loanaccount->loanproduct, 'principal_repayment');
		$data = array(
			'credit_account' =>$account['credit'] ,
			'debit_account' =>$account['debit'] ,
			'date' => $date,
			'amount' => $insurance_due,
			'initiated_by' => 'system',
			'description' => 'insurance payment'
			);
		$journal = new Journal;
		$journal->journal_entry($data);
	}
}
