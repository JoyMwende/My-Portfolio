<?php
/**
 * @package portfolio plugin
 */

namespace Inc\Api\CallBacks;

use Inc\Base\BaseController;

class AdminCallbacks extends BaseController{

    public function addProjects(){
        return require_once $this->plugin_path.'templates/newproject.php'; 
    }

}
