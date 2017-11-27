@extends('layouts.css')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
       Members Surplus Distribution
    </h3>
    <hr>
  </div>  
</div>
<?php
	function asMoney($value) {
	  return number_format($value, 2);
	}

	$rate=Surplus::where('id','=',1)->pluck('rate');
	$ratepercent=$rate/100;
?>
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
  <div class="panel panel-default">      
     <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Member #</th>
        <th>Member Name</th>
        <th>ID Number</th>
        <th>Monthly Remmittance</th>
        <th>Surplus Amount</th>
      </thead>
      <tbody>
      <?php $i=1;$now=date('Y-m-d');?>
      @if(isset($members) && $i<=count($members))
        @foreach($members as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$invest->membership_no}}</td>
            <td>{{$invest->name}}</td>
            <td>{{$invest->id_number}}</td>   
            <td>{{asMoney($invest->monthly_remittance_amount)}}</td> 
            <td>{{asMoney($ratepercent * Surplus::calculateSurplus($invest->id))}}</td>                    
          </tr>
          <?php $i++;?>
        @endforeach
      @endif
      </tbody>
    </table>
  </div>
  </div>
</div>
@stop