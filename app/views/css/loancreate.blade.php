@extends('layouts.membercss')

@section('content')

<script type="text/javascript">
$(document).ready(function() {
$('#loanproduct_id').change(function(){
  if($(this).val() != ""){
        $.get("{{ url('api/label')}}", 
        { option: $(this).val() }, 
        function(data) {
           $( "label#amt" ).replaceWith( '<label for="username" id="amt">Amount Applied (Instant Loan amount '+data+') <span style="color:red">*</span></label>');
        });
      }else{
        $( "label#amt" ).replaceWith( '<label for="username" id="amt">Amount Applied</label>');
      }
    });

    var max_fields      = 10; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID

    var selectwrapper         = $(".select_fields_wrap"); //Fields wrapper
    var select_add_button      = $(".select_add_field_button"); //Add button ID

    var purposewrapper         = $(".purpose_fields_wrap"); //Fields wrapper
    var purpose_add_button      = $(".add_purpose_button"); //Add button ID
   
    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
            $(wrapper).append('<div style="margin-top:10px;"><div class="col-lg-11 form-group" style="margin-left:-15px;"><input class="form-control" type="text" name="securities[]"/></div><a style="margin-top:10px;margin-left:-20px" href="#" class="col-lg-1 remove_field">Remove</a></div>'); //add input box
        }
    });
   
    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    });


    var z = 1; //initlal text box count
    $(purpose_add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(z < max_fields){ //max input box allowed
            z++; //text box increment
            $(purposewrapper).append('<div style="margin-top:10px;"><div class="col-lg-11 form-group" style="margin-left:-15px;"><textarea class="form-control" name="purposes[]" style="margin-bottom:10px"></textarea><input class="form-control" placeholder="" type="text" name="amount[]" id="amount"></div><a style="margin-top:70px;margin-left:-20px" href="#" class="col-lg-1 remove_purpose_field">Remove</a></div>'); //add input box
        }
    });
   
    $(purposewrapper).on("click",".remove_purpose_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); z--;
    });


    var y = 1; //initlal text box count
    $(select_add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(y < max_fields){ //max input box allowed
            y++; //text box increment
            $(selectwrapper).append('<div>'+

            '<div style="margin-left:-15px;" class="form-group col-lg-11"><select class="form-control selectable" name="guarantor_id[]">'+
                '<option value="">select member</option>'+
                '<option>--------------------------</option>'+
                '@foreach($guarantors as $guarantor)'+
                '<option value="{{$guarantor->id}}">{{ $guarantor->membership_no  }} {{ $guarantor->name }}</option>'+
               ' @endforeach'+
            '</select></div>'+
            '<a href="#" style="margin-top:10px;margin-left:-15px" class="col-lg-1 select_remove_field">Remove</a>'

            +'</div>'); //add input box
        }
    });
   
    $(selectwrapper).on("click",".select_remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); y--;
    });


});
</script>
<br/>

<div class="row">
  <div class="col-lg-12">
  @if(Session::has('glare'))
        <div class="alert alert-info alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>{{ Session::get('glare') }}</strong> 
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
  <h3>Loan Application</h3>
  <hr>
</div>  
</div>
<div class="row">
  <div class="col-lg-8">
     @if ($errors->has())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>        
            @endforeach
        </div>
        @endif
