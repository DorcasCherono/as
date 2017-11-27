@extends('layouts.ports')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
      <h3> Group Reports</h3>
      <hr>
    </div>	
</div>
<div class="row">
	<div class="col-lg-5">
           <form method="post" action="{{URL::to('groupreports')}}">
               <div class="form-group">
                    <label for="username">Member Group</label>
                    <select class="form-control selectable" name="member_group">
                        <option value="">Select Group</option>
                        <option>--------------------------</option>
                        @foreach($groups as $group)
                            <option value="{{$group->id}}">{{$group->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="username">Report Type</label>
                    <select class="form-control selectable" name="report_type">
                        <option value="">Select Report Type</option>
                        <option>--------------------------</option>
                        <option value="members">Members Listing</option>
                        <option value="loans">Loans Listing</option>
                        <!--
                        <option value="contributions">Contributions Listing</option>
                        -->
                        <option value="savings">Savings Listing</option>
                        <option value="combined">Combined Report</option>
                    </select>
                </div>
                <div class="form-actions form-group">
                  <button type="submit" class="btn btn-primary btn-sm">View Report</button> 
                </div>
           </form>
  </div>
</div>
@stop