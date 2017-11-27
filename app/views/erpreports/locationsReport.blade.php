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

            <img src="{{ '../images/logo.png' }}" alt="{{ $organization->logo }}" width="150px"/>
    
        </td>
        <td>&nbsp;</td>

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
   <div align="center"><strong>Stores List Report as at {{date('d-M-Y')}}</strong></div>

   <hr>

    <table class="table table-bordered" border='1' cellspacing='0' cellpadding='0'>

      <tr>
        


        <td width='20'><strong># </strong></td>
        <td><strong>Store Name</strong></td>
        <td><strong>Description </strong></td>
        
      </tr>
      <?php $i =1; ?>
      @foreach($locations as $location)
      <tr>


       <td td width='20' valign="top">{{$i}}</td>
        <td valign="top"> {{ $location->name }}</td>
        <td valign="top"> {{ $location->description }}</td>
        
        </tr>
      <?php $i++; ?>
   
    @endforeach

     

    </table>

<br><br>

   
</div>


</body>

</html>



