<?php

use Illuminate\Database\Seeder;

class ModulesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('modules')->delete();
        
        \DB::table('modules')->insert(array (
            0 => 
            array (
                'id' => 1,
                'view_permission_id' => 'view-access-management',
                'name' => 'Access Management',
                'url' => NULL,
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'view_permission_id' => 'view-user-management',
                'name' => 'User Management',
                'url' => 'admin.access.user.index',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'view_permission_id' => 'view-role-management',
                'name' => 'Role Management',
                'url' => 'admin.access.role.index',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'view_permission_id' => 'view-permission-management',
                'name' => 'Permission Management',
                'url' => 'admin.access.permission.index',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'view_permission_id' => 'view-menu',
                'name' => 'Menus',
                'url' => 'admin.menus.index',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'view_permission_id' => 'view-module',
                'name' => 'Modules',
                'url' => 'admin.modules.index',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            6 => 
            array (
                'id' => 8,
                'view_permission_id' => 'view-email-template',
                'name' => 'Email Templates',
                'url' => 'admin.emailtemplates.index',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
            7 => 
            array (
                'id' => 9,
                'view_permission_id' => 'edit-settings',
                'name' => 'Settings',
                'url' => 'admin.settings.edit',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}