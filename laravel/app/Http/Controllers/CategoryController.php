<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CategoryController extends Controller
{
    public function categories(Request $request)
    {print_r('jj');
    	$category=Category::get();
    	print_r($category);die();
        if(Category::get()){
            $user =Auth::user();
            $resArr=[];
            $resArr['token']=$user->createToken('api-application')->accessToken;
            $resArr['name']=$user->name;
            $resArr['status']='200';
            return response()->json($resArr,200);

        }else{
           $resArr['token']='';
           $resArr['errors']='Unauthrized Access';
           $resArr['status']='202';
            return response()->json($resArr,202);
        }
    }
}
