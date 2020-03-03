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

    class LoginController extends TwigInitController
    {
        public function __construct() { 
            parent::__construct() ;
        }

        /** */
        public function login()
        {
            $modelInfo = [
                            'error' => false,
                         ];

            $control = new Control();
                         
            if( is_null($control) ):
                echo $this->twig->render("login/login.php.twig", ['APP_NAME'  => APP_NAME ,
                                                             'modelInfo' => $modelInfo,
                                                             'route'     => route_made()
                                                             ]);
            else:
                echo $this->twig->render("coche/AllCoche.php.twig", ['APP_NAME'  => APP_NAME ,
                                                            'modelInfo' => $modelInfo,
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