@extends('layouts.loans')
@section('content')
<br/>
@if(Session::has('existed'))
    <div class="alert alert-danger alert-dismissible fade in col-lg-8" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>{{{ Session::get('existed') }}}</strong> 
    </div>      
@endif 
@if(!empty($charge))
  <div class="alert alert-danger alert-dismissible fade in" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    <strong>{{{ $charge }}}</strong> 
  </div>      
@endif  
@if(Session::has('status'))
  <div class="alert alert-danger alert-dismissible fade in" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    <strong>{{{ Session::get('status') }}}</strong> 
  </div>      
@endif  
@if(Session::has('quest'))
  <div class="alert alert-danger alert-dismissible fade in" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    <strong>{{{ Session::get('quest') }}}</strong> 
  </div>      
@endif  
@if(Session::has('clinch'))
  <div class="alert alert-warning alert-dismissible fade in" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    <strong>{{{ Session::get('clinch') }}}</strong> 
  </div>      
@endif  
<div class="row">
	<div class="col-lg-12">
  <h3>Loan Application</h3>
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
<table class="table table-bordered table-condensed">
  <tr>
    <td>Amount Applied</td> <td>{{ $loanaccount->amount_applied}}</td>
  </tr>
  <tr>
    <td>Period Applied</td> <td>{{ $loanaccount->period.' months'}}</td>
    </tr>
  <tr>
    <td>Interest Rate </td> <td>{{ $loanaccount->interest_rate.' %'}}</td>
  </tr>
</table>
		 <form method="POST" action="{{{ URL::to('loans/approve/'.$loanaccount->id) }}}" accept-charset="UTF-8">
    <fieldset>

      <input class="form-control" placeholder="" type="hidden" name="loanaccount_id" id="loanaccount_id" value="{{ $loanaccount->id }}">
         
        <input class="form-control" placeholder="" type="hidden" name="loanproduct_id" id="loanproduct_id" value="{{ $loanaccount->loanproduct->id }}">
        <div class="form-group">
            <label for="username">Loan # </label>
            <input class="form-control" type="text" name="loan_no" id="loan_no"
                   value="{{{ Input::old('loan_no') }}}" required>
        </div>
        <div class="form-group">
            <label for="username">Approval Date </label>
            <div class="right-inner-addon ">
            <i class="glyphicon glyphicon-calendar"></i>
            <input readonly class="form-control datepicker" placeholder="" type="text" name="date_approved" id="date_approved" value="{{ date('Y-m-d') }}">
        </div>
        </div>
        <div class="form-group">
            <label for="username">Amount Approved</label>
            <input class="form-control" placeholder="" type="text" name="amount_approved" id="amount_approved" value="{{ $loanaccount->amount_applied }}">
        </div>
         <div class="form-group">
            <label for="username">Loan Period (months)</label>
            <input class="form-control" placeholder="" type="text" name="period" id="period" value="{{ $loanaccount->period }}">
        </div>
         <div class="form-group">
            <label for="username">Interest Rate (monthly)</label>
            <input class="form-control" placeholder="" type="text" name="interest_rate" id="interest_rate" value="{{ $loanaccount->interest_rate }}">
        </div>
        <div class="form-group">
          <a href="{{{ URL::to('reports/creditreport/'.$loanaccount->member_id.'/'.$loanaccount->id) }}}" target="_blank" >
            <i class="fa fa-gavel"></i>Credit Appraisal Form
          </a>
        </div>
        <div class="form-actions form-group">
          <button type="submit" class="btn btn-primary btn-sm">Submit Approval</button> 
        </div>
    </fieldset>
</form>
  </div>
</div>
<!-- organizations Modal -->
<div class="modal fade" id="schedule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Loan Schedule</h4>
      </div>
      <div class="modal-body">


        
        



        
      </div>
      <div class="modal-footer">
        
        <div class="form-actions form-group">
            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
        
        </div>

      </div>
    </div>
  </div>
</div>














@stop