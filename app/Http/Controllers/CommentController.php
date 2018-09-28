<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tweet;
use App\Comment;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view ('tweets.index',compact('tweets'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view ('comments.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store($tweet_id, Request $request)
    {

        $data=$request->all();
        $data['user_id']=auth()->user()->id;
        $data['tweet_id'] = $tweet_id;
        $comment = Comment::create($data);

        return redirect('/tweets/'. $tweet_id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view ("tweets.show",compact('tweet'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($tweet_id, $comment_id)
    {
        $comment = Comment::find($comment_id);
        $tweet = $comment->tweet;
        return view("comments.edit",compact('comment', 'tweet'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($tweet_id , $comment_id , Request $request)
    {
        $comment = Comment::find($comment_id);
        $comment->message = $request->message;
        $comment->save();
        return redirect ("/tweets/".$tweet_id);

// $tweet->user;
// $tweet->comments;
// $user->tweets;
// $user->comments;
// $comment->user;
// $comment->tweet;
//if($comment->user_id == auth()->user()->id);

        return redirect('/tweets/' . $comment->tweet->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($tweet_id, $comment_id)
    {
        Comment::destroy($comment_id);
        return redirect('/tweets/' . $tweet_id);
    }
}
