<?php

use App\Livewire\BangGia;
use App\Livewire\Category;
use App\Livewire\GioiThieu;
use App\Livewire\Home;
use App\Livewire\LienHe;
use App\Livewire\Post;
use App\Livewire\Search;
use Illuminate\Support\Facades\Route;

Route::get('/',Home::class);
Route::get('/gioi-thieu',GioiThieu::class);
Route::get('/danh-muc/{slug}',Category::class);
Route::get('/bang-gia',BangGia::class);
Route::get('/lien-he',LienHe::class);
Route::get('/dich-vu/{slug}',Post::class);
Route::get('/search',Search::class);

