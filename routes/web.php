<?php

use App\Http\Controllers\Site\EventsController;
use App\Http\Controllers\Site\HomeController;
use App\Http\Controllers\Site\NewsController;
use App\Http\Controllers\Site\ReleasesController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

//Route::view('/', 'welcome')->name('home');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::view('dashboard', 'dashboard')->name('dashboard');
});









Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath', 'auth', 'verified'],
        'as' => "site.",
    ], function () { //...

    Route::get('/', [HomeController::class, 'index'])->name('home.index');
    Route::get('/news', [NewsController::class, 'news'])->name('news.index');
    Route::get('/news/{post}', [NewsController::class, 'showNew'])->name('news.show');
    Route::get('/events', [ EventsController::class, 'index'])->name('events.index');
    Route::get('/events/{post}', [EventsController::class, 'show'])->name('events.show');
    Route::get('/releases', [ ReleasesController::class, 'index'])->name('releases.index');
    Route::get('/releases/{post}', [ReleasesController::class, 'show'])->name('releases.show');


});






require __DIR__.'/settings.php';




