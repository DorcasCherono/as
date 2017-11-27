<html>
  <head>
    <title>INDIVIDUAL CREDIT APPRAISAL FORM</title>
   <style>
     @page {  margin: 120px 50px 80px 50px;   }
     .header { position: fixed;
    top: -110px;
    width: 100%;
    height: 116px;}
     .footer { position: fixed; bottom: -50px; height: 30px; }
     .footer .page:after { content: counter(page, upper-roman); }
     .content { margin-top: -70px;  }
   </style>
 </head>
  <body style="font-size:11px">
    <?php
      function asMoney($value) {
        return number_format($value, 2);
      }
    ?>
   <div class="header">
    <center>
       <h2 style="text-decoration: underline;">
          INDIVIDUAL CREDIT APPRAISAL FORM
       </h2>
    </center>
   </div>
   <div class="footer">
  <p class="page">Page <?php $PAGE_NUM ?></p>
   </div>
   <div class="content">
      <table cellpadding="5" style="width:100%;border-collapse: collapse;border:1px solid #999;">
      <thead style="background: #999;">
        <tr>
          <td style="font-weight: bold;text-align: center;">1</td>
          <td style="font-weight: bold;">ACCOUNT</td>
        </tr>
        </thead>
        <tr>
        <td style="border-right: 1px solid #999;"></td>
        <td>
        <table style="width:100%;">
          <thead style="border-bottom: 1px solid #999;">
            <tr>
              <td style="height:25px;">
                Member Name: <strong style="margin-right: 3%;">{{$member->name}}</strong>
                ID Number: <strong style="margin-right: 3%;">{{$member->id_number}}</strong>
                Phone Number: <strong style="margin-right: 3%;">{{$member->phone}}</strong>
              </td>
            </tr>
          </thead>
          <thead style="border-bottom: 1px solid #999;">
          <tr>
            <td style="height:25px;">
              Savings Acc: <strong style="margin-right: 3%;">{{$savingaccount}}</strong>
              Total Savings: &nbsp;<strong style="margin-right: 3%;">{{asMoney($savings)}}</strong>
              Shares Acc: <strong style="margin-right: 3%;">
                          @if($shareaccount=='')
                            {{$shareaccount='NNNNNNNNNNN'}}
                          @else
                            {{$shareaccount}}
                          @endif
                          </strong>
              Total Shares: &nbsp;<strong style="margin-right: 3%;">{{asMoney($shares)}}</strong>
            </td>
          </tr>
          </thead>
          <thead style="border-bottom: 1px solid #999;">
          <tr>
            <td style="height:25px;">
              Loan Amount: <strong style="margin-right: 5%;">
                              {{asMoney($currentloan->amount_applied)}}
                            </strong>
              Loan Period: &nbsp;<strong style="margin-right: 5%;">
                              {{$currentloan->repayment_duration}} Months
                              </strong>
              Interest Rate: <strong style="margin-right: 5%;">
                              {{$currentloan->interest_rate}} % Monthly
                             </strong>
              Date Applied: <strong style="margin-right: 3%;">
                              {{date('d-F-Y',strtotime($currentloan->application_date))}}
                             </strong>
            </td>
          </tr>
          </thead>
          <tr>
            <td style="height: 20px;"><strong>Comment of the Loan Officer</strong></td>
          </tr>
        </table>
        </td>
        </tr>
        <thead style="background: #999;">
        <tr>
          <td style="font-weight: bold;text-align: center;">2</td>
          <td style="font-weight: bold;">CREDIT HISTORY</td>
        </tr>
        </thead>
        <tr>
        <td style="border-right: 1px solid #999;"></td>
        <td>
        <table style="width:100%;border-right: 1px solid #999;
        border-left: 1px solid #999;border-top: 1px solid #999;">
          <thead style="border-bottom: 1px solid #999;">
            <tr>
              <th style="border-right: 1px solid #999;">Loan No.</th>
              <th style="border-right: 1px solid #999;">Date Applied</th>
              <th style="border-right: 1px solid #999;">Amount Granted</th>
              <th style="border-right: 1px solid #999;">Total Periods</th>
              <th style="border-right: 1px solid #999;">Period Repaid</th>
              <th style="text-align: left;">Repayment Performance</th>
            </tr>
          </thead>
          @foreach($loans as $loan)
          <thead style="border-bottom: 1px solid #999;">
          <tr>
            <td style="border-right: 1px solid #999;text-align: center;">
              {{$loan->id}}
            </td>
            <td style="border-right: 1px solid #999;text-align: center;">
              {{date('d-F-Y',strtotime($loan->application_date))}}
            </td>
            <td style="border-right: 1px solid #999;text-align: center;">
              {{asMoney($loan->amount_disbursed)}}
            </td>
            <td style="border-right: 1px solid #999;text-align: center;">
              {{$loan->repayment_duration}}
            </td>
              <?php
                $period=$loan->repayment_duration;
                $id=$loan->id;
                $repaid=DB::table('loanrepayments')->where('loanaccount_id','=',$id)->count();
                $periodsrepaid=$repaid/2;
                $percent=asMoney(($periodsrepaid/$period)*100);
              ?>
            <td style="border-right: 1px solid #999;text-align: center;">
              {{$periodsrepaid}}
            </td>
            <td>
              @if($percent<25)
              {{$percent}} % paid <strong>POOR</strong>
              @elseif($percent>=25 && $percent<50)
               {{$percent}} % paid <strong>FAIR</strong>
              @elseif($percent>=50 && $percent<76)
               {{$percent}} % paid <strong>GOOD</strong>
              @elseif($percent>=76 && $percent<=100)
               {{$percent}} % paid <strong>EXCELLENT</strong>
              @else
                <strong>NOT APPLICABLE/OVER PAID</strong>
              @endif

            </td>
          </tr>
          </thead>
          @endforeach
        </table>
        </td>
        </tr>
        <thead style="background: #999;">
        <tr>
          <td style="font-weight: bold;text-align: center;">3</td>
          <td style="font-weight: bold;">OTHER ECONOMIC INFORMATION</td>
        </tr>
        </thead>
        <tr>
        <td style="border-right: 1px solid #999;"></td>
        <td>
        <table style="width:100%;border-right: 1px solid #999;border-left: 1px solid #999;
                border-top: 1px solid #999;">
          <thead style="border-bottom: 1px solid #999;">
            <tr>
              <th style="border-right: 1px solid #999;text-align: center;">INCOME</th>
              <th style="text-align: center;">EXPENSES</th>
            </tr>
          </thead>
          <thead style="border-bottom: 1px solid #999;">
          <tr>
            <td>
              <table style="width:100%;border-right: 1px solid #999;border-left: 1px solid #999;
                border-top: 1px solid #999;">
               <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <th  style="border-right: 1px solid #999;text-align: left;">
                    OTHER ECONOMIC ACTIVITIES
                  </th>
                  <th style="text-align: left;">
                    AMOUNT(KSHS.)
                  </th>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">NET SALARY</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">FARMING</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">BUSINESS</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">OTHERS</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;""><strong>TOTAL</strong></td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
              </table>
            </td>
            <td>
               <table style="width:100%;border-right: 1px solid #999;border-left: 1px solid #999;
                border-top: 1px solid #999;">
               <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <th  style="border-right: 1px solid #999;text-align: left;">
                    DESCRIPTION
                  </th>
                 <th style="text-align: left;">
                    AMOUNT(KSHS.)
                  </th>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;"">RENT</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">WATER/PHONE/ELECTRICITY</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">TRANSPORT</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">EDUCATION/MEDICAL</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">OTHERS/ENTERTAINMENT</td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;"><strong>TOTAL</strong></td>
                  <td style="text-align: center;"></td>
                </tr>
                </thead>
              </table>
            </td>
          </tr>
          </thead>
          <thead style="border-bottom: 1px solid #999;">
          <tr>
            <td style="text-align: center;" colspan="2"><strong>NET SURPLUS/ DEFICIT KSHS.</strong></td>
          </tr>
          </thead>
          <thead style="border-bottom: 1px solid #999;">
          <tr>
            <td colspan="2">

              <strong>NB**.</strong> SUPPLY COPY OF RECEIPTS OR STATEMENTS WHERE APPLICABLE

            </td>
          </tr>
          </thead>
          <thead style="border-bottom: 1px solid #999;">
          <tr>
             <td style="height:50px;" colspan="2"><strong>Comments of the Appraisal/Loan Officer</strong></td>
             </tr>
          </thead>
        </table>
        </td>
        </tr>
        <thead style="background: #999;">
        <tr>
          <td style="font-weight: bold;text-align: center;">4</td>
          <td style="font-weight: bold;">RECOMMENDATION</td>
        </tr>
        </thead>
        <tr>
        <td style="border-right: 1px solid #999;"></td>
        <td>
        <table style="width:100%;border-right: 1px solid #999;border-left: 1px solid #999;
                border-top: 1px solid #999;">
               <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <th  style="border-right: 1px solid #999;text-align: left;">

                  </th>
                  <th  style="border-right: 1px solid #999;text-align: left;">
                    CREDIT OFFICER
                  </th>
                 <th style="text-align: left;">
                    BRANCH CREDIT COMMITTEE
                  </th>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;"">LOAN AMOUNT</td>
                  <td style="text-align: center;border-right: 1px solid #999;"></td>
                  <td style="text-align:center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">LOAN PERIOD</td>
                  <td style="text-align: center;border-right: 1px solid #999;"></td>
                  <td style="text-align:center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">PAYMENT FREQUENCY</td>
                  <td style="text-align: center;border-right: 1px solid #999;"></td>
                  <td style="text-align:center;"></td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">REPAYMENT AMOUNT</td>
                  <td style="text-align: center;border-right: 1px solid #999;"></td>
                  <td>
                      Approved&nbsp;<input type="checkbox" name="approved">
                      Rejected&nbsp;&nbsp;&nbsp;<input type="checkbox" name="rejected">
                  </td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td colspan="3">-------------</td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td style="border-right: 1px solid #999;">CREDIT OFFICER</td>
                  <td style="text-align: left;border-right: 1px solid #999;">SIGNATURE</td>
                  <td>DATE</td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td colspan="3"><strong>BRANCH CREDIT COMMITTEE</strong></td>
                </tr>
                </thead>
                <thead>
                <tr>
                  <td colspan="3" style="height: 50px;">COMMENTS</td>
                </tr>
                </thead>
                <thead style="border-bottom: 1px solid #999;">
                <tr>
                  <td colspan="3">
                     <table style="width:100%;border-right: 1px solid #999;border-left: 1px solid #999;border-top: 1px solid #999;">
                      <thead style="border-bottom: 1px solid #999;">
                        <tr>
                          <th  style="border-right: 1px solid #999;text-align: left;">
                            NAME
                          </th>
                          <th  style="border-right: 1px solid #999;text-align: left;">
                            SIGNATURE
                          </th>
                         <th style="text-align: left;">
                            DATE
                          </th>
                        </tr>
                      </thead>
                      <thead style="border-bottom: 1px solid #999;">
                        <tr>
                          <td  style="border-right: 1px solid #999;text-align: left;">
                            1
                          </td>
                          <td  style="border-right: 1px solid #999;text-align: left;">

                          </td>
                         <td style="text-align: left;">

                          </td>
                        </tr>
                      </thead>
                      <thead style="border-bottom: 1px solid #999;">
                        <tr>
                          <td  style="border-right: 1px solid #999;text-align: left;">
                            2
                          </td>
                          <td  style="border-right: 1px solid #999;text-align: left;">

                          </td>
                         <td style="text-align: left;">

                          </td>
                        </tr>
                      </thead>
                      <thead style="border-bottom: 1px solid #999;">
                        <tr>
                          <td  style="border-right: 1px solid #999;text-align: left;">
                            3
                          </td>
                          <td  style="border-right: 1px solid #999;text-align: left;">

                          </td>
                         <td style="text-align: left;">

                          </td>
                        </tr>
                      </thead>
                      <thead>
                        <tr>
                          <td  style="border-right: 1px solid #999;text-align: left;">
                            4
                          </td>
                          <td  style="border-right: 1px solid #999;text-align: left;">

                          </td>
                          <td style="text-align: left;">

                          </td>
                        </tr>
                      </thead>
                     </table>
                  </td>
                </tr>
                </thead>
              </table>
            </td>
          </tr>
        </table>
        </td>
        </tr>
      </table>
   </div>
 </body>
 </html>
