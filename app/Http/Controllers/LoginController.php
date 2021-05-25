<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;
use Hash;

class LoginController extends Controller
{
    function onLogin(Request $request)
    {
    	$username = $request->username;
    	$password = $request->password;
    	$user_info = UserModel::where('username', $username)->first();
    	if($user_info==true && Hash::check($password, $user_info->password)==true)
    	{
    		return 1;
    	}
    	else{
    		return "Username or password may be incorrect!";
    	}
    }
}
