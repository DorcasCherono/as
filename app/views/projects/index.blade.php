@extends('layouts.css')
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
        @if(isset($created))
        <div class="alert alert-success alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $created}}}</strong> 
          </div>      
         @endif 
         @if(isset($updated))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $updated }}}</strong> 
          </div>      
         @endif 
          @if(Session::has('deleted'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ Session::get('deleted') }}}</strong> 
          </div>      
         @endif 
    <div class="panel panel-default">
      <div class="panel-heading">
          <p>
              <a href="{{ URL::to('projects/create') }}" class="btn btn-success">
                New Investment Project
              </a>
          </p>
        </div>
        <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Project Name</th>
        <th>Investment Name</th>
        <th>Project Units</th>
        <th>Price per Unit</th>
        <th>Description</th>
        <th></th>
      </thead>
      <tbody>
      <?php $i=1;?>
      @if(isset($projects) && $i<=count($projects))
        @foreach($projects as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$invest->name}}</td>
            <td>{{$project=Investment::where('id','=',$invest->investment_id)->pluck('name')}}</td>
            <td>{{$invest->units}}</td>
            <td>{{$invest->unit_price}}</td>
            <td>{{$invest->description}}</td>
            <td>
              <div class="btn-group">
              <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                Action <span class="caret"></span>
              </button>         
              <ul class="dropdown-menu" role="menu">                    
                <li><a href="{{URL::to('projects/update/'.$invest->id)}}">Edit</a> </li>
                <li><a href="{{URL::to('projects/delete/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to delete this investment project?'))"> Delete</a></li>
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