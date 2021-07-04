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
    		if($user_info->roll==='Admin')
            {
                return 'admin';
            }

            else
            {
                return 'worker';
            }
           
    	}
    	else{
    		return "Username or password may be incorrect!";
    	}
    }

    function RecoverPassword(Request $request)
    {
        $email = $request->email;
        $password = Hash::make($request->password);

        $emailCount = UserModel::where('email', $email)->count();

        if($emailCount > 0)
        {
            $result = UserModel::where('email', $email)->update([
                    'password' => $password
                ]);
            return $result;
        }
        else
        {
            return 0;
        }

    }
}
