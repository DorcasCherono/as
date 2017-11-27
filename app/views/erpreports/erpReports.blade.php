@extends('layouts.erp_ports')
@section('content')
<br/>





<div class="row">
    <div class="col-lg-12">
  <h3>Erp Reports</h3>

<hr>
</div>  
</div>


<div class="row">
    <div class="col-lg-12">

    <ul>

       <li>
            <a href="{{ URL::to('erpReports/clients') }}" target="_blank">Clients</a>
       </li>

       <li>
          <a href="{{ URL::to('erpReports/items') }}" target="_blank">Items</a>
       </li>

       <li>
          <a href="{{ URL::to('erpReports/expenses') }}" target="_blank">Expenses</a>
       </li>
    
       <li>
          <a href="{{ URL::to('erpReports/paymentmethods') }}" target="_blank">Payment Methods</a>
       </li>  

       <li>
         <a href="{{ URL::to('erpReports/payments') }}" target="_blank">Payments</a>     
       </li>

        <li>
         <a href="{{ URL::to('erpReports/locations') }}" target="_blank">Stores</a>     
       </li> 

        <li>
         <a href="{{ URL::to('erpReports/stock') }}" target="_blank">Stock report </a>     
       </li> 

       <li>
        <a href="reports/blank" target="_blank">Blank report template</a>
      </li>
    </ul>

  </div>

</div>

@stop