<?php

use App\Http\Controllers\CryptoPanicController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [CryptoPanicController::class, 'index']);
Route::get('/news-list/{page?}/{start_date?}/{end_date?}/{currency?}', [CryptoPanicController::class, 'news_list'])->name('news-list');

