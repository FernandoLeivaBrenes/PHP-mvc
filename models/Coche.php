<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * MODELO COCHE - entidad coche en la BBDD
     * 
     * @access public
     * @category model
     */

    require_once "core/Model.php";

    class Coche extends Model
    {
        protected $id = 'coche_id';
        protected $tabla = 'coche';
    }