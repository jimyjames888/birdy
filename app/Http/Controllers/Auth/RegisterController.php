<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Profile;

class RegisterController extends Controller
{
    public function create(){
        // show the registration form
        return view('auth.register.create');
    }

    public function store(Request $request){
        // validate
        $data = $request->validate([
            'name'      =>      'required|min:2|max:20',
            'email'     =>      'required|email|max:40',
            'password'  =>      'required|min:6|max:20|confirmed'
        ]);

        $data['password'] = bcrypt($data['password']);

        // store new user row
        $user = User::create($data);
        Profile::create([
            "user_id" => $user->id
        ]);

        session()->flash('message','You have successfully registered an account');
        return redirect('/auth/login');
    }
}



?>
