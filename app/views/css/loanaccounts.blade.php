@extends('layouts.membercss')
@section('content')
<br/>
<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
<div class="row">
  <div class="col-lg-12">
  <h3> Loan Accounts</h3>
  <hr>
</div>  
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-heading">
          <a class="btn btn-info btn-sm" href="{{ URL::to('loans/application/'.$member->id)}}">New Loan Application</a>
        </div>
        <div class="panel-body">
  
      <table id="users" class="table table-condensed table-bordered table-responsive table-hover">


      <thead>

        <th>#</th>
        <th>Loan Type</th>
        
      
        <th>Loan Amount</th>
        <th>Status </th>
    

        <th></th>

      </thead>
      <tbody>

        <?php $i = 1; ?>
        @foreach($member->loanaccounts as $loan)

        
        <tr>

          <td> {{ $i }}</td>
          <td>{{ $loan->loanproduct->name }} - {{$loan->loan_purpose}}</td>
          
         
          <td>{{ asMoney($loan->amount_applied) }}</td>
          <td>

            @if($loan->is_new_application == true)
              new application 
            @endif
            
            @if($loan->is_approved)
              approved 
            @endif

            @if($loan->is_rejected)
              rejected 
            @endif

            @if($loan->is_disbursed)
              disbursed 
            @endif

            @if($loan->is_amended)
               amended 
            @endif

            </td>
          
          <td>
            <!-- @if($loan->is_disbursed)
             <a href="{{ URL::to('memloans/'.$loan->id) }}" class="btn btn-info btn-sm">Manage</a>
             @endif -->

             <div class="btn-group">
                  <button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    Action <span class="caret"></span>
                  </button>
          
                  <ul class="dropdown-menu" role="menu">
                    @if($loan->is_disbursed)
                    <li><a href="{{URL::to('memloans/'.$loan->id)}}">View</a></li>
                    @endif
                    <li><a target="blank" href="{{URL::to('loanapplication/form/'.$loan->id)}}">Loan Application Form</a></li>
                    
                  </ul>
              </div>

          </td>
                    

        </tr>

        <?php $i++; ?>

        
        @endforeach


      </tbody>


    </table>
  </div>


  </div>

</div>
























@stop