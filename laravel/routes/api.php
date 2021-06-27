<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('login', [UserController::class, 'login']);
Route::post('login', [UserController::class, 'login']);

Route::post('register', [UserController::class, 'registration']);

//Route::group(['middleware' => 'auth:api'], function(){
	//Route::post('user-details', [UserController::class, 'userDetails']);
	Route::post('logout', [UserController::class, 'logout']);
	Route::get('categories', [UserController::class, 'categories']);
	//product
	Route::post('product', [UserController::class, 'productcreate']);
	Route::get('productlist', [UserController::class, 'product']);
	Route::get('productsingle/{id}', [UserController::class, 'productsingle']);
	Route::post('productupdate/{id}', [UserController::class, 'productupdate']);
	Route::get('productdelete/{id}', [UserController::class, 'productdelete']);





//});



