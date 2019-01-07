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

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::middleware('auth')->group(function () {
    Route::prefix('project')->group(function () {
        //tampilan
        Route::get('/', 'ProjectController@index')->name('project-index');
        Route::get('/search','ProjectController@search')->name('project-search');
        Route::get('create', 'ProjectController@add')->name('project-add');
        Route::get('edit/{id}', 'ProjectController@edit')->name('project-edit');
        Route::get('/{idProject}', 'ProjectController@byId')->name('project-by-id');

        //crud
        Route::post('/publish', 'ProjectController@publish')->name('project-publish');
        Route::post('/put', 'ProjectController@put')->name('project-put');
        Route::post('/remove', 'ProjectController@remove')->name('project-remove');
    });
    Route::prefix('mom')->group(function() {
        //tampilan
        Route::get('/', 'MomController@index')->name('mom-index');
        Route::get('create', 'MoMController@add')->name('mom-add');
        Route::get('edit/{id}', 'MoMController@edit')->name('mom-edit');
        Route::get('{id}/kesimpulan', 'MoMController@kesimpulan')->name('mom-kesimpulan');

        //daftar peserta
        Route::prefix('{id}/daftar-peserta')->group(function(){
            Route::get('/', 'DaftarPesertaController@index')->name('daftar-peserta-index');
            Route::get('/search','DaftarPesertaController@search')->name('daftar-peserta-search');

            //crud
            Route::post('/publish', 'DaftarPesertaController@publish')->name('daftar-peserta-publish');
            Route::post('/put', 'DaftarPesertaController@put')->name('daftar-peserta-put');
            Route::post('/remove', 'DaftarPesertaController@remove')->name('daftar-peserta-remove');
        });

        //pokok bahasan
        Route::prefix('{id}/pokok-bahasan')->group(function(){
            Route::get('/', 'PokokBahasanController@index')->name('pokok-bahasan-index');

            //crud
            Route::post('/publish', 'PokokBahasanController@publish')->name('pokok-bahasan-publish');
            Route::post('/put', 'PokokBahasanController@put')->name('pokok-bahasan-put');
            Route::post('/remove', 'PokokBahasanController@remove')->name('pokok-bahasan-remove');
        });

        //detail pokok bahasan
        Route::prefix('{id}/detail-pokok-bahasan')->group(function(){
            Route::get('/', 'DetailPokokBahasanController@index')->name('detail-pokok-bahasan-index');
        });

        //gallery
        Route::prefix('{id}/gallery')->group(function(){
            Route::get('/', 'GalleryController@index')->name('gallery-index');
        });

        //crud
        Route::post('/publish', 'MoMController@publish')->name('mom-publish');
        Route::post('/put', 'MoMController@put')->name('mom-put');
        Route::post('/remove', 'MoMController@remove')->name('mom-remove');

    });

    //api
    Route::prefix('daftar-peserta')->group(function () {
        Route::get('/{idPeserta}', 'DaftarPesertaController@byId')->name('daftar-peserta-by-id');
    });

    Route::prefix('pokok-bahasan')->group(function () {
        Route::get('/{idPokokBahasan}', 'PokokBahasanController@byId')->name('pokok-bahasan-by-id');
    });

});
