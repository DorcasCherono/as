@extends('layouts.member')
@section('content')
<br/>

<?php


function asMoney($value) {
  return number_format($value, 2);
}

?>

<div class="row">
    @if(Session::has('caution'))
      <div class="alert alert-warning alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>{{{Session::get('caution')}}}</strong> 
      </div>      
    @endif  
	<div class="col-lg-12">
  <h3>Loan Offset</h3>
  <a  href="{{ URL::to('loanrepayments/offprint/'.$loanaccount->id)}}" target="_blank" > <span class="glyphicon glyphicon-file" aria-hidden="true"></span> Print Report</a>
<hr>
</div>	
</div>
<div class="row">
	<div class="col-lg-5">
		 @if ($errors->has())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>        
            @endforeach
        </div>
        @endif
       <table class="table table-condensed table-bordered">
        <tr>
          <td>Member</td><td>{{$loanaccount->member->name}}</td>
        </tr>
        <tr>
          <td>Loan Account</td><td>{{$loanaccount->account_number}}</td>
        </tr>
        <tr>
          <td>Principal Balance</td><td>{{ asMoney(Loanaccount::getPrincipalBal($loanaccount)) }}</td>
        </tr>
       </table> 
		 <form method="POST" action="{{{ URL::to('loanrepayments/offsetloan') }}}" accept-charset="UTF-8">
            <fieldset>
               <table class="table table-condensed table-bordered">
                <tr>
                  <td>Principal Due</td><td>{{ asMoney($principal_due) }}</td>
                </tr>
                <tr>
                  <td>Interest Due</td><td>{{ asMoney($interest_due) }}</td>
                </tr>
                   <tr>
                  <td>Total Due</td><td>{{ asMoney($principal_due + $interest_due)}}</td>
                </tr>
                </table>
                <input class="form-control" placeholder="" type="hidden" name="loanaccount_id" id="loanaccount_id" value="{{ $loanaccount->id }}">
                <div class="form-group">
                    <label for="username">Repayment Date </label>
                    <input class="form-control" placeholder="" type="date" name="date" id="date" value="{{date('Y-m-d')}}">
                </div>
                <div class="form-group">
                    <label for="username">Offset Amount</label>
                    <input class="form-control" placeholder="" type="text" name="amount" id="amount" value="{{$principal_due + $interest_due}}">
                </div>
                <div class="form-actions form-group">
                  <button type="submit" class="btn btn-primary btn-sm">Offset Loan</button> 
                </div>
            </fieldset>
        </form>
  </div>
</div>
@stop