@extends('layout')
@section('content')
    @foreach($tweets as $tweet)
    <div class="my-3 p-3 bg-white rounded shadow-sm">
    </div>
        <h3> <a href="/tweets/{{$tweet->id}}">{{$tweet->user_id}}</a></h3>
        <div>
            <input type="hidden" name="_method" value="PUT">
            @csrf
            <a href="/tweets/{{$tweet->id}}" class="btn btn-primary">View</a>
            {{$tweet->body}}
            <like-button
                tweet-id="{{$tweet->id}}"
                has-liked="{{$tweet->likedByCurrentUser()}}"
                like-count="{{count($tweet->likes)}}"
            ></like-button>
        </div>
        @endforeach
        {{$tweets->links()}}

@endsection
