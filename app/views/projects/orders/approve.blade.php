@extends('layouts.css')
@section('content')
<br/>
<div class="row">     
	<div class="col-lg-6"> 
     @if(Session::has('loan'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{{ Session::get('loan') }}}</strong> 
        </div>      
       @endif   
       @if(Session::has('inadequate'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{{ Session::get('inadequate') }}}</strong> 
        </div>      
       @endif   
      @if(Session::has('none'))
        <div class="alert alert-danger alert-dismissible fade in" role="alert">
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong>{{{ Session::get('none') }}}</strong> 
        </div>      
       @endif   
  <h3> Approve Investment Project</h3>
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
      <form method="POST" action="{{{ URL::to('projects/orders/approve') }}}" accept-charset="UTF-8">
              <fieldset>
                  <!--BEGIN VERBOTEN-->
                  <input type="hidden" name="project" value="{{$project->id}}">
                  <input type="hidden" name="member" value="{{$project->member_id}}">
                  <!--END VERBOTEN-->
                  <div class="form-group">
                    <label for="username" id="amt">Member Name 
                    <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="membername"
                       value="{{{$membername=Member::where('id','=',$project->member_id)
                       ->pluck('name')}}}">
                  </div>     
                  <div class="form-group">
                    <label for="username" id="amt">Project Name 
                    <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="name"
                       value="{{{$project12=Project::where('id','=',$project->project_id)->pluck('name') }}}">
                  </div>                                 
                  <div class="form-group">
                      <label for="username" id="amt">Units Investing
                       <span style="color:red">*</span></label>
                      <input class="form-control" placeholder="" type="text" name="units" 
                       value="{{{$project->units}}}">
                  </div>                                                    
                  <div class="form-actions form-group">
                    <button type="submit" class="btn btn-primary btn-sm">
                      Approve Investment Order
                    </button> 
                  </div>
              </fieldset>
      </form>
  </div>
</div>
@stop