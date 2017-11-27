
<?php

if (!function_exists('asMoney')) {
function asMoney($value) {
  return number_format($value, 2);
}
}

function addDayswithdate($date,$days){

    $date = strtotime("+".$days." days", strtotime($date));
    return  date("M jS, Y", $date);

}

if (!function_exists('convert_number_to_words')) {
function convert_number_to_words($number) {

    $hyphen      = '-';
    $conjunction = ' and ';
    $separator   = ', ';
    $negative    = 'negative ';
    $decimal     = ' point ';
    $dictionary  = array(
        0                   => 'zero',
        1                   => 'one',
        2                   => 'two',
        3                   => 'three',
        4                   => 'four',
        5                   => 'five',
        6                   => 'six',
        7                   => 'seven',
        8                   => 'eight',
        9                   => 'nine',
        10                  => 'ten',
        11                  => 'eleven',
        12                  => 'twelve',
        13                  => 'thirteen',
        14                  => 'fourteen',
        15                  => 'fifteen',
        16                  => 'sixteen',
        17                  => 'seventeen',
        18                  => 'eighteen',
        19                  => 'nineteen',
        20                  => 'twenty',
        30                  => 'thirty',
        40                  => 'fourty',
        50                  => 'fifty',
        60                  => 'sixty',
        70                  => 'seventy',
        80                  => 'eighty',
        90                  => 'ninety',
        100                 => 'hundred',
        1000                => 'thousand',
        1000000             => 'million',
        1000000000          => 'billion',
        1000000000000       => 'trillion',
        1000000000000000    => 'quadrillion',
        1000000000000000000 => 'quintillion'
    );

    if (!is_numeric($number)) {
        return false;
    }

    if (($number >= 0 && (int) $number < 0) || (int) $number < 0 - PHP_INT_MAX) {
        // overflow
        trigger_error(
            'convert_number_to_words only accepts numbers between -' . PHP_INT_MAX . ' and ' . PHP_INT_MAX,
            E_USER_WARNING
        );
        return false;
    }

    if ($number < 0) {
        return $negative . convert_number_to_words(abs($number));
    }

    $string = $fraction = null;

    if (strpos($number, '.') !== false) {
        list($number, $fraction) = explode('.', $number);
    }

    switch (true) {
        case $number < 21:
            $string = $dictionary[$number];
            break;
        case $number < 100:
            $tens   = ((int) ($number / 10)) * 10;
            $units  = $number % 10;
            $string = $dictionary[$tens];
            if ($units) {
                $string .= $hyphen . $dictionary[$units];
            }
            break;
        case $number < 1000:
            $hundreds  = $number / 100;
            $remainder = $number % 100;
            $string = $dictionary[$hundreds] . ' ' . $dictionary[100];
            if ($remainder) {
                $string .= $conjunction . convert_number_to_words($remainder);
            }
            break;
        default:
            $baseUnit = pow(1000, floor(log($number, 1000)));
            $numBaseUnits = (int) ($number / $baseUnit);
            $remainder = $number % $baseUnit;
            $string = convert_number_to_words($numBaseUnits) . ' ' . $dictionary[$baseUnit];
            if ($remainder) {
                $string .= $remainder < 100 ? $conjunction : $separator;
                $string .= convert_number_to_words($remainder);
            }
            break;
    }

    if (null !== $fraction && is_numeric($fraction)) {
        $string .= $decimal;
        $words = array();
        foreach (str_split((string) $fraction) as $number) {
            $words[] = $dictionary[$number];
        }
        $string .= implode(' ', $words);
    }

    return $string;
}
}
?>
<html>
  <head>
   <style type="text/css">

   #underline
{
    margin-top:0;
    margin-left:0;
    width:100%;
    border-top: 1px dotted #000;
}

u {    
    border-bottom: 1px dotted #000;
    text-decoration: none;
    width:100%;
}

#s {    
    border-bottom: 1px solid #000;
    text-decoration: none;
    width:100%;
}

table {
  max-width: 100%;
  background-color: transparent;
  margin-bottom: 2px;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  margin-bottom: 2px;
}
hr {
  margin-top: 1px;
  margin-bottom: 2px;
  border: 0;
  border-top: 2px dotted #eee;
}

body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 12px;
  line-height: 1.428571429;
  color: #333;
  background-color: #fff;
  margin: 0px
}

