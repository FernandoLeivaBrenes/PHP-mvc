<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * MODELO USUARIO - entidad usuario en la BBDD
     * 
     * @access public
     * @category model
     */

    require_once "core/Model.php";

    class Usuario extends Model
    {
        protected $id = 'usuario_id';
        protected $tabla = 'usuario';
    }