<?php

/**
 * @package Portfolio Plugin
 */

 /*
    Plugin Name: Portfolio
    Plugin URI: http://............
    Description: This is plugin for portfolio projects
    Version: 1.0.0
    Author: Joy
    Author URI: http://joy.......
    Licence: GPLv2 or later
    Text Domain: portfolio-plugin
 */


 //security check
 defined('ABSPATH') or die('Hey you hacker! Got ya!');


// Checking if composer exists
if(file_exists(dirname(__FILE__).'/vendor/autoload.php')){
    require_once(dirname(__FILE__).'/vendor/autoload.php');
}
function activate_portfolioplugin(){
    //Inc\Base\Activate::activate();
}

function deactivate_portfolioplugin(){
    //Inc\Base\Deactivate::deactivate();
}


if(class_exists('Inc\\Init')){
    Inc\Init::register_services(); 
}