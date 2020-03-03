<?php

    /**
     * @author Fernando Leiva Brenes
     * CONTROLADOR BÁSICO PARA EL USO DE TWIG
     * @access protected
     * @abstract
     */

    require_once "vendor/autoload.php";

    abstract class TwigInitController
    {
        protected $twig;
        
        public function __construct()
        {
            $loader = new \Twig\Loader\FilesystemLoader("./views");
            $this->twig = new \Twig\Environment($loader);
        }
    }