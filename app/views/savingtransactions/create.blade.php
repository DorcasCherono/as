@extends('layouts.main')
@section('content')
<br/>
<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
<style type="text/css">
    @media screen and (min-width: 768px) {
        .modal-dialog {
          width: 250px; /* New width for default modal */
        }
        .modal-sm {
          width: 250px; /* New width for small modal */
        }
    }
    @media screen and (min-width: 992px) {
        .modal-lg {
          width: 250px; /* New width for large modal */
        }
    }
</style>
<div class="row">
       @if(Session::has('existed'))
            <div class="alert alert-danger alert-dismissible fade in col-lg-8" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <strong>{{{ Session::get('existed') }}}</strong>
            </div>
       @endif
       @if(Session::has('ack'))
            <div class="alert alert-success alert-dismissible fade in col-lg-6 col-lg-offset-3" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                <strong>{{{ Session::get('ack') }}}</strong>
            </div>
       @endif
	<div class="col-lg-6">
        <?php
            $last=date('t');
            $leo=date('d');
        ?>
        <strong>Member: {{ $member->name }}</strong>
        @if($leo >=$last)
            &emsp;&emsp;&emsp;&emsp;&emsp;
            <button class="btn btn-danger " data-toggle="modal" data-target="#lateness">
                Charge Lateness
            </button>
        @endif
        <br>
        <strong>Member #: {{ $member->membership_no }}</strong><br>
        <strong>Savings Account #: {{ $savingaccount->account_number }}</strong><br>
        <strong>Account Balance #: {{ asMoney($balance) }}</strong><br>
        @if($balance > Savingtransaction::getWithdrawalCharge($savingaccount))
        <strong>
            Available Balance #: {{ asMoney($balance - Savingtransaction::getWithdrawalCharge($savingaccount)) }}
        </strong>
        @endif
        <hr>
    </div>
</div>
<div class="row">
	<div class="col-lg-4">
		 @if ($errors->has())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
        @endif
<form method="POST" action="{{{ URL::to('savingtransactions') }}}" accept-charset="UTF-8">
    <fieldset>
        <div class="form-group">
            <label for="username">Receipt # </label>
            <input class="form-control" type="text" name="receipt" id="receipt"
                   value="{{{ Input::old('receipt') }}}" required>
        </div>
        <div class="form-group">
            <label for="username">Transaction </label>
           <select name="type" class="form-control selectable" required>
            <option></option>
            <option value="credit"> Deposit</option>
            <option value="debit"> Withdraw</option>
           </select>
        </div>
         <input type="hidden" name="account_id" value="{{ $savingaccount->id}}">
        <div class="form-group">
            <label for="username"> Date</label>
            <div class="right-inner-addon ">
            <i class="glyphicon glyphicon-calendar"></i>
            <input class="form-control datepicker" readonly placeholder="" type="text" name="date" id="date" value="{{date('Y-m-d')}}" required>
        </div>
        </div>
        <div class="form-group">
            <label for="username"> Amount</label>
            <input class="form-control" placeholder="" type="text" name="amount" id="amount" value="{{{ Input::old('amount') }}}" required>
        </div>
         <div class="form-group">
            <label for="username"> Description</label>
            <textarea class="form-control" name="description">
                {{{ Input::old('description') }}}</textarea>
        </div>
         <div class="form-group">
             <!--
            <label for="username"> Transacted by</label>
             -->
            <input class="form-control" placeholder="" type="hidden" name="transacted_by" id="transacted_by" value="{{Confide::user()->username}}" required>
        </div>
        <div class="form-actions form-group">
          <button type="submit" class="btn btn-primary btn-sm">Submit</button>
        </div>
    </fieldset>
</form>
  </div>
</div>
<!-- Lateness Modal -->
<div class="modal fade" id="lateness" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">
            <strong>
                Charge Late Payment
            </strong>
          </h4>
      </div>
      <div class="modal-body">
        <form method="POST" action="{{{ URL::to('savingtransactions/lateness') }}}">
            <input type="hidden" name="account_id" value="{{ $savingaccount->id}}">
            <fieldset>
                <div class="form-group">
                    <label for="username"> Amount</label>
                    <input class="form-control" placeholder="" type="text" name="amount" id="amount" value="{{{ Input::old('amount') }}}" required>
                </div>
              </div>
              <div class="modal-footer">
                <div class="form-actions form-group">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Cancel</button>
                  <button type="submit" class="btn btn-primary btn-sm">Submit Charge</button>
                </div>
            </fieldset>
        </form>
      </div>
    </div>
  </div>
</div>

@stop
