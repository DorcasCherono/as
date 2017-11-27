@extends('layouts.css')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
  <h3>Member Dividends</h3>
  <hr>
</div>	
</div>
<div class="row">
	<div class="col-lg-12">
        @if (Session::get('notice'))
            <div class="alert alert-info">{{ Session::get('notice') }}</div>
        @endif
        <?php
          $counter=Dividend::count();
        ?>        
    <div class="panel panel-default">
        
    <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Member #</th>
        <th>Member Name</th>
        <th>Shares</th>        
        <th>Dividends</th>
      </thead>
      <tbody>
        <?php 
          $i = 1; 
          function asMoney($value){
            return number_format($value,2);
          }
          $sharecount=Share::count();
          if($sharecount>0){
                $sharevalue=Share::where('id','=',1)->pluck('value');
                switch($sharevalue){
                  case $sharevalue==0:
                    $sharevalue=0.00000009;
                    $count=Dividend::count();
                    if($count>0){
                      $pars=Dividend::where('id','=',1)->get()->first();
                      $top=$pars->total- $pars->special;
                      $multiplier=$top/$pars->outstanding;
                    }else if($count<=0){
                      $multiplier=0.0000000009;
                    }        
                  break;

                  case $sharevalue>0:
                    $count=Dividend::count();
                    if($count>0){
                      $pars=Dividend::where('id','=',1)->get()->first();
                      $top=$pars->total- $pars->special;
                      $multiplier=$top/$pars->outstanding;
                    }else if($count<=0){
                      $multiplier=0.0000000009;
                    }        
                  break;
                }                
          }else if($sharecount<=0){
                $sharevalue=0.000000009;
                $count=Dividend::count();
                if($count>0){
                  $pars=Dividend::where('id','=',1)->get()->first();
                  $top=$pars->total- $pars->special;
                  $multiplier=$top/$pars->outstanding;
                }else if($count<=0){
                  $multiplier=0.0000000009;
                }        
          }          
        ?>
        @foreach($members as $member)
        <tr>
          <td> {{ $i }}</td>
          <td>{{ $member->membership_no }}</td>
          <td>{{ $member->name }}</td>    
          <td>{{
              asMoney($contributions=Savingtransaction::where('savingaccount_id','=',$member->id)
              ->where('type','=','credit')->sum('amount'))
              }}
         </td>
          <td>{{asMoney($contributions/40)}}</td>
        </tr>
        <?php $i++; ?>
        @endforeach
      </tbody>
    </table>
  </div>
  </div>
</div>
@stop