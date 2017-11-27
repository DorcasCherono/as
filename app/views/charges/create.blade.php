@extends('layouts.charge')
@section('content')
<script type="text/javascript">
    
</script>
<br/>
<div class="row">
	<div class="col-lg-12">
     <h3>New Charge</h3>
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
		 <form method="POST" action="{{{ URL::to('charges') }}}" accept-charset="UTF-8">
    <fieldset>
        <div class="form-group">
            <label for="username">Category</label>
          <select class="form-control selectable" name="category" id="category">
            <option></option>
            <option value="loan">Loan</option>
            <option value="saving">Saving</option>
            <option value="share">Share</option>
            <option value="member">Member</option>
          </select>
        </div>
        <div class="form-group">
            <label for="username">Name</label>
            <input class="form-control" placeholder="" type="text" name="name" id="name" value="{{{ Input::old('name') }}}">
        </div>
         <div class="form-group">
            <label for="username">Calculation Method</label>
          <select class="form-control selectable" name="calculation_method" id="calculation_method">
            <option></option>
            <option value="flat">Flat</option>
            <option value="percent">Percentage</option>
            <!--
            <option value="formula">Formula</option>
            -->
          </select>
        </div>
         <div class="form-group">
            <label for="username">Payment Time</label>
          <select class="form-control selectable" name="payment_method" id="payment_method">
            <option></option>
            <option value="withdrawal">Withdrawal</option>
            <option value="transfer">Transfer</option>
            <option value="Loan Application">Loan Application</option>
            <option value="Loan Disbursement">Loan Disbursement</option>
            <option value="Loan Repayment">Loan Repayment</option>
            <option value="Loan Top Up">Loan Top Up</option>
          </select>
        </div>
         <div class="form-group">
            <label for="username">Charge On</label>
              <select class="form-control selectable" name="percentage_of" id="percentage_of">
                <option></option>
                <option value="nothing">Nothing(Flat Amount)</option>
                <option value="transactionAmount">Transaction Amount</option>
                <option value="Loan Amount">Loan Amount</option>
                <option value="Loan Balance">Loan Balance</option>
                <option value="Top Up Amount">Top Up Amount</option>
              </select>
        </div>
        <div class="form-group">
            <label for="username">Value/ Amount</label>
            <input class="form-control" placeholder="" type="text" name="amount" id="amount" value="0">
        </div>
        <div class="form-group">
            <label for="username">is Fee</label>
            <input  type="checkbox" name="fee" id="fee" value="1">
        </div>
        <div class="form-actions form-group">
          <button type="submit" class="btn btn-primary btn-sm">Create Charge</button>
        </div>
    </fieldset>
</form>
  </div>
</div>
@stop