<?php

    /**
     * @author Fernando Leiva Brenes
     * CONTROL DE ACCESO
     */

    class Control
    {
        private $sesion = null;

        public function __construct()
        {
            if(empty($_SESSION)):

                if ( !empty($_POST['email'])&& (!empty($_POST['pass'])) ):

                    $email = $_POST['email'];
                    $pass = $_POST['pass'];
                    
                    $usuario = Usuario::findUser( $email, $pass )->getObject('usuario');

                    if ( $usuario ):
                        session_start();
                        $_SESSION['email'] = $_POST['email'];
                        $_SESSION['usuario_data'] = $usuario;

                    endif;

                    $sesion = $_SESSION;

                endif;

            endif;

            return $this->sesion;
        }

    }
