@extends('layout')

@section('content')
    <form action="/tweets/{{ $tweet->id }}/comments/{{$comment->id}}" method="POST">
        <input type="hidden" name="_method" value="PUT">
        @csrf
        <textarea name="message" id="message" class="form-control">{{$comment->message}}</textarea>
        <button type="submit" class="btn btn-success"> Save Changes</button>
    </form>
@endsection
