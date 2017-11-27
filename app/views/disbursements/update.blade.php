@extends('layouts.loans')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
        <h3>Update Loan Disbursement Option</h3>
        <hr>        
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
         <form method="POST" action="{{ URL::to('disbursements/update') }}" accept-charset="UTF-8">
            <fieldset>
                <div class="form-group">
                    <label for="username">Disbursement Name</label>
                    <input class="form-control" placeholder="" type="text" name="name"
                     value="{{$disbursed->name}}" required>
                </div>
                <input type="hidden" name="id" value="{{$disbursed->id}}">
                <div class="form-group">
                    <label for="username">Minimum Amount</label>
                    <input class="form-control" placeholder="" type="text" name="min_amt" 
                     value="{{$disbursed->min}}" required>
                </div>
                <div class="form-group">
                    <label for="username">Maximum Amount</label>
                    <input class="form-control" placeholder="" type="text" name="max_amt"
                    value="{{$disbursed->max}}" required>
                </div>  
                 <div class="form-group">
                    <label for="username">Disbursement Description</label>
                    <textarea name="desc" class="form-control">
                        {{$disbursed->description}}
                    </textarea>
                </div>        
                <div class="row">
                    <div class="col-lg-10">
                            <div class="form-actions form-group">        
                          <button type="submit" class="btn btn-primary btn-sm pull-centre">
                            Update Disbursement Option
                          </button>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
@stop