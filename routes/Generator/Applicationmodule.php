<?php
/**
 * Applicationmodule
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Applicationmodule'], function () {
        Route::resource('applicationmodules', 'ApplicationmodulesController');
        //For Datatable
        Route::post('applicationmodules/get', 'ApplicationmodulesTableController')->name('applicationmodules.get');
    });
    
});