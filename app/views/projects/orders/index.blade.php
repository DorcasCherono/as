@extends('layouts.css')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
      Investment Project Orders
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
         @if(isset($approved))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $approved }}}</strong> 
          </div>      
         @endif
         @if(isset($rejected))
        <div class="alert alert-warning alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $rejected }}}</strong> 
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
          <p style="text-decoration: underline;">
             <strong>
               INVESTMENT PROJECTS ORDERS
             </strong> 
          </p>
        </div>     
  <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Member Name</th>
        <th>Project Name</th>
        <th>Units Ordered</th>
        <th>Date Ordered</th>
        <th></th>
      </thead>
      <tbody>
      <?php $i=1;?>
      @if(isset($projects) && $i<=count($projects))
        @foreach($projects as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$member=Member::where('id','=',$invest->member_id)->pluck('name')}}</td>
            <td>{{$project=Project::where('id','=',$invest->project_id)->pluck('name')}}</td>
            <td>{{$invest->units}}</td>
            <td>{{$invest->date}}</td>            
            <td>
              <div class="btn-group">
              <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                Action <span class="caret"></span>
              </button>         
              <ul class="dropdown-menu" role="menu">                  
                  <li><a href="{{URL::to('projects/orders/update/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to update this project order?'))"> Edit</a></li>
                  <li><a href="{{URL::to('projects/orders/approve/'.$invest->id)}}"  onclick="return (confirm('Are you sure you want to approve this project order?'))">Approve</a> </li>
                  <li><a href="{{URL::to('projects/orders/reject/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to reject this project order?'))"> Reject</a></li>
                  <li><a href="{{URL::to('projects/orders/delete/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to delete this project order?'))"> Delete</a></li>
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