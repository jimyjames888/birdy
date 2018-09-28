@extends('layout')

@section('content')
    <h3><a href="/tweets/{{$tweet->id}}">{{$tweet->author}}</a></h3>
    <div>
        {{$tweet->body}}
    </div>
@endsection
