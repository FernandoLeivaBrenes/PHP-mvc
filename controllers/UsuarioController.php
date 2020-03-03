<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * CONTROLADOR Usuario - entidad usuario en la BBDD
     * 
     * @access public
     * @category controller
     */

    require_once "core/TwigInitController.php";
    require_once "models/Usuario.php";

    class UsuarioController extends TwigInitController
    {
        public function __construct() { 
            parent::__construct() ;
        }

        /**
         * Vista de todo
         */
        public function see()
        {
            $modelInfo = Usuario::findAll();
            // Recuperamos la vista :
            echo $this->twig->render("usuario/AllUsuario.php.twig", ['APP_NAME'  => APP_NAME ,
                                                             'modelInfo' => $modelInfo,
                                                             'route'     => route_made()
                                                             ]);
        }

        /**
         * Borrado de uno según IP
         */
        public static function delete()
        {
            $id = $_GET["id_"];
			Database::getInstance()
                    ->query("DELETE FROM ".Usuario::get('tabla')." WHERE ".Usuario::get('id')." = '$id';") ;

            route_redirect( 'usuario' );
		}
    }