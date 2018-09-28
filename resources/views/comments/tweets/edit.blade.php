@extends ('layout')
@section ('content')
<form action="/tweets/{{$tweet->id}}" method="POST">
    <input type="hidden" name="_method" value="PUT">
    {{csrf_field() }}
    <input type="text" name="author" id="author" class="form-control" value="{{$tweet->author}}" />
    <textarea name="body" id="body" class="form-control">{{$tweet->body}}</textarea>
    <button type="submit" class="btn btn-primary">Tweet it!</button> 
</form>
@endsection
