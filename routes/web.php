<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductsController;

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

Route::get('/dashboard',[ProductsController::class,'showOwnProducts'])
->middleware(['auth'])->name('dashboard');

Route::get('/sell', function () {
    return view('sell');
})->middleware('auth')->name('sell.store');

Route::post('/product', [ProductsController::class, 'store'])->name('product.store');

Route::get('/', [ProductsController::class, 'index'])->name('all.product');

// Route::get('/product/{id}', [ProductsController::class, 'product']);

Route::get('/product/{id}', [ProductsController::class,'show']);

Route::get('/delete/{id}',[ProductsController::class, 'alldelete'])->name('delete.products');

Route::get('/edit/{id}',[ProductsController::class,'edit'])->middleware('auth');

Route::post('/update/{id}',[ProductsController::class,'update']);

