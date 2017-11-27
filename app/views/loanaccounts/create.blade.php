@extends('layouts.loans')
@section('content')
<script type="text/javascript">
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>
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

    var selectwrapper        = $(".select_fields_wrap"); //Fields wrapper
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

    $('.totals').change(function () {
        shareBalanceTotals();
        loanBalanceTotals();
        calculateDifference();
    }).change();

    /*When all check box selected*/
    $('#selectAll').change(function () {
        shareBalanceTotals();
        loanBalanceTotals();
        calculateDifference();
    }).change();
});
</script>
<script type="text/javascript">
    /*Fomatting output*/
    function asMoney(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    /*Select All functionality*/
    function toggle(source) {
          checkboxes = document.getElementsByName('guarantor_id[]');
          for(var i=0, n=checkboxes.length;i<n;i++) {
                checkboxes[i].checked = source.checked;
          }
    }
    /*Get Sum of shares and savings Balances*/
    function shareBalanceTotals() {
        var Sum = 0;
        // iterate through each td based on class and add the values
        $(".sharesamount").each(function() {
            //Check if the checkbox is checked
            if ($(this).closest('tr').find(':checkbox').is(':checked')) {
                var value = $(this).text();
                value=value.replace(/\,/g,'');
                value=parseInt(value,10);
                // add only if the value is number
                if (!isNaN(value) && value.length != 0) {
                    Sum += parseFloat(value);
                }
            }
        });
        $('.total-shares').val(asMoney(Sum));
    };
    /*Get Sum of Loan Balances*/
    function loanBalanceTotals() {
                var Sum2 = 0;
                // iterate through each td based on class and add the values
                $(".loansamount").each(function() {
                //Check if the checkbox is checked
                if ($(this).closest('tr').find(':checkbox').is(':checked')) {
                    var value = $(this).text();
                    value=value.replace(/\,/g,'');
                    value=parseInt(value,10);
                    // add only if the value is number
                    if (!isNaN(value) && value.length != 0) {
                        Sum2 += parseFloat(value);
                    }
                }
            });
        $('.total-loans').val(asMoney(Sum2));
    };
    /*Calculate Difference*/
    function calculateDifference() {
        var diff=0;
        var loans= $(".total-loans").val();
        loans=loans.replace(/\,/g,'');
        loans=parseInt(loans,10);
        var shares= $(".total-shares").val();
        shares=shares.replace(/\,/g,'');
        shares=parseInt(shares,10);
        diff=shares - loans;
        //alert(diff);
        $('.diff').val(asMoney(diff));
    };
</script>
<br/>
<?php
	function asPesa($value){
		return number_format($value, 2);
	}
?>
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
  <div class="col-lg-10">
     @if ($errors->has())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
        @endif
<form method="POST" action="{{{ URL::to('loans/apply') }}}" accept-charset="UTF-8" enctype="multipart/form-data">
     <input class="form-control" placeholder="" type="hidden" name="member_id" id="member_id" value="{{$member->id}}">
        <div class="form-actions form-group" align="right">
          <button type="submit" class="btn btn-primary btn-sm">Submit Application</button>
        </div>
      <!-- Nav tabs -->
   <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#loanapplication" aria-controls="loanapplication" role="tab" data-toggle="tab">Loan Application</a></li>
    <li role="presentation"><a href="#guarantor" aria-controls="guarantor" role="tab" data-toggle="tab">Guarantors</a></li>
    <li role="presentation"><a href="#loansecurities" aria-controls="loansecurities" role="tab" data-toggle="tab">Collaterals</a></li>
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
                <option value="">Select Product</option>
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
              <input required class="form-control datepicker"   type="text"
               name="application_date" id="application_date" value="{{date('Y-m-d')}}" readonly>
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
         <div class="form-group col-lg-6">
              <label for="disbursement_id">Disbursement Option</label>
              <select name="disbursement_id" id="disbursement_id" class="form-control selectable"
               required="required">
                 <option></option>
                  @foreach($disbursed as $disburse)
                  <option value="{{$disburse->id }}"> {{ $disburse->name }}</option>
                  @endforeach
              </select>
         </div>
         <div class="purpose_fields_wrap form-group col-lg-8" >
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
        <br>
        <div class="row">
          <div class="form-group col-lg-4">
            <label>Total Shares</label>
            <input type="text" name="total-shares" class="form-control total-shares" readonly/>
          </div>
          <div class="form-group col-lg-4">
            <label>Total Loans</label>
            <input type="text" name="total-loans"  class="form-control total-loans" readonly/>
           </div>
           <div class="form-group col-lg-4">
            <label>Difference</label>
            <input type="text" name="diff" value="" class="form-control diff" readonly/>
          </div>
        </div>
        <br>
        <table id="example" class="table table-striped table-hover" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" class="form-control" id="selectAll" onclick="toggle(this)">
                    </th>
                    <th>#</th>
                    <th>Member #</th>
                    <th>Name </th>
                    <th>Phone #</th>
                    <th>ID #</th>
                    <th>Shares</th>
                    <th>Loans</th>
                </tr>
            </thead>
            <tbody>
                <?php $i=1;?>
                @foreach($guarantors as $member)
                <tr>
                    <td><input type="checkbox" class="form-control totals" id="select" name="guarantor_id[]" value="{{$member->id}}"></td>
                    <td>{{$i}}</td>
                    <td>{{$member->membership_no}}</td>
                    <td>{{$member->name}}</td>
                    <td>{{$member->phone}}</td>
                    <td>{{$member->id_number}}</td>
                    <?php
                        /*Get Savings and shares balances*/
                    $account = Shareaccount::findOrFail($member->id);

                    $credit = DB::table('sharetransactions')->where('shareaccount_id', '=', $account->id)->where('type', '=', 'credit')->sum('amount');
                    $debit = DB::table('sharetransactions')->where('shareaccount_id', '=', $account->id)->where('type', '=', 'debit')->sum('amount');
                        /*
                        $credit=DB::table('savingtransactions')
                                ->join('savingaccounts','savingtransactions.savingaccount_id','=','savingaccounts.id')
                                ->where('savingaccounts.member_id',$member->id)
                                ->where('savingtransactions.type','=','credit')
                                ->sum('savingtransactions.amount');
                        $debit=DB::table('savingtransactions')
                                ->join('savingaccounts','savingtransactions.savingaccount_id','=','savingaccounts.id')
                                ->where('savingaccounts.member_id',$member->id)
                                ->where('savingtransactions.type','=','debit')
                                ->sum('savingtransactions.amount');*/
                        $balance=$credit-$debit;
                        /*Get Loan Balances*/
                        $sum=0;
                        $loanaccounts=DB::table('loanaccounts')->where('member_id',$member->id)->get();
                        foreach($loanaccounts as $loan){
                            $credit2=DB::table('loantransactions')->where('loanaccount_id',$loan->id)
                                ->where('type','=','credit')->sum('amount');
                            $debit2=DB::table('loantransactions')->where('loanaccount_id',$loan->id)
                                ->where('type','=','debit')->sum('amount');
                            $balance2=$debit2-$credit2;
                            $sum+=$balance2;
                        }
                    ?>
                    <td class="sharesamount">{{asPesa($balance)}}</td>
                    <td class="loansamount">{{asPesa($sum)}}</td>
                </tr>
                <?php $i++;?>
                @endforeach
            </tbody>
        </table>

     <!--
      <div class="col-lg-12">
          <div class="form-group">
            <label for="username">Guarantor </label>
            <div class="select_fields_wrap">
            <button class="btn btn-info select_add_field_button">Add More</button>
            <div style="margin-top:10px;margin-bottom:10px;">
                <div class="form-group col-lg-2" style="margin-left:-2%;">
                    <input type="text" placeholder="Search..." name="search[]" class="form-control search"/>
                </div>
                <div class="form-group col-lg-3">
                  <select class="form-control guarant" name="guarantor_id[]" id="guarantors0">
                    <option value="">Select Guarantor</option>
                    <option>--------------------------</option>
                    @foreach($guarantors as $guarantor)
                      <option value="{{$guarantor->id}}">
                        #: {{ $guarantor->membership_no  }},  Name: {{ $guarantor->name }},  Phone #: {{$guarantor->phone}},  ID #: {{$guarantor->id_number}}
                      </option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group col-lg-3">
                    <input type="text" name="shares[]"  class="form-control shares" readonly/>
                </div>
                <div class="form-group col-lg-3">
                    <input type="text"  name="loans[]"  class="form-control loans" readonly/>
                </div>
            </div>
            </div>
          </div>
          <div class="form-group col-lg-4" style="margin-left:-2%;">
            <label>Total Shares</label>
            <input type="text" name="total-shares" value="" class="form-control total-shares" readonly/>
          </div>
          <div class="form-group col-lg-4">
            <label>Total Loans</label>
            <input type="text" name="total-loans" value="" class="form-control total-loans" readonly/>
           </div>
           <div class="form-group col-lg-3">
            <label>Difference</label>
            <input type="text" name="diff" value="" class="form-control diff" readonly/>
          </div>

    </div>
 -->
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

            <div class="col-lg-6">
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

<!--Serach
+'</div>'+
            '<div class="form-group col-lg-4" style="margin-left:-2%;">'+
            '<label>Total Shares</label>'+
            '<input type="text" name="total-shares" value="" class="form-control" readonly/> '+
            '</div>'+
            '<div class="form-group col-lg-4">'+
            '<label>Total Loans</label>'+
            '<input type="text" name="total-loans" value="" class="form-control" readonly/> '+
            '</div>'+
            '<div class="form-group col-lg-3">'+
            '<label>Difference</label>'+
            '<input type="text" name="diff" value="" class="form-control" readonly/> '

-->
