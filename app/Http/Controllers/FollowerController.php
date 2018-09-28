<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Follower;

class FollowerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store($followee_id)
    {
        $user_id = auth()->id();

        // check to see if that combination already exists in the DB
        // if so, don't add a new duplicate entry
        $duplicate = Follower::where([
            ['user_id', '=', $user_id],
            ['followee_id', '=', $followee_id]
        ])->count();

        if($duplicate){
            // flash message
            return redirect()->back();
        }

        // store a new entry
        $data = [
            'user_id'=>$user_id,
            'followee_id'=>$followee_id
        ];
        Follower::create($data);
        return redirect('/profile/'. $followee_id);



        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $destroy = Follower::where([
            ['user_id', '=', auth()->id()],
            ['followee_id', '=', $id]
        ])->delete();
    }
}
