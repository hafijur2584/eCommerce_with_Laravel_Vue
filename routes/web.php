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

     

Route::get('/', 'WellcomeController@index')->name('welcome');

Route::get('/', 'WellcomeController@index')->name('welcome');
Route::get('/product', 'ShopController@index')->name('shop');
Route::get('/singleProduct', 'ShopController@show')->name('shop.show');
Route::get('/invoice', 'OrderController@invoice')->name('invoice');
Route::get('/checkout', 'OrderController@index')->name('checkout');

Route::group(['prefix' => 'cart'],function (){
    Route::get('/','CartController@index')->name('cart');
    Route::post('/store','CartController@store')->name('cart.store');
    Route::post('/delete/{id}','CartController@destroy')->name('cart.delete');
});


Route::group(['prefix' => 'admin'], function () {
  Route::get('/login', 'AdminAuth\LoginController@showLoginForm')->name('admin.login');
  Route::post('/login', 'AdminAuth\LoginController@login');
  Route::get('/logout', 'AdminAuth\LoginController@logout')->name('admin.logout');

  Route::get('/register', 'AdminAuth\RegisterController@showRegistrationForm')->name('register');
  Route::post('/register', 'AdminAuth\RegisterController@register');

  Route::post('/password/email', 'AdminAuth\ForgotPasswordController@sendResetLinkEmail')->name('password.request');
  Route::post('/password/reset', 'AdminAuth\ResetPasswordController@reset')->name('password.email');
  Route::get('/password/reset', 'AdminAuth\ForgotPasswordController@showLinkRequestForm')->name('password.reset');
  Route::get('/password/reset/{token}', 'AdminAuth\ResetPasswordController@showResetForm');
});
//Route::get('/{name}',function (){
//    return redirect('/');
//})->where('name','[A-Za-z]+');

Auth::routes();

Route::group(['middleware'=>['auth:admin'],'prefix'=>'admin/','as'=>'admin.'],function (){
    Route::resource('product','Admin\ProductController');
    Route::get('products', 'Admin\ProductController@adminProducts');
});


Route::get('/home', 'HomeController@index')->name('home');




