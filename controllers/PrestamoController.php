<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * CONTROLADOR prestamo - entidad prestamo en la BBDD
     * 
     * @access public
     * @category controller
     */

    require_once "core/TwigInitController.php";
    require_once "models/Prestamo.php";

    class PrestamoController extends TwigInitController
    {
        public function __construct() { 
            parent::__construct() ;
        }

        /**
         * Vista de todo
         */
        public function see()
        {
            $modelInfo = Prestamo::findAll();
            // Recuperamos la vista :
            echo $this->twig->render("prestamo/AllPrestamo.php.twig", ['APP_NAME'  => APP_NAME ,
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
			Prestamo::delete($id);
            route_redirect( 'prestamo' );
		}
    }