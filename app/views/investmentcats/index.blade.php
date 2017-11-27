@extends('layouts.css')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
      Investment Categories
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
         @if(isset($catupdated))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $catupdated}}}</strong>
          </div>
         @endif
         @if(Session::has('puff'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{Session::get('puff')}}}</strong>
          </div>
         @endif
    <div class="panel panel-default">
      <div class="panel-heading">
          <p>
              <a href="{{ URL::to('investmentscats/create') }}" class="btn btn-success">
                New Investment Category
              </a>
          </p>
        </div>
        <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Category Name</th>
        <th>Category Code</th>
        <th>Description</th>
        <th></th>
      </thead>
      <tbody>
      <?php $i=1;?>
      @if(isset($cats) && $i<=count($cats))
        @foreach($cats as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$invest->name}}</td>
            <td>{{$invest->code}}</td>
            <td>{{$invest->description}}</td>
            <td>
              <div class="btn-group">
              <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                Action <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" role="menu">
                <li><a href="{{URL::to('investmentscats/update/'.$invest->id)}}">Edit</a> </li>
                <li>
                  <a href="{{URL::to('investmentscats/delete/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to delete this investment category?'))">
                     Delete
                     </a>
                 </li>
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
