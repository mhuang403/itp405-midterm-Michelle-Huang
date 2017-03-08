<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class LoginController extends Controller
{
    public function index()
    {
        return view('login');
    }

    public function login()
    {
        $loginWasSuccessful = Auth::attempt([
            'email' => request('email'),
            'password' => request('password')
        ]);

        if ($loginWasSuccessful) {
            $successmessage = 'Welcome back, '.Auth::User()->name.'.';
            session()->flash('successStatus', $successmessage);
            return redirect('/admin');

        } else {
            return redirect('/login')
            ->withErrors('Invalid credentials');
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/login');
    }
}
