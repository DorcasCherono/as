<?php
class Loanproduct extends \Eloquent {
	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
	];
	// Don't forget to fill this array
	protected $fillable = [];

	public function loanpostings(){
		return $this->hasMany('Loanposting');
	}

	public function loanaccounts(){
		return $this->hasMany('Loanaccount');
	}

	public function charges(){
		return $this->belongsToMany('Charge');
	}

    /*Start Apply charges on some loan functionalities*/
    public static function chargeOnApplication($loanaccount){
        $loan=Loanaccount::where('id','=',$loanaccount)->first();
        $loanproduct=Loanproduct::where('id','=',$loan->loanproduct_id)->first();
        $linkedcharges=ProductCharge::where('product_id','=',$loan->loanproduct_id)
        ->get();
        foreach($linkedcharges as $lc){
            $charges=Charge::where('id','=',$lc->charge_id)->where('fee','=',1)->get();
            foreach($charges as $charge){
                if($charge->calculation_method=='flat'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount= $charge->amount;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Application Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'debit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Application Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Application Fee Payment', 'Loans', $amount);
                    return $amount;
                }else if($charge->calculation_method=='percent'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=($charge->amount * $loan->amount_applied)/100;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Application Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'debit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Application Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Application Fee Payment', 'Loans', $amount);
                    return $amount;
                }
            }
        }
        
    }
    
    public static function chargeOnDisbursement($loanaccount){
        $loan=Loanaccount::where('id','=',$loanaccount)->first();
        $loanproduct=Loanproduct::where('id','=',$loan->loanproduct_id)->first();
        $linkedcharges=ProductCharge::where('product_id','=',$loan->loanproduct_id)
        ->get();
        foreach($linkedcharges as $lc){
            $charges=Charge::where('id','=',$lc->charge_id)->where('fee','=',1)->get();
            foreach($charges as $charge){
                if($charge->calculation_method=='flat'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=$charge->amount;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Disbursement Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'debit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Disbursement Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Disbursement Fee Payment', 'Loans', $amount);
                    return $amount;
                }else if($charge->calculation_method=='percent'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=($charge->amount * Loantransaction::getLoanBalance($loanaccount))/100;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Disbursement Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'debit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Disbursement Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Disbursement Fee Payment', 'Loans', $amount);
                    return $amount;
                }
            }
        }
        
    }

    public static function chargeOnRepayment($loanaccount){
        $loan=Loanaccount::where('id','=',$loanaccount)->first();
        $loanproduct=Loanproduct::where('id','=',$loan->loanproduct_id)->first();
        $linkedcharges=ProductCharge::where('product_id','=',$loan->loanproduct_id)
        ->get();
        foreach($linkedcharges as $lc){
            $charges=Charge::where('id','=',$lc->charge_id)->where('fee','=',1)->get();
            foreach($charges as $charge){
                if($charge->calculation_method=='flat'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=$charge->amount;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Late Repayment Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'debit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Late Repayment Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Late Repayment Fee Payment', 'Loans', $amount);
                    return $amount;
                }else if($charge->calculation_method=='percent'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=($charge->amount * Loantransaction::getLoanBalance($loanaccount))/100;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Late Repayment Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'debit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Late Repayment Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Late Repayment Fee Payment', 'Loans', $amount);
                    return $amount;
                }
            }
        }
        
    }

    public static function chargeOnTopUp($loanaccount){
        $loan=Loanaccount::where('id','=',$loanaccount)->first();
        $loanproduct=Loanproduct::where('id','=',$loan->loanproduct_id)->first();
        $linkedcharges=ProductCharge::where('product_id','=',$loan->loanproduct_id)
        ->get();
        foreach($linkedcharges as $lc){
            $charges=Charge::where('id','=',$lc->charge_id)->where('fee','=',1)->get();
            foreach($charges as $charge){
                if($charge->calculation_method=='flat'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=$charge->amount;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Top Up Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'credit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Top Up Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Top Up Fee Payment', 'Loans', $amount);
                    return $amount;
                }else if($charge->calculation_method=='percent'){
                    /*Variables to be used*/
                    $date=date('Y-m-d');
                    $amount=($charge->amount * $loan->top_up_amount)/100;
                    /*New Transaction*/
                    $transaction = new Loantransaction;
                    $transaction->loanaccount_id=$loanaccount;
                    $transaction->date = $date;
                    $transaction->description = 'Top Up Fee';
                    $transaction->amount = $amount;
                    $transaction->type = 'credit';
                    $transaction->save();
                    $account = Loanposting::getPostingAccount($loanproduct, 'disbursal');
                    $data = array(
                        'credit_account' =>$account['credit'] , 
                        'debit_account' =>$account['debit'] ,
                        'date' => $date,
                        'amount' => $amount,
                        'initiated_by' => 'system',
                        'description' => 'Top Up Fee Payment'
                        );
                    $journal = new Journal;
                    $journal->journal_entry($data);
                    Audit::logAudit($date, Confide::user()->username, 'Top Up Fee Payment', 'Loans', $amount);
                    return $amount;
                }
            }
        }
    }
    /*End Apply charges on some loan functionalities*/
	public static function submit($data){
		$charges = array_get($data, 'charge');
		$loanproduct = new Loanproduct;
		$loanproduct->name = array_get($data, 'name');
		$loanproduct->short_name = array_get($data, 'short_name');
		$loanproduct->interest_rate = array_get($data, 'interest_rate');
		$loanproduct->formula = array_get($data, 'formula');
		$loanproduct->amortization = array_get($data, 'amortization');
		$loanproduct->currency = array_get($data, 'currency');
		$loanproduct->period = array_get($data, 'period');
		$loanproduct->auto_loan_limit = array_get($data, 'autoloanlimit');
		$loanproduct->application_form = array_get($data, 'appform');
		$loanproduct->save();
		Audit::logAudit(date('Y-m-d'), Confide::user()->username, 'loan product creation', 'Loans', '0');
		$loan_id = $loanproduct->id;
		Loanposting::submit($loan_id, $data);
        /*Link loan product with the charges selected*/
		foreach($charges as $charge){
			$prchg=new ProductCharge;
            $prchg->product_id=$loanproduct->id;
            $prchg->charge_id=$charge;
            $prchg->save();
		}

	}

}