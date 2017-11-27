<p>
Hello {{$name}}, 
</p>

<p>Below is your self service login password: </p>
<p><strong>{{$password}}</strong></p>
<br>
<p>Use your Membership Number as your username</p>
<br><br>
<p>Regards,</p>
<<?php $orgname=Organization::find(1)->pluck('name'); ?>
<p>{{$orgname}}</p>