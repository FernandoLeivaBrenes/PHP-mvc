<?php

    /**
    * @author Fernando Leiva Brenes
     * Funciones que realizará el controlador principal
     * @link https://victorroblesweb.es/2014/07/15/ejemplo-php-poo-mvc/
     * 
     * @access public
     * @see index.php - acceso a la aplicación
     */

    function loadCtrl($controller)
    {
        // Creamos el nombre del controlador mayusculas la primera letra
        $ctrl_name = ucwords($controller)."Controller";

        // Definimos la ruta del controlador
        $routeFileController='controllers/'.$ctrl_name.'.php';

        // Comprobamos que el controlador existe en la ruta indicada
        if(!is_file($routeFileController)){
            $routeFileController='controllers/'.ucwords(APP_DEFAULT_CONTROLLER).'Controller.php'; 
        }

        // Adjuntamos el controlador
        require_once $routeFileController;
        // lo instanciamos
        $ctrl_obj = new $ctrl_name();
        // y devolvemos el objeto
        return $ctrl_obj;
    }

    function loadAction($ctrl_obj ,$action){
        $ctrl_obj->$action();
    }
     
    function doAction($controller_obj){
        if(isset($_GET["act"]) && method_exists($controller_obj, $_GET["act"])){
            loadAction($controller_obj, $_GET["act"]);
        }else{
            loadAction($controller_obj, APP_DEFAULT_ACTION);
        }
    }

    function route_made($extra = null)
    {
        
        $protocol = $_SERVER['REQUEST_SCHEME'];
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');

        return "$protocol://$host$uri/$extra";
    }

    function route_redirect($extra)
    {    
        $protocol = $_SERVER['REQUEST_SCHEME'];
        $host  = $_SERVER['HTTP_HOST'];
        $uri   = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');

        header("Location: $protocol://$host$uri/$extra");
    }