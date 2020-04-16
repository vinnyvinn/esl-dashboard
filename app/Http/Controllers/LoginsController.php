<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

use App\Models\Access\User\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class LoginsController extends Controller
{
    public function signIN()
    {
       Auth::attempt(['email' => 'evans.ngala@esl-eastafrica.com','password'=>'VIPadisa07']);
      return redirect('/dashboard');
       // dd(auth('web')->user());
    }

    public function authenticates(Request $request)
    {
        if (Auth::attempt(['email' => $request->email,'password'=>$request->password])) {
            return response('success');
        }
    }
}
