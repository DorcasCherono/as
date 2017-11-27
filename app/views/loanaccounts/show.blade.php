@extends('layouts.loans')
@section('content')
<br/>
<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
<div class="row">
        @if (Session::has('repayment'))
            <div class="alert alert-warning alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ Session::get('repayment') }}}</strong>
          </div>
       @endif
<div class="col-lg-4">
<table class="table table-hover">
  <tr>
    <td>Member</td><td>{{ $loanaccount->member->name }}</td>
  </tr>
  <tr>
    <td>Loan Account</td><td>{{ $loanaccount->account_number }}</td>
  </tr>
</table>
</div>
  <div class="col-lg-8 pull-right">
       @if (Session::has('completed'))
            <div class="alert alert-info alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ Session::get('completed') }}}</strong>
          </div>
       @endif
       @if (Session::has('recover'))
              <div class="alert alert-success alert-dismissible fade in" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
              <strong>{{{ Session::get('recover') }}}</strong>
            </div>
        @endif
       @if (Session::has('convert'))
            <div class="alert alert-success alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ Session::get('convert') }}}</strong>
          </div>
      @endif
     @if (Session::has('flash_message'))
            <div class="alert alert-success alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ Session::get('flash_message') }}}</strong>
          </div>
      @endif
       @if (Session::has('delete_message'))
            <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <strong>{{{ Session::get('delete_message') }}}</strong>
          </div>
      @endif
</div>
<div class="col-lg-5 pull-right">
 <a  class="btn btn-success btn-sm" href="{{ URL::to('loanrepayments/create/'.$loanaccount->id) }}"> <span class="glyphicon glyphicon-file" aria-hidden="true"></span> Repay Loan</a>
 <a  class="btn btn-success btn-sm" href="{{ URL::to('loanrepayments/offset/'.$loanaccount->id) }}"> <span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Offset Loan</a>

 <a  class="btn btn-success btn-sm" href="{{ URL::to('loanaccounts/topup/'.$loanaccount->id) }}"> <span class="glyphicon glyphicon-download" aria-hidden="true"></span> Top up Loan</a>
</div>
<div class="col-lg-5 pull-right" style="margin-top: 1.8%;">
  <a  class="btn btn-primary btn-sm" href="{{ URL::to('loanrepayments/recover/'.$loanaccount->id) }}">
  <span class="fa fa-hand-paper-o" aria-hidden="true"></span> Recover Loan</a>
<a  class="btn btn-warning btn-sm" href="{{ URL::to('loanrepayments/convert/'.$loanaccount->id) }}">
  <span class="fa fa-line-chart" aria-hidden="true"></span> Convert Loan</a>
  @if(Loantransaction::getLoanBalance($loanaccount)<=0)
  <a class="btn btn-info btn-sm" href="{{ URL::to('loantransactions/certificate/'.$loanaccount->id)}}" target="_blank">
        <span class="fa fa-certificate" aria-hidden="true"></span>
         Certificate
  </a>
  @endif
</div>
</div>
<hr>
<div class="row">
<div class="col-lg-4">
<table class="table table-bordered table-hover">
  <tr>
    <td>Loan Type</td><td>{{ $loanaccount->loanproduct->name}}</td>
  </tr>
  <tr>
    <td>Date Disbursed</td><td>{{ $loanaccount->date_disbursed}}</td>
  </tr>
  <tr>
    <td>Amount Disbursed</td><td>{{ asMoney($loanaccount->amount_disbursed)}}</td>
  </tr>
  @if($loanaccount->is_top_up)
  <tr>
    <td>Top Up Amount</td><td>{{ asMoney($loanaccount->top_up_amount)}}</td>
  </tr>
  @endif
  <!--
  <tr>
    <td>Interest Amount</td><td>{{ asMoney($interest)}}</td>
  </tr>
  <tr>
    <td>Loan Amount</td><td>{{ asMoney($loanaccount->amount_disbursed + $interest)}}</td>
  </tr>
-->
</table>
</div>
<div class="col-lg-4">
<table class="table table-bordered table-hover">
  <tr>
    <td>Principal Paid</td><td>{{ asMoney($principal_paid)}}</td>
  </tr>
  <tr>
    <td>Interest Paid</td><td>{{ asMoney($interest_paid)}}</td>
  </tr>
<!--
  <tr>
    <td>Loan Balance </td><td>{{ asMoney($loanbalance)}}</td>
  </tr>
-->
  <tr>
    <td>Loan Balance </td><td>{{ asMoney(Loantransaction::getLoanBalance($loanaccount))}}</td>
  </tr>
  <!--
  <tr>
    <td>Interest Balance</td><td>{{ asMoney($interest - $interest_paid)}}</td>
  </tr>
-->
</table>
</div>
<div class="col-lg-4">
<table class="table table-bordered table-hover">
  <tr>
    <td>Loan Period</td><td>{{ $loanaccount->period." months"}}</td>
  </tr>
  <tr>
    <td>Interest rate</td><td>{{  $loanaccount->interest_rate." %"}}</td>
  </tr>
  <tr>
    <td>Repayment Duration </td><td>{{  $loanaccount->repayment_duration." months"}}</td>
  </tr>
