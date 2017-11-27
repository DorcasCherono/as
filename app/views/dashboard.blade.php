@extends('layouts.main')
@section('content')
<style>
  .main_dashboard{
      background-image: url({{ URL::asset('site/img/slides/bg/001.jpg') }});
      height: 70%;
      text-align: center;
      background-position: center center;
  }
  .main_dashboard img{
      /*width: 50%;*/
      position: relative;
      top: 50%;
      transform: translateY(-50%);
      color: #E7E7E7;
  }
    @media screen and (min-width: 768px) {
        .modal-dialog {
          width: 320px; /* New width for default modal */
        }
        .modal-sm {
          width: 320px; /* New width for small modal */
        }
    }
    @media screen and (min-width: 992px) {
        .modal-lg {
          width: 320px; /* New width for large modal */
        }
    }
</style>
<div class="row">
    <div class="col-lg-12" style="margin-top: -12%;">
	<div class="main_dashboard">
	    <img src="{{ URL::asset('site/img/xara.jpg') }}" width="50%" alt="Xara Financials">      
      <div class="col-lg-12">
          @if(Session::has('notice2'))
      <div class="alert alert-danger alert-dismissible fade in" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <strong>{{{ Session::get('notice2')}}}</strong> 
      </div>      
    @endif  
    @if(Session::get('notice'))
            <div class="alert">{{{ Session::get('notice') }}}</div>
        @endif
  <div class="panel panel-success">
      <div class="panel-heading">
          <h4>{{{ Lang::get('messages.members') }}}</h4>
        </div>
      <div class="panel-body table-responsive">
    <table id="users" class="table table-condensed table-bordered table-responsive table-hover">
      <thead>
        <th>#</th>
        <th>Member Number</th>
        <th>Member Name</th>
        <th>Branch Name</th>
        <th>Phone Number</th>
        <th>ID Number</th>
        <th></th>
        <th></th>
        <th></th>
          <!--
        <th></th>
          -->
        <th></th>
      </thead>
      <tbody>
        <?php $i = 1; ?>
        @foreach($members as $member)
        <tr>
          <td> {{ $i }}</td>
          <td>{{ $member->membership_no }}</td>
          <td>{{ $member->name }}</td>
          <td>{{ $member->branch->name }}</td>
          <td>{{ $member->phone }}</td>
          <td>{{ $member->id_number }}</td>
          <td>
             <a href="{{ URL::to('member/savingaccounts/'.$member->id) }}" class="btn btn-info btn-sm">
                 Share Deposits
             </a>
           </td>
            <td>
             <a href="{{ URL::to('loanapplication/form_sale/'.$member->id) }}" class="btn btn-info btn-sm">
                 Form Sale
             </a> 
           </td>
           <td>
              <a href="{{  URL::to('members/loanaccounts/'.$member->id) }}" class="btn btn-info btn-sm">
                  {{{ Lang::get('messages.loans') }}}
              </a>
            </td>
            <!--
            <td>
             <a href="{{ URL::to('sharetransactions/show/'.$member->shareaccount->id) }}" class="btn btn-info btn-sm">
                 {{{ Lang::get('messages.shares') }}}
            </a>
            </td>
            -->
            <td>
             <a href="{{ URL::to('members/show/'.$member->id) }}" class="btn btn-info btn-sm">
                 {{{ Lang::get('messages.manage') }}}
            </a>
            </td>
        </tr>
        <?php $i++; ?>
        @endforeach
      </tbody>
    </table>
</div>
</div>
	</div>
    </div>
</div>
<!-- Form Sale Modal -->
<div class="modal fade" id="formSale" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Member Form Sale</h4>
      </div>
      <div class="modal-body">
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
              </div>
              <div class="modal-footer">        
                <div class="form-actions form-group">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">
                        Close
                    </button>
                    <button type="submit" class="btn btn-primary btn-sm">
                      Submit Payment
                    </button>
                </div>
            </fieldset>
        </form>
      </div>
    </div>
  </div>
</div>
@stop
