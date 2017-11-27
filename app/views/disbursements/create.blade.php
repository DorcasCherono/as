@extends('layouts.loans')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
        <h3>New Loan Disbursement Option</h3>
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
         <form method="POST" action="{{ URL::to('disbursements/create') }}" accept-charset="UTF-8">
            <fieldset>
                <div class="form-group">
                    <label for="username">Disbursement Name</label>
                    <input class="form-control" placeholder="" type="text" name="name"
                     value="{{{ Input::old('name') }}}" required>
                </div>
                <div class="form-group">
                    <label for="username">Minimum Amount</label>
                    <input class="form-control" placeholder="" type="text" name="min_amt" 
                     value="{{{ Input::old('min_amt') }}}" required>
                </div>
                <div class="form-group">
                    <label for="username">Maximum Amount</label>
                    <input class="form-control" placeholder="" type="text" name="max_amt"
                    value="{{{ Input::old('max_amt') }}}" required>
                </div>  
                 <div class="form-group">
                    <label for="username">Disbursement Description</label>
                    <textarea name="desc" class="form-control">
                        
                    </textarea>
                </div>        
                <div class="row">
                    <div class="col-lg-10">
                            <div class="form-actions form-group">        
                          <button type="submit" class="btn btn-primary btn-sm pull-centre">
                            Create Disbursement Option
                          </button>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>
@stop