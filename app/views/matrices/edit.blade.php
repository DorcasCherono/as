@extends('layouts.loans')
@section('content')
<br/>
<div class="row">
    <div class="col-lg-12">
        <h3>Update Guarantor Matrix</h3>
        <hr>
        @if(Session::has('wrath'))
            <div class="alert alert-warning alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
            <strong>{{ Session::get('wrath')}}</strong> 
            </div>      
        @endif      
    </div>  
</div>
<div class="row">
    <div class="col-lg-4">        
        @if ($errors->has())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>        
            @endforeach
        </div>
        @endif
         <form method="POST" action="{{ URL::to('matrices/update') }}" accept-charset="UTF-8">
            <fieldset>
                <input type="hidden" name="id" value="{{$matrix->id}}">
                <div class="form-group">
                    <label for="username">Matrix Name</label>
                    <input class="form-control" placeholder="" type="text" name="name"
                     value="{{$matrix->name}}" required>
                </div>                
                <div class="form-group">
                    <label for="username">Maximum Amount to Guarantee</label>
                    <input class="form-control" placeholder="" type="text" name="maximum"
                    value="{{$matrix->maximum}}" required>
                </div>  
                 <div class="form-group">
                    <label for="username">Matrix Description</label>
                    <textarea name="desc" class="form-control">
                        {{$matrix->description}}
                    </textarea>
                </div>        
                <div class="row">
                    <div class="col-lg-10">
                            <div class="form-actions form-group">        
                          <button type="submit" class="btn btn-primary btn-sm pull-centre">
                            Update Guarantor Matrix
                          </button>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
@stop