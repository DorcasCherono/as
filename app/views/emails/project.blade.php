<p>
Hello {{$name}}, 
</p>

<p>You are hereby notified that your project order has been approved on {{date('Y-m-d')}}. </p>
<p>You can contact your administrator for project allotment certificate and statements.</p>
<p>Thanks for investing with us. Asante Member!</p>
<br><br>
<p>Regards,</p>
<?php $orgname=Organization::find(1)->pluck('name'); ?>
<p>{{$orgname}}</p>