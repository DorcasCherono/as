<html>
  <head>
    <title>Loan Listing Report</title>
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
          <strong>
              <h3>
                  {{strtoupper($chama->name)}} GROUP LOAN LISTING REPORT
              </h3>
          </strong>
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
          <td style="border-bottom:1px solid black;"><strong>Loan Number</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Loan Status</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Amount Disbursed</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Loan Balance</strong></td>
        </tr>
        @foreach($loans as $loan)
        <tr>
          <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
              {{$loan->member->membership_no}}
            </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
               {{$loan->member->name}}
           </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
               {{$loan->loanproduct->name}}
            </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
               {{$loan->account_number}}
            </td>
            @if($loan->is_approved==1)
            <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
                APPROVED
            </td>
            @else
            <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
                REJECTED
            </td>
            @endif
            <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">{{asMoney(Loanaccount::getLoanAmount($loan))}}
            </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">{{asMoney(Loantransaction::getLoanBalance($loan))}}
            </td>
        </tr>
      
        @endforeach
      </table>
   </div>
 </body>
 </html>