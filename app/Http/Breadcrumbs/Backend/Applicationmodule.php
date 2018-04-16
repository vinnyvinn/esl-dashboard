<?php

Breadcrumbs::register('admin.applicationmodules.index', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.dashboard');
    $breadcrumbs->push(trans('menus.backend.applicationmodules.management'), route('admin.applicationmodules.index'));
});

Breadcrumbs::register('admin.applicationmodules.create', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.applicationmodules.index');
    $breadcrumbs->push(trans('menus.backend.applicationmodules.create'), route('admin.applicationmodules.create'));
});

Breadcrumbs::register('admin.applicationmodules.edit', function ($breadcrumbs, $id) {
    $breadcrumbs->parent('admin.applicationmodules.index');
    $breadcrumbs->push(trans('menus.backend.applicationmodules.edit'), route('admin.applicationmodules.edit', $id));
});
