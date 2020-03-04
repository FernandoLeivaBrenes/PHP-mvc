<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * CONTROLADOR FRONTAL - Todas las consultas y peticiones pasan a través de este controlador
     * 
     * @access public
     * @return Views - vistas necesarias para el usuario final.
     */

    require_once "config/global.php";
    require_once "core/FrontController.func.php";

    if(isset($_GET["con"])){
        $controller_obj=loadCtrl($_GET["con"]);
        doAction($controller_obj);
    }else{
        $controller_obj=loadCtrl(APP_DEFAULT_CONTROLLER);
        doAction($controller_obj);
    }

    //echo "<pre>--".print_r($_SESSION, true)."</pre>";