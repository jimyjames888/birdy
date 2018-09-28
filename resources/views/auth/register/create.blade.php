@extends('layout')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <header class="card-header">
                        	<a href="login" class="float-right btn btn-outline-secondary mt-1">Log in</a>
                        	<h4 class="card-title mt-2">Sign up</h4>
                    </header>
                    <article class="card-body">
                        <form action="/auth/register" method="post">
                            @csrf
                    		<div class="form-group">
                    			<label>Name</label>
                    		  	<input type="text" class="form-control" name="name" value="{{ old('name') }}">
                    		</div> <!-- form-group end.// -->

                        	<div class="form-group">
                        		<label>Email address</label>
                        		<input type="email" class="form-control" name="email" value="{{ old('email') }}">
                        		<small class="form-text text-muted">We'll never share your email with anyone else.</small>
                        	</div> <!-- form-group end.// -->

                        	<div class="form-group">
                        		<label>Create password</label>
                        	    <input class="form-control" type="password" name="password">
                        	</div> <!-- form-group end.// -->
                            <div class="form-group">
                        		<label>Confirm password</label>
                        	    <input class="form-control" type="password" name="password_confirmation">
                        	</div> <!-- form-group end.// -->
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block"> Register  </button>
                            </div> <!-- form-group// -->
                            @if($errors->any())
                            <div class="form-group">
                                <ul class="alert alert-danger">
                                @foreach($errors->all() as $error )
                                    <li>{{ $error }}</li>
                                @endforeach
                                </ul>
                            </div>
                            @endif
                            <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>
                        </form>
                    </article> <!-- card-body end .// -->
                    <div class="border-top card-body text-center">Have an account? <a href="login">Log In</a></div>
                </div> <!-- card.// -->
            </div> <!-- col.//-->

        </div> <!-- row.//-->


    </div>
    <!--container end.//-->

@endsection
