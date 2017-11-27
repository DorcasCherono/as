@extends('layouts.css')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
       Configuring Settings
    </h3>
    <hr>
  </div>  
</div>
<div class="row">
  <div class="col-lg-12">       
        @if(isset($catdone))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $catdone}}}</strong> 
          </div>      
         @endif 
         @if(isset($catupdated))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $catupdated}}}</strong> 
          </div>      
         @endif 
         @if(Session::has('puff'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{Session::get('puff')}}}</strong> 
          </div>      
         @endif 
    <div class="panel panel-default">      
       <div class="panel-body col-lg-8">
      	<form action="{{URL::to('surplus')}}" method="post">
      		<fieldset class="col-lg-6">
		        <div class="form-group">
		            <label for="username">Rate</label>
		            <input class="form-control" type="text" name="rate" 
		             value="{{{ Input::old('rate') }}}">
		        </div>
		        <div class="form-group">
		            <label for="email">Frequency</label>
		            <input class="form-control" name="frequency" value="{{{ Input::old('frequency') }}}">
		        </div>
		        <div class="form-group">
		        	<label for="email">Surplus Use</label>
		            <select name="intention" class="form-control">
		            	<option></option>
		            	<option value="disburse">Disburse to Member</option>
		            	<option value="forward">Forward to Next Period</option>
		            </select>
		        </div>	
		        <div class="form-group">
		            <input type="submit" value="Commit Settings" class="form-control btn btn-block btn-success">
		        </div>      
		     </fieldset>
      	</form>
  	   </div>
  </div>
</div>

@stop