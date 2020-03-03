<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * CONTROLADOR COCHE - entidad coche en la BBDD
     * 
     * @access public
     * @category controller
     */

    require_once "core/TwigInitController.php";
    require_once "models/Coche.php";

    class CocheController extends TwigInitController
    {
        public function __construct() { 
            parent::__construct() ;
        }

        /**
         * Vista de todo
         */
        public function see()
        {
            $modelInfo = Coche::findAll();
            // Recuperamos la vista :
            echo $this->twig->render("coche/AllCoche.php.twig", ['APP_NAME'  => APP_NAME ,
                                                             'modelInfo' => $modelInfo,
                                                             'route'     => route_made()
                                                             ]);
        }
    }