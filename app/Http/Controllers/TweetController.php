<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tweet;
use App\Like;
use DB;
class TweetController extends Controller
{
    public function __construct(){
        $this->middleware('auth');

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tweets = Tweet::paginate(10);
        return view('tweets.index','compact'('tweets'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('tweets.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=$request->all();
        $data['user_id']=auth()->user()->id;
        $tweet = Tweet::create($data);

        return redirect('/tweets/'.$tweet->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $tweet = Tweet::find($id);
        return view("tweets.show",compact('tweet'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tweet =Tweet::find($id);
        return view("tweets.edit",compact('tweet'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tweet = Tweet::find($id);
        $tweet->body = $request->body;
        $tweet->save();

        return redirect('/tweets/' . $tweet->id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Tweet::destroy($id);
        return redirect('/tweets');
    }


    public function like($tweet_id){
        $user_id = auth()->id();
        // use $tweet_id and $user_id

        $duplicate = Like::where([
            ['user_id', '=', $user_id],
            ['tweet_id', '=', $tweet_id]
        ])->count();

        if($duplicate){
            // if they already like a tweet, then just delete that entry ("unlike")
            // remove the row
            return json_encode(array(
                'status'=>'failed'
                )
            );
        }

        $like = Like::create([
            'user_id' => auth()->id(),
            'tweet_id' => $tweet_id,
            'like' => 1,
        ]);
        if($like){
            return json_encode(array(
                'status'=>'success'
                )
            );
        }

        return json_encode(array(
            'status'=>'failed'
            )
        );
    }

    public function unlike($tweet_id){
        $user_id = auth()->id();
        $like=DB::table("likes")
        ->where("user_id" ,"$user_id")
        ->where("tweet_id","$tweet_id")->delete();

        if($like){
            return json_encode(array(
                'status'=>'success'
                )
            );
        }

        return json_encode(array(
            'status'=>'failed'
            )
        );
    }
}
