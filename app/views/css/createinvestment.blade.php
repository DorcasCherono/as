@extends('layouts.css')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-6">
   @if(Session::has('reject'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>{{{ Session::get('reject') }}}</strong> 
      </div>      
   @endif 
   @if(Session::has('repel'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>{{{ Session::get('repel') }}}</strong> 
      </div>      
   @endif          
  <h3>New Sacco Investment</h3>
<hr>
</div>	
</div>
<div class="row">
	<div class="col-lg-5">
		 @if ($errors->has())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>        
            @endforeach
        </div>
        @endif
      <form method="POST" action="{{{ URL::to('saccoinvestments/create') }}}" accept-charset="UTF-8">
              <fieldset>
                  <div class="form-group">
                    <label for="username" id="amt">Investment Name <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="investment"
                       value="{{{ Input::old('investment') }}}">
                  </div> 
                   <div class="form-group">
                      <label for="username">Investment Category <span style="color:red">*</span></label>
                      <select class="form-control selectable" name="category" >
                          <option value="">Select Category</option>
                          <option value="">--------------------------</option>
                          @foreach($cats as $loanproduct)
                           <option value="{{$loanproduct->id}}">{{ $loanproduct->name }}</option>
                          @endforeach
                      </select>
                  </div>                  
                  <div class="form-group">
                      <label for="username">Vendor Name <span style="color:red">*</span></label>
                      <select class="form-control selectable" name="vendor" >
                          <option value="">Select Vendor</option>
                          <option value="">--------------------------</option>
                          @foreach($vendor as $loanproduct)
                           <option value="{{$loanproduct->id}}">{{ $loanproduct->name }}</option>
                          @endforeach
                      </select>
                  </div>                 
                  <div class="form-group">
                      <label for="username" id="amt">Investment Value <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="valuation" 
                       value="{{{ Input::old('valuation') }}}">
                  </div>
                  <div class="form-group">
                      <label for="username">Growth Type <span style="color:red">*</span></label>
                      <select class="form-control selectable" name="growth_type" >
                          <option value="">Select Appreciation/Depreciation</option>
                          <option value="">--------------------------</option>                   
                          <option value="Appreciation">Appreciation</option>
                          <option value="Depreciation">Depreciation</option>
                      </select>
                  </div>
                  <div class="form-group">
                      <label for="username" id="amt">Growth Rate (Monthly)
                        <span style="color:red">*</span>
                      </label>
                      <input class="form-control" placeholder="" type="text" name="growth_rate"
                       value="{{{ Input::old('growth_rate') }}}">
                  </div>
                  <div class="form-group">
                      <label for="username" id="amt">
                            Investment Description
                            <span style="color:red">*</span>
                       </label>
                       <textarea name="desc" class="form-control">
                         {{{Input::old('desc')}}}
                       </textarea>
                  </div>                       
                                                                
                  <div class="form-actions form-group">
                    <button type="submit" class="btn btn-primary btn-sm">Create Investment</button> 
                  </div>
              </fieldset>
      </form>
  </div>
</div>
@stop