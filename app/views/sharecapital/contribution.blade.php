@extends('layouts.css')
@section('content')
<br/>
<?php
  function asMoney($value){
    return number_format($value,2);
  }
?>
<div class="row">
	<div class="col-lg-12">
  <h3>Share Capital Contributions</h3>
  <hr>
</div>	
</div>
<div class="row">
	<div class="col-lg-12">
        @if (Session::get('notice'))
            <div class="alert alert-info">{{ Session::get('notice') }}</div>
        @endif
    <div class="panel panel-default">      
        <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Member #</th>
        <th>Member Name</th>
        <th>Contributions</th>
        <!--
          <th>Shares</th>
        -->
        <th></th>
      </thead>
      <tbody>
        <?php 
          $i = 1; 
          $sharevalue=Share::where('id','=',1)->pluck('value');
        ?>
        @foreach($members as $member)
        <tr>
          <td> {{ $i }}</td>
          <td>{{ $member->membership_no }}</td>
          <td>{{ $member->name }}</td>
          <td>{{asMoney($contributions=Savingtransaction::where('savingaccount_id','=',$member->id)
              ->where('type','=','credit')->sum('amount'))}}
          </td>
            
          <td>
            <div class="btn-group">
                  <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    Action <span class="caret"></span>
                  </button>          
                  <ul class="dropdown-menu" role="menu">                   
                    <li>
                      <a href="{{URL::to('savingtransactions/show/'.$member->id)}}">
                        Contribute
                      </a>
                    </li>
                  </ul>
              </div>
          </td>
        </tr>
        <?php $i++; ?>
        @endforeach
      </tbody>
    </table>
  </div>
  </div>
</div>
@stop