@extends('layouts.ports')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
  <h3 style="text-decoration: underline;">Project Statements</h3>
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
		<form target="_blank" method="POST" action="{{URL::to('projects/statement')}}" accept-charset="UTF-8">   
		    <fieldset>
		        <div class="form-group">
		            <label for="username">Select Member:</label>
		            <select name="memberid" id="memberid" class="form-control" required>
		                <option></option>
		                @foreach($members as $member)
		                <option value="{{$member->id }}">
		                   {{ $member->membership_no.' : '.$member->name }}
		                 </option>
		                @endforeach
		            </select>                
		        </div>		        
		        <div class="form-actions form-group">        
		          <button type="submit" class="btn btn-primary btn-sm">View Member Statement</button>
		        </div>
		    </fieldset>
		</form>
  </div>
</div>
@stop