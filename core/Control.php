<?php

    /**
     * @author Fernando Leiva Brenes
     * CONTROL DE ACCESO
     */

    class Control
    {
        private $sesion = null;
        private static $instance = null;

        private function __construct()
        {
            if((!empty($_POST['email'])) && (!empty($_POST['pass']))):
                
                $email = $_POST['email'];
                $pass = $_POST['pass'];
                
                $usuario = Usuario::findUser( $email, $pass )->getObject('usuario');
                
                if ( !empty($usuario) ):
                    session_start();
                    $_SESSION['email'] = $_POST['email'];
                    $_SESSION['usuario_data'] = $usuario;
                    $this->sesion = $_SESSION;
                endif;

            endif;
        }

        public static function getInstance()
        {
            if( is_null(self::$instance) ):
                self::$instance = new Control();
            else:
                self::$instance = $_SESSION;
            endif;

            return self::$instance ;
        }

        public function getSesion()
        {
            return $this->sesion;
        }

    }
