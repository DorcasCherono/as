@extends('layouts.css')
@section('content')
<br/>
<div class="row">
  <div class="col-lg-12">
    <h3>
      Investments
    </h3>
    <hr>
  </div>  
</div>
<div class="row">
  <div class="col-lg-12">
        @if(isset($out))
        <div class="alert alert-success alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $out }}}</strong> 
          </div>      
         @endif 
         @if(isset($exit))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $exit }}}</strong> 
          </div>      
         @endif 
          @if(isset($grab))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ $grab }}}</strong> 
          </div>      
         @endif 
    <div class="panel panel-default">
      <div class="panel-heading">
          <p>
              <a href="{{ URL::to('saccoinvestments/create') }}" class="btn btn-success">
                New Sacco Investment
              </a>
          </p>
        </div>
        <div class="panel-body">
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Investment Name</th>
        <th>Vendor Name</th>
        <th>Investment Value</th>
        <th>Growth Type</th>
        <th>Growth Rate</th>
        <th></th>
      </thead>
      <tbody>
      <?php $i=1;?>
      @if(isset($investment) && $i<=count($investment))
        @foreach($investment as $invest)
          <tr>
            <td>{{$i}}</td>
            <td>{{$invest->name}}</td>
            <td>{{$vendor=Vendor::where('id','=',$invest->vendor_id)->pluck('name')}}</td>
            <td>{{$invest->valuation}}</td>
            <td>{{$invest->growth_type}}</td>
            <td>{{$invest->growth_rate}}</td>
            <td>
              <div class="btn-group">
              <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                Action <span class="caret"></span>
              </button>         
              <ul class="dropdown-menu" role="menu">                    
                <li><a href="{{URL::to('saccoinvestments/edit/'.$invest->id)}}">Edit</a> </li>
                <li><a href="{{URL::to('saccoinvestments/delete/'.$invest->id)}}" onclick="return (confirm('Are you sure you want to delete this sacco investment?'))"> Delete</a></li>
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