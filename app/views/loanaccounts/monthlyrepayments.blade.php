@extends('layouts.ports')
@section('content')
<br><br>
@if(Session::has('alarm'))
  <div class="alert alert-info alert-dismissible fade in" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
    <strong>{{{ Session::get('alarm') }}}</strong>
  </div>
@endif
<div class="row col-md-6">
	<form method="post" action="{{URL::to('reports/monthlyrepayments')}}">
		<div class="col-md-12" style="margin-bottom: 4%;">
			<label for="username">Repayment Period </label>
			<input type="text" class="form-control datepicker2" placeholder="Loan Repayment Period" name="date" id="date" readonly>
		</div>
		<div class="col-md-12" style="margin-bottom: 4%;">
			<label for="username">Member Name</label>
			<select class="form-control selectable" name="member">
                <option value="">select member </option>
                <option>--------------------------</option>
                @foreach($loans as $loan)
                   <option value="{{$loan->id}}">{{ $loan->member->name }}</option>
                @endforeach
            </select>
		</div>
		<div class="col-md-12" style="margin-bottom: 4%;">
			<button class="btn btn-primary">View Repayment Report</button>
		</div>
	</form>
</div>
<div class="row">
	<div class="col-lg-12">
		<hr>
	</div>
</div>
@stop
