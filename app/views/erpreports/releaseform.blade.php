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

            <img src="{{ '../images/logo.png' }}" alt="{{ $organization->logo }}" width="150px"/>
    
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
   <div align="center"><strong>Release Form</strong></div>

    <table class="table table-bordered" border='1' cellspacing='0' cellpadding='0'>

      <tr>        


        
        <td><strong>Order Number: </strong></td>
        <td>{{$order->order_number}}</td>
        </tr>
        <tr>
        <td><strong>Order Date: </strong></td>
        <td>{{$order->date}}</td></tr>
        <tr>
        <td><strong>Client: </strong></td>
        <td>{{$order->client->name}}</td>
        </tr>
        
      </tr>


      
      

     

    </table>
<br><br>

    <table class="table table-bordered" border="1" cellspacing='0' cellpadding='0'>

    <tr>
      <td>Item</td>
      <td>Quantity</td>
      <td>Location</td>
      <td>Condition</td>
    </tr>

    <?php $i =1; ?>
      @foreach($order->erporderitems as $item)
      <tr>
      <td>{{$item->item->name}}</td>
      <td>{{$item->quantity}}</td>


        <td></td>
        <td></td>
        

      </tr>
      @endforeach
      
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
    <tr>
      <td>Release Date</td>
      <td>........................................................................</td>
    </tr>

   </table>
</div>


</body>

</html>



