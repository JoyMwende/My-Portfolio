<?php

/**
 * @package portfolio plugin
 */

namespace Inc\Pages;

use \Inc\Base\BaseController;
use \Inc\Api\SettingsApi;

use \Inc\Api\CallBacks\AdminCallbacks;

class Admin extends BaseController{

    public $settings;

    public $callbacks;

    public $pages;

    public $subpages;

    function register(){

        $this->settings = new SettingsApi();

        $this->callbacks = new AdminCallbacks();

        $this->createAdminMenus();

        $this->createSubMenus();

        $this->settings->AddPages( $this->pages )->HasSubPage('Add Project')->addSubPages($this->subpages)->register();
    }

    public function createAdminMenus(){
        $this->pages= [
            [
                'page_title'=> 'Projects Menu',
                'menu_title'=> 'Projects Menu',
                'capability' => 'manage_options',
                'menu_slug'=> 'projects_menu',
                'callback'=> [$this->callbacks, 'addProjects'],
                'icon_url'=> 'dashicons-media-default',
                'position'=> 200
            ]
        ];
    }

    public function createSubMenus(){
        $this->subpages =[

            [
                'parent_slug'=> 'projects_menu',
                'page_title' => 'Add Project',
                'menu_title' => 'Add Project',
                'capability' => 'manage_options',
                'menu_slug' => 'add_projects',
                'callback' => [$this->callbacks, 'addProjects']
            ]
        ];
    }

}