<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('tweets', 'TweetController@index')->name('home');
Route::get('/', function(){
    return view('marketinglayout');
});

Route::resource('tweets', 'TweetController');

Route::post('tweets/{tweet}/comments', 'CommentController@store');
Route::delete('tweets/{tweet}/comments/{comment}', 'CommentController@destroy');
Route::get('tweets/{tweet}/comments/{comment}/edit', 'CommentController@edit');
Route::put('tweets/{tweet}/comments/{comment}', 'CommentController@update');

Route::post('tweets/{tweet}/like', 'TweetController@like');
Route::post('tweets/{tweet}/unlike','TweetController@unlike');

Route::get('auth/login','Auth\LoginController@create')->name('login');
Route::post('auth/login','Auth\LoginController@store');
Route::get('auth/logout', 'Auth\LoginController@destroy')->name('logout');
Route::get('auth/register','Auth\RegisterController@create')->name('register');

Route::get('profile/edit', 'ProfileController@edit');
Route::put('profile', 'ProfileController@update');

Route::get('profile', 'ProfileController@show');
Route::get('profile/{profile}', 'ProfileController@show');
Route::post('profile/{profile}/follow', 'ProfileController@followUser')->name('user.follow');
Route::post('/{profileId}/unfollow', 'ProfileController@unFollowUser')->name('user.unfollow');

Route::get('follow/{user}', 'FollowerController@store');
Route::get('unfollow/{user}', 'FollowerController@destroy');

Route::post('auth/register','auth\RegisterController@store');
