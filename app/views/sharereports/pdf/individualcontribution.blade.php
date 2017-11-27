<?php
function asMoney($value) {
  return number_format($value, 2);
}
?>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body style="font-size: 12px;">
     <table>
      <tr>
        <th style="width:150px">
             <img src="{{ asset('public/uploads/logo/'.$organization->logo ) }}" alt="{{ $organization->logo }}" width="150px" height="150px"/>
        </th>
        <th>
        <strong>
          {{ strtoupper($organization->name)}}<br>
          </strong>
          {{ $organization->phone}}<br>
          &nbsp; {{ $organization->email}} <br>
          &nbsp; {{ $organization->website}}<br>
          &nbsp; {{ $organization->address}}
        </th>
        <th>
          <strong>
            MEMBER CONTRIBUTION
           </strong>
        </th>
      </tr>
    </table>
    <br><br><br>
      <table>
          <tr>
            <th style="height: 30px;">Member: &nbsp;{{ucwords($member->name)}}</th>
          </tr>
          <tr>
            <th style="height: 30px;">Member #:&nbsp;{{ucwords($member->membership_no)}}</th>
          </tr>
          <tr>
            <th style="height: 30px;">Total Contributions:&nbsp;{{asMoney($contributions)}}</th>
          </tr>
          <tr>
            <th style="height: 30px;">Total Shares: &nbsp;{{asMoney($contributions)}}</th>
          </tr>
          <tr>
            <th style="height: 30px;">Accrued Dividends:&nbsp;{{asMoney($contributions/40)}}</th>
          </tr>
      </table>
      <br><br>
      <table border="1">
          <tr style="font-weight:bold">
              <th style="height: 30px;text-align:center;">Date</th>
              <th style="height: 30px;text-align:center;">Amount</th>
              <th style="height: 30px;text-align:center;">Type</th>
              <th style="height: 30px;text-align:center;">Description</th>
          </tr>
          <tbody>
          <?php
            $total=0;
          ?>
            @foreach($transactions as $transact)
             <tr>
                <td style="height: 30px;text-align:center;">
                  <?php
                   $date = date("d-M-Y", strtotime($transact->date));
                  ?>
                  {{$date}}
                </td>
                <td style="height: 30px;text-align:center;">{{asMoney($amount=$transact->amount)}}</td>
                <td style="height: 30px;text-align:center;">{{$transact->type}}</td>
                <td style="height: 30px;text-align:center;">{{$transact->description}}</td>
              </tr>
              <?php
                $total+=$amount;
              ?>
              @endforeach
          </tbody>
      </table>
      <br><br>
        <p>
          <strong>
              Total Contributions: &nbsp; {{ asMoney($total)}}
          </strong>
        </p>
   </div>
 </body>
 </html>
