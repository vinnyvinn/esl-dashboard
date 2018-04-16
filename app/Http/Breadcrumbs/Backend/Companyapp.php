<?php

Breadcrumbs::register('admin.companyapps.index', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.dashboard');
    $breadcrumbs->push(trans('menus.backend.companyapps.management'), route('admin.companyapps.index'));
});

Breadcrumbs::register('admin.companyapps.create', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.companyapps.index');
    $breadcrumbs->push(trans('menus.backend.companyapps.create'), route('admin.companyapps.create'));
});

Breadcrumbs::register('admin.companyapps.edit', function ($breadcrumbs, $id) {
    $breadcrumbs->parent('admin.companyapps.index');
    $breadcrumbs->push(trans('menus.backend.companyapps.edit'), route('admin.companyapps.edit', $id));
});
