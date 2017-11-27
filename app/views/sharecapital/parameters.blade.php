@extends('layouts.css')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
	    <h3>Dividend Computation Parameters</h3>
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
		<form method="POST" action="{{{ URL::to('sharecapital/parameters') }}}" accept-charset="UTF-8">
		    <fieldset>    
		        <div class="form-group">
		            <label for="username">Sum of Dividends</label>
		            <input class="form-control" placeholder="" type="text"
		             name="sum_dividends" value="">
		        </div>
		        <div class="form-group">
		            <label for="username">Special Dividends</label>
		            <input class="form-control" placeholder="" type="text" name="special_dividends" 
		            id="amount_disbursed" value="">
		        </div>
		         <div class="form-group">
		            <label for="username">Outstanding Shares </label>
		            <input class="form-control" type="text" name="outstanding_shares" value="">
		        </div>
		        <div class="form-actions form-group">
		          <button type="submit" class="btn btn-primary btn-sm">Set Parameters</button> 
		        </div>
		    </fieldset>
		</form>
	</div>
</div>
@stop