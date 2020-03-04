<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * CONTROLADOR login
     * 
     * @access public
     * @category controller
     */

    require_once "core/TwigInitController.php";
    require_once "models/Usuario.php";
    require_once "models/Coche.php";
    require_once "core/Control.php";

    class LoginController extends TwigInitController
    {
        public function __construct() { 
            parent::__construct() ;
        }

        /** */
        public function login()
        {
            $_SESSION = Control::getInstance();
            //echo "<pre>--".print_r($_SESSION->getSesion(), true)."</pre>";

            if(empty($_SESSION->getSesion())):
                echo $this->twig->render("login/login.php.twig", ['APP_NAME'  => APP_NAME ,
                                                             'route'     => route_made()
                                                             ]);
            else:
                echo $this->twig->render("coche/AllCoche.php.twig", ['APP_NAME'  => APP_NAME ,
                                                             'modelInfo' => $modelInfo = Coche::findAll(),
                                                             'route'     => route_made()
                                                             ]);
            endif;

        }

        public function logout()
        {
            $_SESSION = [];
            session_destroy();
            route_redirect('login');
        }

        
    }