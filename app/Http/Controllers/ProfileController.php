<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class ProfileController extends Controller
{

    public function __construct(){
        $this->middleware('auth');
    }

    public function show($id=null){
        if(is_null($id)) $id = auth()->user()->id;

        $user = User::find($id);

        return view('profile.show', compact('user'));

    }

    public function edit(){
        $id = auth()->user()->id;
        $user=User::find($id);

        return view("profile.edit",compact('user'));
        // show edit form for auth'd user
    }

    public function update(Request $request){
        $id = auth()->id();
        $user=User::find($id);

        $user->name = $request->name;
        $user->save();

        $user->profile->bio = $request->bio;
        $user->profile->birthday = $request->birthday;
        $user->profile->save();

        return redirect('/profile');


        // update users table with name

        // update profile table with bday and bio
    }
}
