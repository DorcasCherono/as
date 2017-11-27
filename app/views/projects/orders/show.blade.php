@extends('layouts.membercss')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
      Investment Projects
    </h3>
    <hr>
  </div>  
</div>
<div class="row">
  <div class="col-lg-12">      
        @if(isset($scheduled))
        <div class="alert alert-success alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $scheduled}}}</strong> 
          </div>      
         @endif          
<div class="panel panel-default">
      <div class="panel-heading">
          <p>
              INVESTMENT PROJECTS 
          </p>
        </div>     
  <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Project Name</th>
        <th>Investment Name</th>
        <th>Available Units</th>
        <th>Unit Price</th>
        <th></th>
      </thead>
      <tbody>
      <?php $i=1;?>
      @if(isset($projectile) && $i<=count($projectile))
        @foreach($projectile as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$invest->name}}</td>
            <td>{{$project=Investment::where('id','=',$invest->investment_id)->pluck('name')}}</td>
            <td>{{$invest->units}}</td>
            <td>{{$invest->unit_price}}</td>            
            <td>
              <div class="btn-group">
              <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                Action <span class="caret"></span>
              </button>         
              <ul class="dropdown-menu" role="menu">  
                  <li><a href="{{URL::to('projects/orders/create/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to invest on this project?'))">Invest </a></li>
              </ul>
             </div>
            </td>
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