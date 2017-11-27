@extends('layouts.membercss')
@section('content')
<br/>
<div class="row">     
	<div class="col-lg-6"> 
      @if(Session::has('none'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{{ Session::get('none') }}}</strong> 
        </div>      
       @endif   
  <h3>{{$project->name }} Project</h3>
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
      <form method="POST" action="{{{ URL::to('projects/orders/create') }}}" accept-charset="UTF-8">
              <fieldset>
                  <!--BEGIN VERBOTEN-->
                  <input type="hidden" name="project" value="{{$project->id}}">
                  <input type="hidden" name="member"  
                  value="{{$member=Member::where('email','=',Confide::user()->email)->pluck('id')}}">
                  <!--END VERBOTEN-->
                  <div class="form-group">
                    <label for="username" id="amt">Project Name 
                    <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="name"
                       value="{{{$project->name }}}">
                  </div>                                 
                  <div class="form-group">
                      <label for="username" id="amt">Units Investing
                       <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="units" 
                       value="{{{ Input::old('units') }}}">
                  </div> 
                  <div class="form-group">
                      <label for="username">Payment Mode<span style="color:red">*</span></label>
                      <select class="form-control selectable" name="payment_mode" >
                          <option value="">Select Payment Option</option>
                          <option value="">--------------------------</option>                         
                          <option value="Loan Transfer">Loan Application</option>
                          <option value="Savings Transfer">Savings Transfer </option>
                          <option value="Mpesa Payment">Mpesa Payment</option>
                          <option value="Cash Payment">Cash Payment</option>
                      </select>
                  </div>                                                   
                  <div class="form-actions form-group">
                    <button type="submit" class="btn btn-primary btn-sm">
                      Submit Investment Order
                    </button> 
                  </div>
              </fieldset>
      </form>
  </div>
</div>
@stop