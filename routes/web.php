<?php

use App\Http\Controllers\Site\ContactUsController;
use App\Http\Controllers\Site\EventsController;
use App\Http\Controllers\Site\GalleryController;
use App\Http\Controllers\Site\HomeController;
use App\Http\Controllers\Site\NewsController;
use App\Http\Controllers\Site\RateController;
use App\Http\Controllers\Site\ReleasesController;
use App\Http\Controllers\Site\ServiceController;
use App\Http\Controllers\Site\StaticPagesController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

//Route::view('/', 'welcome')->name('home');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::view('dashboard', 'dashboard')->name('dashboard');
});









Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath'],
        'as' => "site.",
    ], function () { //...

    Route::get('/', [HomeController::class, 'index'])->name('home.index');
    Route::get('/news', [NewsController::class, 'news'])->name('news.index');
    Route::get('/news/{post}', [NewsController::class, 'showNew'])->name('news.show');
    Route::get('/events', [ EventsController::class, 'index'])->name('events.index');
    Route::get('/events/{post}', [EventsController::class, 'show'])->name('events.show');
    Route::get('/releases', [ ReleasesController::class, 'index'])->name('releases.index');
    Route::get('/releases/{post}', [ReleasesController::class, 'show'])->name('releases.show');
    Route::get('/services', [ ServiceController::class, 'index'])->name('services.index');
    Route::get('/services/{post}', [ServiceController::class, 'show'])->name('services.show');
    Route::get('/gallery', [ GalleryController::class, 'index'])->name('gallery.index');
    Route::get('/gallery/{post}', [GalleryController::class, 'show'])->name('gallery.show');
    Route::post('/rate/{service_id}', [ RateController::class, 'storeRate'])->name('store.rate');
    Route::get('/page/{post_id}/{title}', [StaticPagesController::class, 'show'])->name('pages.show');
    Route::get('/contact-us' , [ContactUsController::class , 'show'])->name('contact_us.show');







});






require __DIR__.'/settings.php';




