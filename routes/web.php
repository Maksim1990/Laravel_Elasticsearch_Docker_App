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

use Elasticsearch\ClientBuilder;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/test', function () {

    $es = ClientBuilder::create()
        ->setHosts(['elasticsearch:9200'])
        ->build();

    $indexed = $es->index([
        'index' => 'people',
        'type' => 'persons',
        'body' => [
            'firstName' => 'John',
            'lastName' => 'Doe',
            'gender' => 'male',
        ],
    ]);
});