</table>
</div>
</div>
</div>
<div class="row">
  <div class="col-lg-12">
<hr>
</div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div role="tabpanel">
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#remittance" aria-controls="remittance" role="tab" data-toggle="tab">Loan Schedule</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Loan Transactions</a></li>
   @if(Loantransaction::getLoanBalance($loanaccount)<0)
     <li role="presentation"><a href="#overpayments" aria-controls="overpayments" role="tab" data-toggle="tab">Loan Overpayments</a></li>
   @endif
   <!-- <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Loan Guarantors</a></li>-->
  </ul>
  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="remittance">
      <br>
      <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
               <p>Loan Schedule</p>
             <!-- <a href="{{URL::to('loans/schedule/'.$loanaccount->id)}}" class="btn btn-success btn-sm"> <i class="glyphicon glyphicon-file"> </i> Print Schedule</a>
-->
            </div>
        <div class="panel-body">
          <table class="table table-condensed table-hover">
            <thead>
              <th>Instalment #</th>
              <th>Date </th>
              <th>Principal </th>
              <th>Interest </th>
              <th>Total </th>
              <th>Loan Balance </th>
            </thead>
            <tbody>
              <tr>
                <td>0</td>
                <td>
                    <?php
                    $date = date("d-F-Y", strtotime($loanaccount->date_disbursed));
                    ?>
                    {{ $date }}
                </td>
                <?php
                      $first_amount= $loanaccount->amount_disbursed + $loanaccount->top_up_amount;
                      $first_rate = ($loanaccount->interest_rate)/100;
                      $first_interest= $first_amount * $first_rate;
                      $first_total=$first_amount + $first_interest;
                 ?>
                <td>{{ asMoney($first_amount)}}</td>
                <td>{{ asMoney($first_interest)}}</td>
                <td>{{ asMoney($first_total)  }}</td>
                <td>{{ asMoney($first_total)  }}</td>
              </tr>
              <?php
                  $date = date("d-F-Y", strtotime($loanaccount->repayment_start_date));
                  $interest = Loanaccount::getInterestAmount($loanaccount);
                  $principal = $loanaccount->amount_disbursed + $loanaccount->top_up_amount;
                  $balance = $first_total;
                  $days = 30;
                  $totalint =0;
                  if($loanaccount->repayment_duration !=null){
                      $period = $loanaccount->repayment_duration;
                  } else {
                    $period = $loanaccount->period;
                  }
                  $principal_amount =$loanaccount->amount_disbursed/ $period;
                  $total_principal = 0;
              for($i=1; $i<=$period; $i++) { ?>
              <tr>
                <td>{{ $i }}</td>
                <td>
                  {{ $date  }}
                </td>
                <td>
                  <?php $total_principal = $total_principal + $principal_amount; ?>
                  {{ asMoney($principal_amount)}} </td>
                <td>
                  <?php
                  if($loanaccount->loanproduct->formula == 'SL'){
                    $interest_amount = $interest/$period;
                  }
                  if($loanaccount->loanproduct->formula == 'RB'){
                    $interest_amount =((($principal - $total_principal) * ($loanaccount->interest_rate/100)));
                  }
                  ?>
                  {{ asMoney($interest_amount)}} </td>
                <td>
                  <?php $total = ($principal_amount + $interest_amount);
                    $totalint = $totalint + $total;
                  ?>
                  {{ asMoney($total)}} </td>
                <td>
                  {{ asMoney($balance - $total)}}
                </td>
                 <td>
              </tr>
              <?php
                $balance = $balance - $total;
                $days = $days + 30;
                $date = date('d-F-Y', strtotime($date. ' + 30 days'));
                } ?>
            </tbody>
          </table>
