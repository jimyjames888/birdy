@extends('layout')

@section('content')

    @if($tweet->user_id == auth()->user()->id)
    <div>
        <a href="/tweets/{{$tweet->id}}/edit" class="btn btn-primary">Edit</a>
        <form action="/tweets/{{$tweet->id}}" method="POST">
            <input type="hidden" name="_method" value="DELETE" />
            @csrf
            <button type="submit" class="btn btn-danger">Delete</button>
        </form>
    </div>
    <div class="card gedf-card">
        <hr>
          <div class="d-flex justify-content-between align-items-center">
              <div class="d-flex justify-content-between align-items-center">
                  <div class="mr-2">
                  <div class="ml-2">
                  </div>
              </div>
          </div>
      </div>
    @endif
    <div>
        <h3><a href="/profile/{{ $tweet->user->id }}">{{$tweet->user->name}}</a></h3>
        <p>{{$tweet->body}}</p>
        <like-button
            tweet-id="{{$tweet->id}}"
            has-liked="{{$tweet->likedByCurrentUser()}}"
            like-count="{{count($tweet->likes)}}"
        ></like-button>
    </div>

    <div>
        @foreach($tweet->comments as $comment)
        <h3><a href="/profile/{{ $comment->user->id }}">{{$comment->user->name}}</a></h3>

        @if($comment->gif_comment)
        <img src="{{ $comment->message }}" />
        @else
        <p>{{ $comment->message  }}</p>
        @endif


        @if($comment->user_id == auth()->user()->id)
            <a href="/tweets/{{$tweet->id}}/comments/{{$comment->id}}/edit" class="btn btn-primary">Edit</a>
            <form action="/tweets/{{$tweet->id}}/comments/{{$comment->id}}" method="POST">
                <input type="hidden" name="_method" value="DELETE" />
                @csrf
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
            @endif

        @endforeach

    </div>

    <div>
        <form action="/tweets/{{$tweet->id}}/comments" method="POST">
            @csrf
            <comment-form></comment-form>
        </form>
    </div>

@endsection