label {
  display: block;
  padding-left: 15px;
  margin-left: 15px;
  text-indent: -15px;
}
input {
  width: 13px;
  height: 13px;
  padding: 0;
  margin-left:20px;
  vertical-align: bottom;
  position: relative;
  top: -1px;
  *overflow: hidden;
}

@page { margin: 32px; }
     .header { position: top; left: 0px; top: -150px; right: 0px; height: 150px;  text-align: center; }
     .footer { position: fixed; left: 0px; bottom: -180px; right: 0px; height: 50px;  }
     .footer .page:after { content: counter(page, upper-roman); }

</style>
  <body>   
   <div class="footer">
     <p class="page">Page <?php $PAGE_NUM ?></p>
   </div>
   <div class="content" style="margin-top:0px">
    <table >
      <tr>
        <td style="width:150px">
            <img src="{{ asset('../images/logo.png') }}" alt="{{ $organization->logo }}" width="150px"/>    
        </td>
        <td>
        <strong>
          {{ strtoupper($organization->name)}}<br>
          </strong>
          {{ $organization->phone}} |
          {{ $organization->email}} |
          {{ $organization->website}}<br>
          {{ $organization->address}}
       

        </td>
        
        

      </tr>


      <tr>

        <hr>
      </tr>



    </table>

    <table >
    <tr>
    <td width="400" align="center"><h2>MOTO LOAN APPLICATION FORM</h2></td> <td>LOAN No :</td><td> {{$transaction->account_number}}<hr id='underline' /></td>
    </tr>
    </table>
    <table class="table table-bordered">
      <tr>
      <td colspan="2"> <p>Important: LOAN APPLICATION FORM SHOULD BE SUBMITTED AND RECEIVED ON THE SOCIETY`S OFFICE ON OR BEFORE THE 10TH DAY OF THE MONTH. LATE APPLICATION WILL BE CONSIDERED IN THE SUCCEEDING MONTH. ATTACH THE LATEST 2 PAYSLIPS.</p></td>
      </tr>
      <tr>
        <td><strong><u id="s">1. To be completed by the participant</u></strong></td>
        </tr>      
      <tr>
      <td colspan="2"> <p>I, Mr./Mrs./Miss <u>{{ $transaction->member->name}}</u> hereby apply for a loan of Ksh. <u>{{asMoney($transaction->amount_applied,2)}}</u> shillings <u>{{convert_number_to_words($transaction->amount_applied)}} kenyan shillings only</u> to be repaid in <u>{{$transaction->Period}}</u> months
      instalments at Kshs. <u>{{asMoney($transaction->amount_applied/$transaction->period,2)}}</u> per month w.e.f. <u>{{addDayswithdate($transaction->application_date,30)}}</u> the purpose of the loan is (in case of several uses of the loan; state the exact amount of each use).<br>
      @if(count($purposes) == 0)
      a)........................................................................................&nbsp;&nbsp;&nbsp; Kshs. ....................................................................................<br>
      b)........................................................................................&nbsp;&nbsp;&nbsp; Kshs. ....................................................................................<br>
      c)........................................................................................&nbsp;&nbsp;&nbsp; Kshs. ....................................................................................<br>
      </p></td></tr>
       @else
      <?php $i=1;
            $alphabet = range('a', 'z');
      ?>
      @foreach($purposes as $purpose)
      <tr><td>{{$alphabet[$i-1].') '.$purpose->purpose}}<hr id='underline' /></td>
      <td>Kshs. {{asMoney($purpose->amount)}}<hr id='underline' /></td></tr>
      <?php $i++; ?>
      @endforeach
      @endif 

      <tr>
      <td colspan="2"> <p>
      I am offering the following security for the loan:- (e.g. Guarantors, Society Deposit Final Dues etc.)<br>
      @if(count($securities) == 0)

      1. .......................................................................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. .................................................................................<br>
      3. .......................................................................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. .................................................................................<br>
      </p></td></tr>
       @else
      <?php $i=1;?>
      @foreach($securities as $security)
      <tr><td colspan="2">{{$i.') '.$security->name}}<hr id='underline' /></td></tr>
      <?php $i++; ?>
      @endforeach
      @endif 
     
      </table>
      <br>
      <table class="table table-bordered">
      <tr>
      <td colspan="2">My personal information is :-</td>
      </tr>
      <tr>
      
      <td width="260">a)&nbsp;&nbsp;Name in full&nbsp; <u>{{$transaction->member->name}}</u></td><td>ID No.&nbsp;
       @if($transaction->member->id_number != null)
       <u>{{$transaction->member->id_number}}</u>
       @else
       ..................................................
       @endif
     </td>
      
      </tr>
      <tr>
      
      <td width="260">b)&nbsp;&nbsp;Department &nbsp;
        @if($transaction->member->department_id != null || $transaction->member->department_id != 0)
        <u>{{$transaction->member->department->name}}</u>
        @else
        ..................................................
        @endif
      </td><td>c)&nbsp;&nbsp;Term of service &nbsp;
      @if($transaction->member->term_of_service != null)
        <u>{{$transaction->member->term_of_service}}</u>
        @else
      ......................................................
        @endif
    </td>
      
      </tr>

      <tr>
      
      <td width="260">d)&nbsp;&nbsp;Payroll/Est/Personal No. 
        &nbsp;
        @if($transaction->member->payroll_no != null)
        <u>{{$transaction->member->payroll_no}}</u>
        @else
        ..............................
        @endif
      </td><td>e)&nbsp;&nbsp;Membership Number <u>{{$transaction->member->membership_no}}</u></td>
      
      </tr>

      <tr>
      
      <td width="260">f)&nbsp;&nbsp;Position in Employment 
         &nbsp;
        @if($transaction->member->position_in_employment != null)
        <u>{{$transaction->member->position_in_employment}}</u>
        @else
        ................................
        @endif
      </td><td>g)&nbsp;&nbsp;Position in Society 
      &nbsp;
        @if($transaction->member->position_in_society != null)
        <u>{{$transaction->member->position_in_society}}</u>
        @else
      ...................................................
        @endif
    </td>      
      </tr>
      <tr>      
      <td width="260">h)&nbsp;&nbsp;Present Net Income per month 
         &nbsp;
        @if($transaction->member->net_income != null)
        <u>{{$transaction->member->net_income}}</u>
        @else
        ....................
        @endif
      </td><td>i)&nbsp;&nbsp;Monthly Expenditure Kshs. 
        &nbsp;
        @if($transaction->member->monthly_expenditure != null)
        <u>{{$transaction->member->monthly_expenditure}}</u>
        @else
        .......................................
        @endif
      </td>      
      </tr>      
      <tr>      
      <td colspan="2">j)&nbsp;&nbsp;Do you have a bank account? Yes/No. Bank
        @if($transaction->member->bank_id == 0)
        ...............................................................
        @else
        <u>{{$transaction->member->bank->bank_name}}</u>
        @endif
        A/C No. &nbsp;
        @if($transaction->member->bank_account_number != null)
        <u>{{$transaction->member->bank_account_number}}</u>
        @else
        .......................................
        @endif
      </td>
      
      </tr>

     <tr>
      
      <td colspan="2">k)&nbsp;&nbsp;Date of enrolment with society &nbsp;
        @if($transaction->member->enrollment_date != null)
        <u>{{$transaction->member->enrollment_date}}</u>
        @else
        ........................
        @endif
         
        @if(count($kin) == 0)
        Next of kin...........................................Relationship:................................
        @else
        <u>{{'Next of kin '.$kin->name}}</u> Relationship <u>{{$kin->rship}}</u>
        @endif
      </td>
      
      </tr>

      <tr>
      
      <td colspan="2">l)&nbsp;&nbsp;Total deposits contribution to date: &nbsp;
        <u>{{asMoney($amount_to_date,2)}}</u>
      </tr>

      <?php

      ?>

      <tr>
      
      <td colspan="2">m)&nbsp;&nbsp;Balance of previous Loan granted(if any) 
        &nbsp;
        <u>{{asMoney($balance_to_date,2)}}</u>
      </tr>

      <tr>
      
      <td colspan="2">n)&nbsp;&nbsp;
        @if($transaction->member->date_of_birth != null)
        
        <?php $dob = $transaction->member->date_of_birth; 
              $part = explode("-", $dob);
              $day = $part[2];
              $month = $part[1];
              $year = $part[0];
              $age = date('Y')-$year;
        ?>
       <u>Date of birth: {{$day}}</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>month {{$month}}</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Year {{$year}}</u>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Age {{$age}}</u>
        @else
        Date of birth: &nbsp;
        .............................................month .....................................Year................................Age..........................</td>
        @endif
      </tr>

      <tr>
      <td colspan="2"> <p>I hereby declare that the foregoing particulars are true to the best of my knowledge and belief to abide by the by-laws of the Society, the loan policy, and any variations by the credit
      committee in respect of loan. I hereby authorize (1) OCIL to make the necessary deductions, including one percent(1%) interest monthly,to be made from my salary as repayment of this loan, (2) in case of
      termination my employer is authorized to recover any outstanding loans from my final dues, and pay to Moto staff SACCO Ltd (3). I declare that am not indebted to ant other Credit Society, bank, company or
      loan agency (except as listed herein) either as borrower or endorser.
      </p></td>
      </tr>

    </table>

    <table>
      <tr>
     <td width="250">Name: <u>{{$transaction->member->name}}</u></td><td width="150">Signature: <img src="{{ asset('public/uploads/photos/'.$transaction->member->signature)}}" width="50px"></td><td>Date: {{date('Y-m-d')}}</td>
    </tr>
    <tr>
     <td colspan="3">Postal Address: 
       &nbsp;
        @if($transaction->member->address != null)
        <u>{{$transaction->member->address}}</u>
        @else
        .....................................................................................................................................................................................
        @endif
      </td>
    </tr>
    <tr>
     <td width="250">Witness Full names: .......................................................................</td><td width="100">Signature: .....................................................</td><td>Date: ....................</td>
    </tr>
    <tr>
     <td colspan="3">Witness Full Postal Address: ...................................................................................................................................................................</td>
    </tr>
    </table>
<br><br>     
     <p style="page-break-before: always;"></p>
   </div>
   <div style="margin-top:0px">
   <table>
   <tr>
    <td><strong><u id="s">2.&nbsp;&nbsp;&nbsp; Repayment Guarentee</u></strong></td></tr><tr>
   <td colsoan='2'><p>We the undersigned hereby accept jointly and severally liability for the repayment of the loan in the event of
   the borrower`s default. We understand that the amount in default may be recovered by our employer,offset 
   against our deposits in the Society or by attachnment of our property or salary, and that we shall not be eligible 
   for loans unless the amount in default has been cleared in full
   </p></td>
   </tr>
   <tr>
  <td>Guarantors:-</td>
   </tr>
   </table>
   <table border="1" cellspacing="0" cellpadding="0">
   
   <tr>
    <td>P. Roll No.</td>
    <td>Name of Guarantor</td>
    <td>Amt. Guaranteed Kshs.</td>
    <td>Deosits Kshs.</td>
    <td>Existing Loan Kshs.</td>
    <td>Signture</td>
    <td>Witness Sign & Payroll No.</td>
   </tr>
    @if(count($guarantors) == 0)
   <tr><td height="20"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
   <tr><td height="20"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
   <tr><td height="20"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
   <tr><td height="20"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
   <tr><td height="20"></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>
   <tr><td style="border:solid 1px #fff" colspan='2' height="20"></td><td></td><td></td><td></td><td style="border:solid 1px #fff" colspan='2'></td></tr>
   @else
   <?php $balance =0;$gamt=0;$total=0; ?>
   @foreach($guarantors as $guarantor)
   <tr>
   <td style="padding:5px 10px">{{$guarantor->member->payroll_no}}</td>
   <td style="padding:5px 10px">{{$guarantor->member->name}}</td>
   <td style="padding:5px 10px">{{asMoney($guarantor->amount,2)}}</td>
   <td style="padding:5px 10px">{{asMoney(Loanguarantor::getAmount($guarantor->member->id),2)}}</td>
   <td style="padding:5px 10px">{{asMoney(Loanguarantor::getLoan($guarantor->member->id),2)}}</td>
   <td style="padding:5px 10px"> <img src="{{ asset('public/uploads/photos/'.$guarantor->member->signature)}}" width="50px"></td>
   <td></td>
   </tr>
   <?php 
         $balance = $balance+$balance_to_date;$gamt = $gamt+$guarantor->amount;
         $total = $total + Loanguarantor::getAmount($guarantor->member->id);
   ?>
   @endforeach
   <tr><td style="border:solid 1px #fff" colspan='2' height="20"></td><td style="padding:5px 10px">{{asMoney($gamt,2)}}</td><td style="padding:5px 10px">{{asMoney($total,2)}}</td><td style="padding:5px 10px">{{asMoney($balance,2)}}</td><td style="border:solid 1px #fff" colspan='2'></td></tr>
   @endif
   </table>
    <br>
   <table>
   <tr><td><strong><u id="s">3.&nbsp;&nbsp;&nbsp; For Official Use only</u></strong></td></tr>
   <tr><td><p>Total Deposits <u>{{asMoney($amount_to_date,2)}}</u> Total Loan outstanding Kshs. <u>{{asMoney($balance_to_date,2)}}</u><br>
   Frequency loan during the year ........................................................Amount currently requested: {{asMoney($transaction->amount_applied,2)}}<br>
   New total loan will be Kshs. <u>{{asMoney(Loanaccount::getLoanAmount($transaction))}} </u>Eligibility calculations:-<br>
   Deposits Kshs: <u>{{asMoney($amount_to_date,2)}}</u> X 3 = Kshs. <u>{{asMoney($amount_to_date*3,2)}}</u><br>
   Member`s Present monthly income kshs: <u>{{$transaction->member->net_income}}</u> One Third (1/3) pay = Kshs. <u>{{asMoney($transaction->member->net_income/3,2)}}</u><br>
   Total monthly payment to the society including payment on loan requested are Kshs:.........................................(must)<br>
   not exceed quarter (1/4) pay. Do the Guarantors cover the Loan?Yes/No....................................<br>
   I certify that the application is/is not within the Rules of the Society.
   </p></td></tr>
   </table>
   

   <table>
   <tr><td><strong><u id="s">4.&nbsp;&nbsp;&nbsp; Credit Committee</u></strong></td></tr>
   <tr><td><p>Loan approved Kshs. 
    @if($transaction->amount_approved != null)
    {{asMoney($transaction->amount_approved,2)}}
    @else
    ...................................................
    @endif
    recoverable in 
    @if($transaction->amount_approved != null)
    {{asMoney($transaction->amount_approved/$transaction->period,2)}}
    @else
    ...................................................
    @endif
    monthly instalments, at<br><br>
    This application is deferred/rejected for the following reason(s):-
    @if($transaction->rejected_reason != null)
    {{$transaction->rejected_reason}}
    @else
    ........................................................................................................<br>
    @endif
    Credit Committe  Minute No:.................................................................................................................... Date......................................<br><br>
    @if($transaction->chairman_approved != 0 && $transaction->secretary_approved !=0)
     C.C. Chairman`s Signature: {{$chairman->signature}}
     Secretary: {{$secretary->signature}} 
     Member.......................................
    @else
    C.C. Chairman`s Signature:.................................................... Secretary.......................................... 
    Member.......................................
    <br>
    @endif
    To be completed by the paying officer (treasurer)<br>
    Application No. .........................................  Cheque No. .......................................... Amount (Kshs.)
    @if($transaction->amount_approved != null)
    {{asMoney($transaction->amount_approved,2)}}
    @else
    ...................................................
    @endif
    <br>
    Recoveries:<br>
    a) Principal Monthly recoverable Kshs.
    @if($transaction->amount_approved != null)
    {{asMoney($transaction->amount_approved/$transaction->period,2)}}
    @else
    ...................................................
    @endif<br>
    b) Certified 1st recovery received on
    @if($transaction->amount_approved != null)
    {{$transaction->repayment_start_date}}
    @else
    .......................................................
    @endif<br>
    <label>
    @if($transaction->is_approved==1 && $transaction->is_rejected==0)
     <input type="checkbox" checked="checked">Approved 
     <input type="checkbox">Not Approved
    @elseif($transaction->is_approved==0 && $transaction->is_rejected==1)
    <input type="checkbox">Approved 
    <input type="checkbox" checked="checked">Not Approved
    @else
    <input type="checkbox">Approved 
    <input type="checkbox">Not Approved
    @endif
    </label>
    <br>
    if not why...........................................................................................................................................................................................
    <br>
    @if($transaction->chairman_approved != 0 && $transaction->secretary_approved !=0)
    Chairman`s Signature: {{$chairman->signature}}
    Date:  {{date('d-M-Y')}}
    @else
    Chairman`s Signature............................................................................................................ Date.................................................
   </p>
   @endif
   </td></tr>
   </table>  
   </div>
 </body>
 </html>