<html>
  <head>
    <title>Deman Letter</title>
   <style>
     @page { margin: 170px 30px; }
     .header { position: fixed; left: 25px; top: -150px; right: 25px; height: 150px;  text-align: center; }
     .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
     .footer .page:after { content: counter(page, upper-roman); }
     .content { margin-top: -50px;margin-right: 25px;margin-left: 25px;  }
      
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
        <td>        
          {{ strtoupper($member->name)}}<br>
          {{ $member->address}} <br>
          {{ $member->phone}} <br>
          {{ $member->email}}
          <br>
          <br>
          {{date('d-F-Y')}}
          <br>
          <br>
        </td>                          
      </tr>      
    </table>
   </div>
   <div class="footer">
     <p class="page">Page <?php $PAGE_NUM ?></p>
   </div>
   <div class="content">
     <h3 style="text-decoration: underline;">RE: UNPAID LOAN BALANCE</h3>
      <p>
        Dear {{$member->name}},
      </p>
      <br>
      <p>
        This letter is pursuant to your agreement to pay a loan amount of {{asMoney($loan->amount_approved)}} dated {{date('d-M-Y', strtotime($loan->application_date))}} that was approved on {{date('d-M-Y', strtotime($loan->date_approved))}}.
      </p>
      <br>
      <p>
        Your failure to pay as per the {{date('d-M-Y', strtotime($loan->application_date))}} amounts to a breach of contract.
      </p>
      <br>
      <p>
        You are hereby notified that you have a loan balance of {{asMoney($loanbalance)}} which you are supposed to clear.
      </p>
      <br>
      <p>
        Please acknowledge receipt of this letter within five business days. Please make your payment not later than {{date('d-M-Y', strtotime(date('d-M-Y'). ' + 5 days'))}}. If you fail to respond, {{$organization->name}} will be compelled to pursue legal action and consequently be forced to recover the loan balance from your loan guarantors or your deposits.
      </p>
      <br>
      <p>
        Thank you in advance for your prompt attention to this matter. I look forward to hearing from you. If you have any questions, please do not hesitate to contact me at 
        {{$organization->phone}}.
      </p>
      <br>
      <p>
        Sincerely,
        <br><br>
        {{$organization->name}}
      </p>

   </div>
 </body>
 </html>