<form method="POST" action="{{{ URL::to('loans/application') }}}" accept-charset="UTF-8" enctype="multipart/form-data">   
        <div class="form-actions form-group" align="right">
          <button type="submit" class="btn btn-primary btn-sm">Submit Application</button> 
        </div>
      <!-- Nav tabs -->
   <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#loanapplication" aria-controls="loanapplication" role="tab" data-toggle="tab">Loan Application</a></li>
    <li role="presentation"><a href="#guarantor" aria-controls="guarantor" role="tab" data-toggle="tab">Guarantors</a></li>
    <li role="presentation"><a href="#loansecurities" aria-controls="loansecurities" role="tab" data-toggle="tab">Loan Securities/Collaterals</a></li>
   </ul>
       
   <div class="tab-content">    
          <div class="tab-pane active" role="tabpanel" class="tab-pane" id="loanapplication">
            <br><br>
            <div class="col-lg-12">
    <fieldset>
        <input class="form-control" placeholder="" type="hidden" name="member_id" id="member_id"
         value="{{$member->id}}">
         <div class="form-group col-lg-6">
            <label for="username">Loan Product</label>
            <select class="form-control selectable" name="loanproduct_id">
                <option value="">select product</option>
                <option>--------------------------</option>
                @foreach($loanproducts as $loanproduct)
                <option value="{{$loanproduct->id}}">{{ $loanproduct->name }}</option>
                @endforeach
            </select>            
        </div>
        <div class="form-group col-lg-6">
            <label for="username">Application Date </label>
            <div class="right-inner-addon ">
              <i class="glyphicon glyphicon-calendar"></i>
              <input class="form-control datepicker" readonly placeholder="" type="text"
                 name="application_date" id="application_date" 
                 value="{{{ Input::old('application_date') }}}">
            </div>
        </div>
        <div class="form-group col-lg-6">
            <label for="username">Amount Applied</label>
            <input class="form-control" placeholder="" type="text" name="amount_applied"
             id="amount_applied" value="{{{ Input::old('amount_applied') }}}">
        </div>

         <div class="form-group col-lg-6">
            <label for="username">Repayment Period(months)</label>
            <input class="form-control" placeholder="" type="text" name="repayment_duration" 
            id="repayment_duration" value="{{{ Input::old('repayment_duration') }}}">
        </div>
         <div class="form-group" style="margin-left:2.5%;">
              <label for="disbursement_id">Disbursement Option</label>
              <select name="disbursement_id" id="disbursement_id" class="form-control"
               required="required">
                 <option></option>
                  @foreach($disbursed as $disburse)
                  <option value="{{$disburse->id }}"> {{ $disburse->name }}</option>
                  @endforeach
              </select>
         </div>                   
         <div class="purpose_fields_wrap form-group"  style="margin-left:2.5%;">
            <label for="username">Loan Purposes </label><br>        
            <button class="btn btn-info add_purpose_button">Add More</button>
            <div style="margin-top:10px;margin-bottom:10px;">
              <div class="col-lg-11 form-group" style="margin-left:-15px;"><textarea style="margin-bottom:10px" class="form-control" name="purposes[]"></textarea>
              <input class="form-control" placeholder="" type="text" name="amount[]" id="amount">
            </div>
        </div>
         </div>
    </fieldset>
</form>
  </div>
</div>
<div role="tabpanel" class="tab-pane" id="guarantor">
  <br><br>            
      <div class="col-lg-12">
          <div class="form-group">
            <label for="username">Guarantor </label>
            <div class="select_fields_wrap">
          <button class="btn btn-info select_add_field_button">Add More</button>
            <div style="margin-top:10px;margin-bottom:10px;">
                <div class="form-group col-lg-11" style="margin-left:-15px;">
                  <select class="form-control selectable" name="guarantor_id[]">
                    <option value="">Select Guarantor</option>
                    <option>--------------------------</option>
                    @foreach($guarantors as $guarantor)
                      <option value="{{$guarantor->id}}">
                        {{ $guarantor->membership_no  }} {{ $guarantor->name }}
                      </option>
                    @endforeach
                  </select>
                </div>
            
            </div>
            
            </div>

          </div>
          </div>


<!--

<div class="form-group">
             <p style="color:red;"><strong>NB:</strong> Not Mandatory</p>
            <label for="username">Guarantor Matrix</label>
            <select class="form-control selectable" name="matrix">
                <option value="">select guarantor matrix</option>
                <option>--------------------------</option>
                @foreach($matrix as $loanproduct)
                <option value="{{$loanproduct->id}}">{{ $loanproduct->name }}</option>
                @endforeach
            </select>            
        </div> 
        <div class="form-group">
              <label for="username">Guarantor Matrix Copy</label>
              <input  type="file" name="scanned_copy" id="signature" >
        </div> 

-->
          </div>

          <div role="tabpanel" class="tab-pane" id="loansecurities">
          <br><br>
            
            <div class="col-lg-12">
                 <div class="input_fields_wrap">
                     <p style="color:red;"><strong>NB: </strong> Not Mandatory</p>
                  <label for="username">Loan Collateral </label><br>

                  <!--
                    <button class="btn btn-info add_field_button">Add More</button>
                  --> 
                    <div style="margin-top:10px;margin-bottom:10px;">
                        <div class="col-lg-11 form-group" style="margin-left:-15px;">
                              <select class="form-control selectable" name="securities[]">
                                    <option value="">Select Loan Collateral</option>
                                    <option>--------------------------</option>
                                    @foreach($matrix as $loanproduct)
                                    <option value="{{$loanproduct->id}}">
                                        {{ $loanproduct->name }}
                                    </option>
                                    @endforeach
                              </select>
                        </div>
                        <div class="form-group">
                          <label for="username">Collateral Scanned Copy</label>
                          <input  type="file" name="scanned_copy" id="signature" >
                        </div> 
                    </div>
                 </div>
          </div>
          </div>
</div>
</form>

    

  </div>

</div>











<!-- organizations Modal -->
<div class="modal fade" id="schedule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Loan Schedule</h4>
      </div>
      <div class="modal-body">
      </div>
      <div class="modal-footer">        
        <div class="form-actions form-group">
            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
@stop