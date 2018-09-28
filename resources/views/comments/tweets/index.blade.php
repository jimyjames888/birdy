@extends('layout')
@section('content')
    @foreach  ($tweets as $tweet)
        <h3> <a href="/tweets/{{$tweet->id}}">{{$tweet->author}}</a></h3>
        <div>
            {{$tweet->body}}
        </div>
    @endforeach
@endsection
