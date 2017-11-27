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
            SACCO MEMBERS CONTRIBUTIONS
           </strong>
        </th>
      </tr>
    </table>
    <br><br><br>
      <table  border="1">
          <tr style="font-weight:bold;">
              <th style="height: 30px;width:30px;text-align:center;">#</th>
              <th style="height: 30px;text-align:center;">Member</th>
              <th style="height: 30px;text-align:center;">Member #</th>
              <th style="height: 30px;text-align:center;">Total Contributions</th>
              <th style="height: 30px;text-align:center;">Accrued Dividends</th>
          </tr>
          <tbody>
           <?php $i =1; ?>
            @foreach($members as $member)
             <tr>
                <td style="height: 30px;width:30px;text-align:center;">{{$i}}</td>
                <td style="height: 30px;text-align:center;">{{ucwords($member->name)}}</td>
                <td style="height: 30px;text-align:center;">{{ucwords($member->membership_no)}}</td>
                <?php
                  $contributions=Savingtransaction::where('savingaccount_id','=',$member->id)
                          ->where('type','=', 'credit')->whereBetween('date',array($fromDate,$toDate))->sum('amount');
                ?>
                <td style="height: 30px;text-align:center;">{{asMoney($contributions)}}</td>
                <td style="height: 30px;text-align:center;">{{asMoney($contributions/40)}}</td>
              </tr>
               <?php $i++; ?>
            @endforeach
          </tbody>
      </table>
 </body>
 </html>
