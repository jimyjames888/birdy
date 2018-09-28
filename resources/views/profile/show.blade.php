@extends ('layout')

@section ('content')
<link rel="stylesheet" href="/css/profilelayout.css">
<div class="container">
<div class="row">
<div class="col-md-6 img">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvzOpl3-kqfNbPcA_u_qEZcSuvu5Je4Ce_FkTMMjxhB-J1wWin-Q" alt="" class="img-rounded">
</div>
<div class="col-md-6 details">
  <blockquote>
	<h5>Tom</h5>
	<small><cite title="Source Title">Chicago, United States of America<i class="icon-map-marker"></i></cite></small>
  </blockquote>
  <p>
	  Fisherman, Editor, Wearer of many hats, Slot Guru, Twitteratti. I don't know what alt-tab does.
 		<br>June 18, 1990 <br>
  </p>
</div>
</div>
</div>
<p class="text-right m-0"><a href="/profile/edit" class="btn btn-primary">Edit Profile</a></p>
<a href="/follow/{{$user->id}}" class="btn btn-light-green">Follow</a>
<a href="/unfollow/{{$user->id}}" class="btn btn-danger">UnFollow</a>
</div>
</div>
</div>
</div>
</section>
