@extends('layout')

@section('content')
<div class="sidenav">
	<h2>Birdy<br><h2>
	<p>Connect Explore Meet</p>
	<p>The World At Your Fingertips</p>
	<hr class="style1">
</div>

<div class="main">
	<aside class="col-md-6 col-sm-12">
		<div class="login-form">
			<a href="/auth/register" class="float-right btn btn-yellow">Sign up</a>
			<h4 class="card-title mb-4 mt-1">Sign in</h4>
			<form method="post" action="/auth/login">
				@csrf
				<div class="form-group">
					<label>Your email</label>
					<input name="email" class="form-control" placeholder="Email" type="email">
				</div> <!-- form-group// -->
				<div class="form-group">
					<a class="float-right" href="#">Forgot?</a>
					<label>Your password</label>
					<input name="password" class="form-control" placeholder="password" type="password">
				</div> <!-- form-group// -->
				<div class="form-group">
					<div class="checkbox">
						<label><input type="checkbox"> Save password </label>
					</div> <!-- checkbox .// -->
				</div> <!-- form-group// -->
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block"> Login  </button>
				</div> <!-- form-group// -->
			</form>

			@if(Session::has('errorMessage'))
			<p class="alert alert-danger">
				{{ session('errorMessage') }}
			</p>
			@endif
		</div> <!-- card.// -->

	</aside> <!-- col.// -->
</div>
@endsection
