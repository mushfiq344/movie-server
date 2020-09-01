<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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


Route::post('register', 'UserController@register');
Route::post('login', 'UserController@authenticate');
Route::get('open', 'DataController@open');

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::post('movieSubmit', 'MovieController@movieSubmit');
    Route::get('/movies', 'MovieController@index');

    Route::get('user', 'UserController@getAuthenticatedUser');
    Route::get('closed', 'DataController@closed');
    Route::get('/comments/{slug_name}', 'MovieController@comments');
    Route::post('/insertComment', 'MovieController@insertComment');
    Route::get('/genres', 'MovieController@genres');
});
Route::get('/practice/movies', 'PracticeController@index');
Route::get('/movie/{slug_name}', 'MovieController@movie');
