<?php

Breadcrumbs::register('admin.usercompanies.index', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.dashboard');
    $breadcrumbs->push(trans('menus.backend.usercompanies.management'), route('admin.usercompanies.index'));
});

Breadcrumbs::register('admin.usercompanies.create', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.usercompanies.index');
    $breadcrumbs->push(trans('menus.backend.usercompanies.create'), route('admin.usercompanies.create'));
});

Breadcrumbs::register('admin.usercompanies.edit', function ($breadcrumbs, $id) {
    $breadcrumbs->parent('admin.usercompanies.index');
    $breadcrumbs->push(trans('menus.backend.usercompanies.edit'), route('admin.usercompanies.edit', $id));
});
