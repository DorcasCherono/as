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



 @page { margin: 170px 30px; }
 .header { position: fixed; left: 0px; top: -150px; right: 0px; height: 150px;  text-align: center; }
 .content {margin-top: -100px; margin-bottom: -150px}
 .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
 .footer .page:after { content: counter(page, upper-roman); }



</style>

</head>

<body>

  <div class="header">
     <table >

      <tr>


       
        <td style="width:150px">

            <img src="{{ '../images/logo.png' }}" alt="{{ $organization->logo }}" width="100px"/>
    
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


	<div class="content" style='margin-top:0px;'>
   <div align="center"><strong>Quotation</strong></div>
   <hr>

    <table class="table table-bordered" border='1' cellspacing='0' cellpadding='0' style="width:250px;">

      <tr>        


        
        <td><strong>Quote Number: </strong></td>
        <td>{{$order->order_number}}</td>
        </tr>
        <tr>
        <td><strong>Quote Date: </strong></td>
        <td>{{date('d-M-Y')}}</td></tr>
        <tr>
        <td><strong>Client: </strong></td>
        <td>{{$order->client->name}}</td>
        </tr>
        
      </tr>


      
      

     

    </table>
<br><br>

      <table class="table table-condensed table-bordered table-hover" border='1' cellspacing='0' cellpadding='0' >

    <tr>
        
        <td>Item</td>
        <td>Quantity</td>
        <td>Rate</td>
        <td>Amount</td>
        <td>Duration</td>
        <td>Total Amount</td>
       
    </tr>

 

   
        <?php $total = 0; ?>
        @foreach($order->erporderitems as $orderitem)

            <?php

            $amount = $orderitem['price'] * $orderitem['quantity'];
            $total_amount = $amount * $orderitem['duration'];
            $total = $total + $total_amount;
            ?>
        <tr>
          
            <td>{{$orderitem->item->name}}</td>
            <td>{{$orderitem['quantity']}}</td>
            <td>{{asMoney($orderitem['price'])}}</td>
            <td>{{asMoney($amount)}}</td>
            <td>{{$orderitem['duration']." ".$orderitem->item->duration.'s'}}</td>
            <td>{{asMoney($total_amount) }}</td>
            
        </tr>

        @endforeach

        <tr >
           
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>Total</td>
            <td>{{asMoney($total)}}</td>
          
        </tr>
    
        
    </table>

<br><br>

   <table class="table table-bordered" border="0" cellspacing='0' cellpadding='0'>

      <tr>
      <td width="80px">Approved by:</td>
      <td>.......................................................................</td>
      </tr>
      <tr>
      <td>Signature</td>
      <td>........................................................................</td>
    </tr>
    

   </table>
</div>


</body>

</html>



