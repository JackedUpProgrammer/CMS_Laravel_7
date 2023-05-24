<?php

use Illuminate\Support\Facades\Route;

Route::get('/roles', 'RoleController@index')->name('roles.index');

Route::post('/roles/create', 'RoleController@store')->name('roles.store');

Route::delete('/roles/{role}/destroy', 'RoleController@destroy')->name('role.destroy');

Route::get('/roles/{role}/edit', 'RoleController@edit')->name('role.edit');

Route::put('/roles/{role}/update', 'RoleController@update')->name('role.update');


Route::put('/roles/{role}/attach', "RoleController@attach")->name('role.permission.attach');
Route::put('/roles/{role}/detach', "RoleController@detach")->name('role.permission.detach');