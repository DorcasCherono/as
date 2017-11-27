@extends('layouts.ports')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
  <h3 style="text-decoration: underline;">Individual Contributions Report</h3>
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
	<form target="_blank" method="POST" action="{{URL::to('individualcontribution')}}" accept-charset="UTF-8">
	    <fieldset>
		        <div class="form-group">
		            <label for="username">Select Member:</label>
		            <select name="memberid" id="memberid" class="form-control selectable" required>
		                <option></option>
		                @foreach($members as $member)
		                <option value="{{$member->id }}">
		                   {{ $member->membership_no.' : '.$member->name }}
		                 </option>
		                @endforeach
		            </select>
		        </div>
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
		          <button type="submit" class="btn btn-primary btn-sm">
		          		View Member Contributions
		          </button>
		        </div>
		    </fieldset>
		</form>
  </div>
</div>
@stop
