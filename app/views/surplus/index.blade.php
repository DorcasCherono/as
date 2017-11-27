@extends('layouts.css')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
       Surplus Distribution Settings
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
    <div class="panel panel-default">
      <div class="panel-heading">
      	  @if(empty($cats))
	          <p>
	              <a href="{{ URL::to('surplus/create') }}" class="btn btn-success">
	                Configure Settings
	              </a>
	          </p>
          @else
          		<p>
	              <a href="{{ URL::to('surplus/edit/1') }}" class="btn btn-warning">
	                Update Settings
	              </a>
	          </p>
          @endif
        </div>
        <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Rate</th>
        <th>Frequency</th>
        <th>Action</th>
      </thead>
      <tbody>
      <?php $i=1;?>
      @if(isset($cats) && $i<=count($cats))
        @foreach($cats as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$invest->rate}}</td>
            <td>{{$invest->frequency}}</td>
            <td>{{$invest->action}}</td>                        
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