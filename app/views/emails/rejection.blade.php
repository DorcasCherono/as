<p>
Hello {{$name}}, 
</p>

<p>You are hereby notified that your project order has been rejected on {{date('Y-m-d')}}. </p>
<p>Try to increase your savings or repay your existing loan amounts in order to invest in the available investments projects.</p>
<p>Thanks for being a loyal member!</p>
<br><br>
<p>Regards,</p>
<?php $orgname=Organization::find(1)->pluck('name'); ?>
<p>{{$orgname}}</p>