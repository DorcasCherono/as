<html>
  <head>
   <style>
     @page { margin: 170px 30px; }
     .header { position: fixed; left: 0px; top: -150px; right: 0px; height: 150px;  text-align: center; }
     .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
     .footer .page:after { content: counter(page, upper-roman); }
     .content { margin-top: -70px;  }
      
   </style>
  <body style="font-size:13px">
<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
   <div class="header">
     <table >
      <tr>
        <td style="width:150px">
            <img src="{{ asset('../images/logo.png' )}}" alt="{{ $organization->logo }}" width="150px"/>
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
          <strong><h3>LOAN APPLICATION FORMS SALES REPORT</h3></strong>
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
          <td style="border-bottom:1px solid black;"><strong>#</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Member #</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Member Name</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Transaction #</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Amount Paid</strong></td>
          <td style="border-bottom:1px solid black;"><strong>Date Paid</strong></td>
        </tr>
         <?php
            $i=1;
          ?>
        @foreach($sales as $sale)
        <tr>
          <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">          {{$i}}
           </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
               {{Member::where('id',$sale->member_id)->pluck('membership_no')}}
            </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">
               {{Member::where('id',$sale->member_id)->pluck('name')}}
            </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">         {{$sale->trans_no}}
            </td>
            <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">      {{asMoney($sale->amount_paid)}}
            </td>
           <td style="border-bottom:0.1px solid black; border-right:0.1px solid black;">  
               <?php
                $date = date("d-M-Y", strtotime($sale->created_at));
               ?>
               {{$date}}
            </td>
        </tr>
        <?php $i++;?>
        @endforeach
      </table>
   </div>
 </body>
 </html>