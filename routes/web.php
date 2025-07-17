<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RestaurantController;

Route::get('/', function () {
    return view('index');
});
Route::get('aboutus',[RestaurantController::class, 'aboutus']);
Route::get('bookatable',[RestaurantController::class, 'bookatable']);
Route::get('delicious_menu',[RestaurantController::class, 'delicious_menu']);
Route::get('index',[RestaurantController::class, 'index']);
Route::get('masterchef',[RestaurantController::class, 'masterchef']);
Route::get('pancakes',[RestaurantController::class, 'pancakes']);
Route::get('PrivateEvents',[RestaurantController::class, 'PrivateEvents']);
