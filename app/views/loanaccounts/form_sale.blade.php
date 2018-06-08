@extends('layouts.loans')
@section('content')
<br/>
    <div class="row">
        <div class="col-lg-12">
          <h3>Application Form Sale</h3>
         <hr>
        </div>	
    </div>
<div class="row">
  <div class="col-lg-5">
    <form method="POST" action="{{{URL::to('member/formsale')}}}">   
        <fieldset>
            <input type="hidden" name="member" value="{{$member->id}}"/>
            <div class="form-group">
                <label>Amount </label>
                <input class="form-control" placeholder="" type="text" name="amount" id="amount" required>
            </div>
            <div class="form-group">
                <label>Income Account </label>
                <select class="form-control selectable" name="account" required>
                    <option value="">--Choose an Account--</option>
                    @foreach($accounts as $account)
                        <option value="{{$account->id}}">
                            {{$account->name}}
                        </option>
                    @endforeach
                </select>
            </div>         
            <div class="form-actions form-group">
                <button type="submit" class="btn btn-primary btn-sm">
                  Submit Payment
                </button>
            </div>
        </fieldset>
    </form>
  </div>
</div>
@stop