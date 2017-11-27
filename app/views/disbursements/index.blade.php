@extends('layouts.loans')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
  <h3>Loan Disbursement Options</h3>
<hr>
</div>	
</div>
<div class="row">
	<div class="col-lg-12">
   @if(isset($done))
      <div class="alert alert-info alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{$done}}</strong> 
    </div>      
    @endif
    @if(isset($operation))
      <div class="alert alert-success alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{$operation}}</strong> 
    </div>      
    @endif
    @if(isset($shot))
      <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{$shot}}</strong> 
    </div>      
    @endif
    @if (Session::has('flash_message'))
      <div class="alert alert-success">
      {{ Session::get('flash_message') }}
     </div>
    @endif
     @if (Session::has('delete_message'))
      <div class="alert alert-danger">
      {{ Session::get('delete_message') }}
     </div>
    @endif
  <div class="panel panel-default">
      <div class="panel-heading">
          <a class="btn btn-info btn-sm" href="{{ URL::to('disbursements/create')}}">New Disbursement Option</a>
      </div>
  <div class="panel-body">
  <?php
    function asMoney($value) {
      return number_format($value, 2);
    }
  ?>
    <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Name</th>
        <th>Minimum Amount</th>
        <th>Maximum Amount</th>
        <th>Description</th>         
        <th></th>
      </thead>
      <tbody>
        <?php $i = 1; ?>
        @foreach($options as $option)
        <tr>
          <td> {{ $i }}</td>
          <td>{{ $option->name }}</td>
          <td>{{ asMoney($option->min)}}</td>
          <td>{{ asMoney($option->max)}}</td>
          <td>{{ $option->description }}</td>         
          <td>
              <div class="btn-group">
                <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  Action <span class="caret"></span>
                </button>          
                <ul class="dropdown-menu" role="menu">                 
                  <li><a href="{{URL::to('disbursements/update/'.$option->id)}}">Update</a></li> 
                  <li><a href="{{URL::to('disbursements/delete/'.$option->id)}}">Delete</a></li>
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