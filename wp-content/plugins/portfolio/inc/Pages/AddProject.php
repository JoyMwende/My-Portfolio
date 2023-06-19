<?php
/**
 * @package portfolio plugin
 */

namespace Inc\Pages;

use \Inc\Base\BaseController;

class AddProject{
    public function register(){
        $this->create_table_to_db();
        $this->add_project_to_db();
    }

    function create_table_to_db(){
        global $wpdb;

        $table_name = $wpdb->prefix.'projects';

        $project_details = "CREATE TABLE IF NOT EXISTS ".$table_name."(
            ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
            project_title text NOT NULL,
            project_desc text NOT NULL,
            technology_used text NOT NULL,
            project_image text NOT NULL
        );";

        require_once(ABSPATH.'wp-admin/includes/upgrade.php');
        dbDelta($project_details);
    }

    function add_project_to_db(){
        if(isset($_POST['addprojectbtn'])){
            $project_info =[
                'project_title'=> $_POST['project_title'],
                'project_desc'=> $_POST['project_desc'],
                'technology_used'=> $_POST['technology_used'],
                'project_image'=> $_POST['project_image']
            ];

            global $wpdb;

            global $successmsg;
            global $errormsg;

            $successmsg = false;
            $errormsg = false;

            $table_name = $wpdb->prefix.'projects';

            $project = $wpdb->insert($table_name, $project_info);

            if($project == true){
                $successmsg = true;

                $project_info =[
                    'project_title'=> '',
                    'project_desc'=> '',
                    'technology_used'=> '',
                    'project_image'=> ''
                ];
            }else{
                $errormsg = true;
            }
        }
    }
}