<html>
  <head>
    <title>MONTHLY LOAN REPAYMENT REPORT</title>
   <style>
     @page { margin: 170px 30px; }
     .header { position: fixed; left: 0px; top: -150px; right: 0px; height: 150px;  text-align: center; }
     .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
     .footer .page:after { content: counter(page, upper-roman); }
     .content { margin-top: -70px;  }
      
   </style>
 </head>
  <body style="font-size:11px">
    <?php
    function asMoney($value) {
      return number_format($value, 2);
    }
    ?>
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
        <td>
          <strong><h3 style="text-decoration: underline;">PERIOD: {{$date}} </br><BR>
                LOAN REPAYMENT REPORT</h3></strong>
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
      <table class="table table-bordered" style="width:100%">
        <tr>
          <td style="border-bottom:1px solid black;"><strong>Member #</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Member Name</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Loan Product</strong></td>         
          <td style="border-bottom:1px solid black;"><strong>Amount Paid</strong></td>         
          <td style="border-bottom:1px solid black;"><strong>Date Paid</strong></td>
        </tr>   
        <?php
          $totals=0;
        ?>     
        @foreach($scrapdate as $loan)    
        @if($date==date('m-Y',strtotime($loan->date)))                     
        <tr>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
              {{$loan->loanaccount->member->membership_no}}
           </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
              {{$loan->loanaccount->member->name}}
           </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
              {{$loan->loanaccount->loanproduct->name}}
           </td>           
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
              {{asMoney($sum=$loan->principal_paid + $loan->interest_paid)}}
           </td>          
            <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
              {{date('d-m-Y',strtotime($loan->date))}}
            </td>
        </tr>
        <?php
          $totals+=$sum;
        ?>
        @endif
        @endforeach                  
      </table>
      <br><br>
      <center>
        <p>
          <strong>TOTAL AMOUNT PAID:&emsp; {{asMoney($totals)}}</strong>
        </p>
      </center>      
   </div>
 </body>
 </html>