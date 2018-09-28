@extends ('layout')
@section ('content')
<form action="/tweets/{{$tweet->id}}" method="POST">
    <input type="hidden" name="_method" value="PUT">
    @csrf
    <textarea name="body" id="body" class="form-control">{{$tweet->body}}</textarea>
    <button type="submit" class="btn btn-primary">Save Changes</button>
</form>
@endsection
