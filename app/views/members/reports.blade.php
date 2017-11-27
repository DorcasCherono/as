@extends('layouts.ports')
@section('content')
<br/>
<div class="row">
	<div class="col-lg-12">
  <h3> Member Reports</h3>
<hr>
</div>	
</div>
<div class="row">
	<div class="col-lg-12">
    <ul>
      <li>
        <a href="{{ URL::to('reports/listing') }}" target="_blank"> Members Listing</a>
      </li>
       <li>
        <a href="reports/remittance" target="_blank"> Monthly Remittance Schedule</a>
      </li>
      <li>
        <a href="reports/combined" target="_blank">Comprehensive Statement</a>
      </li>
      <li>
        <a href="reports/projects" target="_blank">Project Statements</a>
      </li>
      <li>
        <a href="reports/allotment" target="_blank">Allotment Certificates</a>
      </li>
      <li>
        <a href="reports/blank" target="_blank">Blank Template</a>
      </li>
       <li>
        <a href="reports/deduction">Monthly Deduction</a>
      </li>
    </ul>
  </div>
</div>
@stop