</div>
</div>
      </div>
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
      <br>
      <div class="col-lg-12">

    <div class="panel panel-default">
      <div class="panel-heading">
         <p>Loan Transactions
           <!--Check if loan balance is zero or below zero in order to show this link -->
             @if(Loantransaction::getLoanBalance($loanaccount)<=0)
                <a  href="{{ URL::to('loantransactions/certificate/'.$loanaccount->id)}}" target="_blank">
                      <span class="fa fa-certificate" aria-hidden="true" style="margin-left: 55%;"></span> Clearance Certificate
                </a>
            @endif
            <!--Check if loan balance is zero or below zero in order to show this link -->
          <a  href="{{ URL::to('loantransactions/statement/'.$loanaccount->id)}}" target="_blank" class="pull-right"> <span class="glyphicon glyphicon-file" aria-hidden="true"></span> Loan Statements</a>
         </p>
      </div>
        <div class="panel-body">
          <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
            <thead>
                  <th>#</th>
                  <th>Date</th>
                  <th>Description</th>
                  <th>Cr</th>
                 <th>Dr</th>
                 <th>Arrears</th>
              <th></th>
            </thead>
            <tbody>
              <?php $i = 2;
              $balance = $loanaccount->amount_disbursed + Loanaccount::getInterestAmount($loanaccount);
               ?>
               <tr>
                <td> 1</td>
                <td>
                  <?php
                  $date = date("d-M-Y", strtotime($loanaccount->date_disbursed));
                  ?>
                  {{ $date}}</td>
                <td>Loan disbursement</td>
                <td> 0.00</td>
                <td >{{ asMoney($loanaccount->amount_disbursed)}}</td>
                <td>0.00</td>
                <td>
      <!--
      <a  href="{{ URL::to('loantransactions/receipt/')}}" target="_blank"> <span class="glyphicon glyphicon-file" aria-hidden="true"></span> Receipt</a>
      -->
                </td>
               </tr>
              @foreach($loantransactions as $transaction)
              @if($transaction->description != 'loan disbursement')
              <tr>
                <td> {{ $i }}</td>
                <td>
                  <?php
                  $date = date("d-M-Y", strtotime($transaction->date));
                  ?>
                  {{ $date }}</td>
                <td>{{ $transaction->description }}</td>
                 @if( $transaction->type == 'debit')
                  <td>
                    <?php $creditamount = 0; ?>
                    0.00</td>
                <td >{{ asMoney($transaction->amount)}}</td>
                @endif
                @if( $transaction->type == 'credit')
                <td>
                    <?php $creditamount = $transaction->amount; ?>
                  {{ asMoney($transaction->amount) }}</td>
                  <td>0.00</td>
                @endif
              <td>{{asMoney($transaction->arrears)}}</td>
               <td>
                  <a  href="{{ URL::to('loantransactions/receipt/'.$transaction->id)}}" target="_blank"> <span class="glyphicon glyphicon-file" aria-hidden="true"></span> Receipt</a>
                </td>
              </tr>
              <?php $i++; ?>
              @endif
              @endforeach
            </tbody>
          </table>
  </div>


  </div>


    </div>

</div>
<div role="tabpanel" class="tab-pane" id="overpayments">
      <br>
      <div class="col-lg-12">

    <div class="panel panel-default">
      <div class="panel-heading">
         <p>Loan Overpayments
          <a  href="{{ URL::to('loantransactions/overpayments/'.$loanaccount->id)}}"
           target="_blank" class="pull-right">
           <span class="glyphicon glyphicon-file" aria-hidden="true"></span>
            Overpayment Claim
          </a>
         </p>
      </div>
        <div class="panel-body">
          <p>Member Name: <strong>{{$loanaccount->member->name }}</strong></p>
          <p>Loan Account Number: <strong>{{$loanaccount->account_number}}</strong></p>
          <p>Amount Claimed: <strong>{{asMoney(-Loantransaction::getLoanBalance($loanaccount))}}</strong></p>
        </div>
      </div>
    </div>
    </div>
    <div role="tabpanel" class="tab-pane" id="messages">
          <br>
      <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
         <a href="{{URL::to('loanguarantors/create/'.$loanaccount->id)}}" class="btn btn-primary">New Guarantor</a>
        </div>
        <div class="panel-body">
    <table id="mobile" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Member</th>

         <th>Loan Account</th>
         <th>Guaranteed Amount</th>


        <th></th>

      </thead>
      <tbody>

        <?php $i=1; ?>


        @foreach($loanguarantors as $guarantor)

        <tr>

          <td> {{ $i }}</td>
          <td>{{ $guarantor->member->name }}</td>
          <td>{{ $guarantor->loanaccount->account_number }}</td>
          <td>{{ $guarantor->amount }}</td>








        <td>

                  <div class="btn-group">
                  <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    Action <span class="caret"></span>
                  </button>

                  <ul class="dropdown-menu" role="menu">

                    <li><a href="{{URL::to('loanguarantors/edit/'.$guarantor->id)}}">Update</a></li>

                    <li><a href="{{URL::to('loanguarantors/delete/'.$guarantor->id)}}">Remove</a></li>

                  </ul>
              </div>

                    </td>



        </tr>

        <?php $i++; ?>
        @endforeach


      </tbody>


    </table>
  </div>


  </div>


    </div>




    </div>



    <div role="tabpanel" class="tab-pane" id="settings">

      <br>
        <div class="row">
          <div class="col-lg-12">

            <div class="panel panel-default">
              <div class="panel-heading">


            </div>

            <div class="panel-body">


                <table id="users" class="table table-condensed table-bordered table-responsive table-hover">


                  <thead>

                    <th>#</th>

                    <th>Member </th>
                    <th>Branch </th>
                    <th>Amount Guaranteed</th>

                    <th></th>

                  </thead>

                  <tbody>

                      <?php $i = 1; ?>



                    <tr>

                      <td> </td>

                      <td></td>
                      <td></td>
                      <td></td>
                      <td> <a href="" class="btn btn-primary btn-sm">View </a></td>
                    </tr>

                      <?php $i++; ?>



                  </tbody>


                </table>
            </div>


          </div>

        </div>
    </div>
  </div>
</div>
  </div>
</div>
@stop
