<?php

Route::get('/', function () {
    return view('index');
});

Route::get('/admin', 'AdminController@index');
Route::get('/login', 'LoginController@index');
Route::post('/login', 'LoginController@login');
Route::get('/logout', 'LoginController@logout');
Route::get('/books/{id}', 'SearchController@index');
Route::get('/books', 'SearchController@books');

Route::get('/admin', function() {
    return view('admin.index', [
        'user' => Auth::user()
    ]);
})->middleware('protected');
