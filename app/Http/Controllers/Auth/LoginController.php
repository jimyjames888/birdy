<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except ('destroy');
    }

    public function create(){
        // show login form
        return view('auth.login.create', [ 'hide_nav' => true ]);   // pass hide_nav in to views to hide the nav bar
    }

    public function store(Request $request){

            if(! auth()->attempt(request(['email','password']))){
                session()->flash('errorMessage', 'Invalid credentials');
                return redirect()->back();
            }

            session()->flash('message', 'You have successfully logged in');
            return redirect('/members-only');
        }

        public function destroy(){
            auth()->logout();
            return redirect('/auth/login');

    }

}
