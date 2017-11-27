<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
<html>
  <head>
   <style>
     @page { margin: 170px 30px; }
     .header { position: fixed; left: 0px; top: -150px; right: 0px; height: 150px;  text-align: center; }
     .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
     .footer .page:after { content: counter(page, upper-roman); }
   </style>
  <body>
   <div class="header">
     <table >
      <tr>
        <td style="width:150px">
            <img src="{{ asset('../images/logo.png') }}" alt="{{ $organization->logo }}" width="150px"/>
        </td>
        <td>
        <strong>
          {{ strtoupper($organization->name)}}<br>
          </strong>
          {{ $organization->phone}} |
          {{ $organization->email}} |
          {{ $organization->website}}<br>
          {{ $organization->address}}
        </td>
      </tr>
      <tr>
        <hr>
      </tr>
    </table>
   </div>
   <div class="footer">
     <p class="page">Page <?php $PAGE_NUM ?></p>
   </div>
   <div class="content">


    <table class="table table-bordered">

      <tr>


       
        <td>Member:</td><td> {{ $transaction->loanaccount->member->name}}</td>
      </tr>
      <tr>

        <td>Member #:</td><td> {{ $transaction->loanaccount->member->membership_no}}</td>

        </tr>
      <tr>
        
        <td>Account :</td><td> {{ $transaction->loanaccount->account_number}}</td>

      </tr>


      <tr>
        
        <td>Branch :</td><td> {{ $transaction->loanaccount->member->branch->name}}</td>

      </tr>
      <tr>
        <hr>
      </tr>
    </table>
       <br><br>
     <table class="table table-bordered">
      <tr>
        <td style="padding:5px"> <strong> Date </strong></td>
        <td style="padding:5px"> <strong> Description </strong></td>
        <td style="padding:5px"> <strong> Interest </strong></td>
        <td style="padding:5px"> <strong> Insurance </strong></td>
        <td style="padding:5px"> <strong> Principal </strong></td>
        <td style="padding:5px"><strong> Total </strong></td>
      </tr>
      <tr>
        <td style="padding:5px; width:75px">{{ $transaction->date }}</td>
        <td style="padding:5px; width:100px">{{ $transaction->description }}</td>
        <td style="padding:5px">{{ asMoney($interest_paid )}}</td>
        <td style="padding:5px">{{ asMoney($insurance_paid )}}</td>
        <td style="padding:5px">{{ asMoney($principal_paid )}}</td>
        <td style="padding:5px">{{ asMoney($transaction->amount )}}</td>
      </tr>
      <tr>
      </tr>
    </table>
       <br><br>
       <hr>
   </div>
 </body>
 </html>