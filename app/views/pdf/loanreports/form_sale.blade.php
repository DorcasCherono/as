@extends('layouts.ports')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-8">
        @if(Session::has('missed'))
            <div class="alert alert-warning alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{ Session::get('missed') }}</strong> 
          </div>      
        @endif 
      <h3> Application Form Sale Reports</h3>
    <hr>
    </div>	
</div>
<div class="row">
	<div class="col-lg-5">
   <form method="post" action="{{URL::to('loanapplication/formsales')}}">
        <div class="form-group">
            <label for="username">Start Date </label>
            <div class="right-inner-addon ">
                <i class="glyphicon glyphicon-calendar"></i>
                <input class="form-control datepicker" placeholder=""
                 type="text" name="fromDate" id="date" value="{{date('Y-m-d')}}">
            </div>
        </div>
       <div class="form-group">
            <label for="username">End Date </label>
            <div class="right-inner-addon ">
                <i class="glyphicon glyphicon-calendar"></i>
                <input class="form-control datepicker" placeholder=""
                 type="text" name="toDate" id="date" value="{{date('Y-m-d')}}">
            </div>
        </div>
        <div class="form-actions form-group">
          <button type="submit" class="btn btn-primary btn-sm">View Report</button> 
        </div>
   </form>
  </div>
</div>
@stop