@extends ('layout')
@section ('content')

<div class="container">
    <div class="row m-y-2">
        <!-- edit form column -->
        <div class="col-lg-4 text-lg-center">
            <h2>Edit Profile</h2>
        </div>
        </div>
        <div class="col-lg-8 push-lg-4 personal-info">
             <form role="form" action="/profile" method="POST">
                 <input type="hidden" name="_method" value="PUT" />
                 @csrf
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Name</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" value="{{ $user->name }}" name="name" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Edit Bio</label>
                    <div class="col-lg-9">
                        <input class="form-control" name="bio" type="text" value="{{ $user->profile->bio }}" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label">Birthday</label>
                    <div class="col-lg-9">
                        <input class="form-control" type="text" name="birthday" value="{{ $user->profile->birthday }}" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-lg-3 col-form-label form-control-label"></label>
                    <div class="col-lg-9">
                        <input type="reset" class="btn btn-danger" value="Cancel" />
                        <input type="submit" class="btn btn-primary" value="Save Changes" />
                    </div>
                </div>
            </form>

        </div>
    </div>
<hr />
@endsection
