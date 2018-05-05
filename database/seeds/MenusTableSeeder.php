<?php

use Illuminate\Database\Seeder;

class MenusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('menus')->delete();
        
        \DB::table('menus')->insert(array (
            0 => 
            array (
                'id' => 1,
                'type' => 'backend',
                'name' => 'Backend Sidebar Menu',
                'items' => '[{"view_permission_id":"view-access-management","icon":"fa-users","open_in_new_tab":0,"url_type":"route","url":"","name":"Access Management","id":11,"content":"Access Management","children":[{"view_permission_id":"view-user-management","open_in_new_tab":0,"url_type":"route","url":"admin.access.user.index","name":"User Management","id":12,"content":"User Management"},{"view_permission_id":"view-role-management","open_in_new_tab":0,"url_type":"route","url":"admin.access.role.index","name":"Role Management","id":13,"content":"Role Management"},{"view_permission_id":"view-permission-management","open_in_new_tab":0,"url_type":"route","url":"admin.access.permission.index","name":"Permission Management","id":14,"content":"Permission Management"},{"view_permission_id":"view-usercompany-permission","icon":"","open_in_new_tab":0,"url_type":"route","url":"admin.usercompanies.index","name":"Assign Users to Companies","id":18,"content":"Assign Users to Companies"}]},{"view_permission_id":"view-module","icon":"fa-wrench","open_in_new_tab":0,"url_type":"route","url":"admin.modules.index","name":"Module","id":1,"content":"Module"},{"view_permission_id":"view-menu","icon":"fa-bars","open_in_new_tab":0,"url_type":"route","url":"admin.menus.index","name":"Menus","id":3,"content":"Menus"},{"view_permission_id":"view-email-template","icon":"fa-envelope","open_in_new_tab":0,"url_type":"route","url":"admin.emailtemplates.index","name":"Email Templates","id":8,"content":"Email Templates"},{"view_permission_id":"edit-settings","icon":"fa-gear","open_in_new_tab":0,"url_type":"route","url":"admin.settings.edit?id=1","name":"Settings","id":9,"content":"Settings"},{"id":15,"name":"Company","url":"admin.companies.index","url_type":"route","open_in_new_tab":0,"icon":"fa-building","view_permission_id":"view-company-permission","content":"Company"},{"view_permission_id":"view-applicationmodule-permission","icon":"fa-server","open_in_new_tab":0,"url_type":"route","url":"admin.applicationmodules.index","name":"Pro-Kazi Applications","id":16,"content":"Pro-Kazi Applications"},{"id":17,"name":"Company Apps","url":"admin.companyapps.index","url_type":"route","open_in_new_tab":0,"icon":"fa-cubes","view_permission_id":"view-companyapps-permission","content":"Company Apps"}]',
                'created_by' => 1,
                'updated_by' => NULL,
                'created_at' => '2018-05-05 11:34:56',
                'updated_at' => '2018-05-05 17:17:54',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}