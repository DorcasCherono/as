<html>
  <head>     
   <style>
     @page { margin: 170px 30px; }
     .header { position: fixed; left: 0px; top: -150px; right: 0px; height: 150px;  text-align: center; }
     .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
     .footer .page:after { content: counter(page, upper-roman); }
     .content { margin-top: -70px;  }      
   </style>
  <body style="font-size:10px">
    <?php
    function asMoney($value) {
      return number_format($value, 2);
    }
    ?>
   <div class="header">
     <table >
      <tr>
        <td style="width:150px">
            <img src="{{ asset('../images/logo.png') }}" alt="{{ $organization->logo }}" width="150px"/>
        </td>
        <td>
        <strong>
          {{ strtoupper($organization->name)}}<br>
          </strong>
          {{ $organization->phone}} |s
          {{ $organization->email}} |
          {{ $organization->website}}<br>
          {{ $organization->address}}
        </td>
        <td>
          <strong><h3>MEMBER PROJECT STATEMENT </h3></strong>
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
   <div class="content">
      <table class="table table-bordered" style="width:60%">
          <tr>
            <td style="width:17%">Member</td><td>{{ucwords($member->name)}}</td>
          </tr>
          <tr>
            <td>Member #</td><td>{{ucwords($member->membership_no)}}</td>
          </tr>                  
      </table>
      <br><br>
      <table class="table table-bordered" style="width:100%">
          <tr style="font-weight:bold">
              <td>Date</td>
              <td>Project</td>
              <td>Units</td>
              <td>Unit Price</td> 
              <td>Amount</td>             
          </tr>
          <tbody>
          <?php
            $total=0;
          ?>
           @if(isset($projects))
            @foreach($projects as $project)
             <tr>
                <td>
                  <?php 
                   $date = date("d-M-Y", strtotime($project->date));
                  ?>
                  {{$date}}
                </td>
                <td>
                  {{$project_name=Project::where('id','=',$project->project_id)->pluck('name')}}
                </td>
                <td>{{$units=$project->units}}</td>
                <td>
                  {{asMoney($price=Project::where('id','=',$project->project_id)->pluck('unit_price'))}}
                </td> 
                <td>{{asMoney($amount=$units*$price)}}</td>
              </tr> 
              <?php
                $total+=$amount;
              ?>
              @endforeach
            @endif             
            <tr>            
              <td></td>              
              <td></td>
              <td></td> 
              <td style="border-top:2px solid black; font-weight:bold">Total Amount </td>             
              <td style="border-top:2px solid black; font-weight:bold">{{ asMoney($total)}}</td>
            </tr>
          </tbody>
      </table>
   </div>
 </body>
 </html>