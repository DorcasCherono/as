<html>
  <head>
    <title>LOAN CLEARANCE CERTIFICATE</title>
   <style>
     @page {  margin: 10px 10px 10px 10px;   }
     .header { position: fixed;
    top: -10px;
    width: 100%;
    height: 116px;}
     .footer { position: fixed; bottom: -50px; height: 30px; }
     .footer .page:after { content: counter(page, upper-roman); }
     .content { margin-top: 0px;  }
   </style>
 </head>
  <body style="font-size:11px;border: 1px solid blue;">
    <?php
      function asMoney($value) {
        return number_format($value, 2);
      }
    ?>
   <div class="content" style="padding:10px 10px 10px 10px;">
      <table cellpadding="5" style="width:100%;border-collapse: collapse;">
        <thead style="border-bottom: 1px solid #999;">
          <tr style="border-bottom: 1px solid black;">
            <td>
               <img src="{{ '../images/logo.png' }}" alt="LOGO" width="100px" height="45px" />
            </td>
            <td>
              <center>
                <strong>
                <h2>LOAN CLEARANCE CERTIFICATE</h2>
              </strong>
              </center>
            </td>
            <td>
              <center>
                <h2> {{ strtoupper($organization->name)}}</h2>
              </center>
            </td>
          </tr>
        </thead>
      </table>
      <div style="margin-top: 10%;margin-bottom: 10%;">
        <center>
          <p style="font-size: 18px;">This is to certify that
            <strong>
              <h2>
                {{$member}}
              </h2>
            </strong>
          <br>
          having paid loan amount of <strong>{{asMoney($account->amount_disbursed)}}</strong> in full
          <br><br>has been cleared and the loan account <strong>{{$account->account_number}}</strong> closed.
          </p>
        </center>
      </div>
      <table style="width:100%;border-collapse: collapse;">
        <thead>
          <tr>
            <td>
               <img src="{{ '../images/seal.jpg' }}" alt="{{ $organization->logo }}" width="100px"/>
            </td>
            <td>
              <p style="font-size: 16px;">
                awarded this day <strong>
                                    {{date('d-m-Y')}}
                                </strong>
                <br><br>

                ---------------------------------------<br>

                Loan and Credit Manager
              </p>
            </td>
            <td>
              <td>
              <p style="font-size: 16px;">
                <br><br>

                ---------------------------------------<br>

                 Chairman, {{$organization->name}}
              </p>
            </td>
          </tr>
        </thead>
      </table>
   </div>
 </body>
 </html>
