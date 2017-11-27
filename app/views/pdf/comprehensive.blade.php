<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<style type="text/css">
table {
  max-width: 100%;
  background-color: transparent;
}

th {
  text-align: left;
}
.table {
  width: 100%;
  margin-bottom: 2px;

}
hr {
  margin-top: 1px;
  margin-bottom: 2px;
  border: 0;
  border-top: 2px dotted #eee;
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 12px;
  line-height: 1.428571429;
  color: #333;
  background-color: #fff;
}
</style>
</head>
<div class="row">
  <div class="col-lg-8">
     <table class="table table-bordered">
      <tr>
        <td style="width:150px">
            <img src="{{ asset('../images/logo.png') }}" alt="SACCO LOGO MISSING" width="150px"/>
        </td>
        <td>
        <strong>
          {{ strtoupper($organization->name)}}<br>
          </strong>
          {{ $organization->phone}}<br>
          {{ $organization->email}}<br>
          {{ $organization->website}}<br>
          {{ $organization->address}}
        </td>
      </tr>
      <tr>
        <hr>
      </tr>
    </table>
    <table class="table table-bordered">
      <tr>
        <td>Member:</td><td> {{ $member->name}}</td>
      </tr>
      <tr>
        <td>Member #:</td><td> {{ $member->membership_no}}</td>
        </tr>
      <tr>
        <td>Branch :</td><td> {{ $member->branch->name}}</td>
      </tr>
      <tr>
        <hr>
      </tr>
    </table>
      <br><br>
      <h3>Loan Summary</h3>
      <hr>
      <table class="table table-bordered">
        <tr>
          <td><strong>Loan Product</strong></td>
          <td><strong>Loan Number</strong></td>
          <td><strong>Loan Amount</strong></td>
          <td><strong>Loan Balance</strong></td>
        </tr>
        @foreach($loans as $loan)
            @if(Loantransaction::getLoanBalance($loan) > 5)
            <tr>
               <td>{{$loan->loanproduct->name}}</td>
               <td>{{$loan->account_number}}</td>
                <td>{{asMoney(Loanaccount::getLoanAmount($loan))}}</td>
               <td>{{asMoney(Loantransaction::getLoanBalance($loan))}}</td>
            </tr>
            @endif
        @endforeach
      </table>
      <hr>
      <br><br>
      @if(count($account)>0)
          <h3>Saving Transaction Summary: 
              Account # &emsp; 
              <strong style="color:blue;">
                  {{ $account->account_number}}
              </strong>
          </h3>
          <hr>
         <table class="table table-bordered">
          <tr>
            <td><strong> Date </strong></td>
            <td><strong> Description </strong></td>
            <td><strong>  Dr </strong></td>
            <td><strong>  Cr </strong></td>
          </tr>
          @foreach($transactions as $transaction) 
              <tr >
                <td>
                  <?php 
                    $date = date("d-M-Y", strtotime($transaction->date ));
                    ?>
                  {{ $date}}</td>
                <td>{{ $transaction->description }}</td>
                @if( $transaction->type == 'debit')
                  <td >{{ asMoney($transaction->amount)}}</td>
                  <td>0.00</td>
                  @endif
              @if( $transaction->type == 'credit') 
               <td>0.00</td>
                  <td>{{ asMoney($transaction->amount) }}</td>
              @endif
              </tr>
           @endforeach
          <tr>
          <hr>
          </tr>
        </table>
      @endif
    <br><br>
    <i>Thank you for being a cooperative and active member. Asante Member!</i>
  </div>
</div>
</html>