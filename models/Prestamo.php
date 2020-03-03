<?php

    /**
     * @author Fernando Leiva Brenes < Fernando.leiva.brenes@gmail.com >
     * 
     * MODELO PRESTAMO - entidad prestamo en la BBDD
     * 
     * @access public
     * @category model
     */

    require_once "core/Model.php";

    class Prestamo extends Model
    {
        protected $id = 'prestamo_id';
        protected $tabla = 'prestamo';

        public static function findAll()
        {
            $tb = self::get('tabla') ;
			
			return Database::getInstance()
					->query("SELECT * FROM prestamo pe, coche co, usuario us WHERE pe.usuario_id = us.usuario_id AND pe.coche_id = co.coche_id ;")
					->getObjects(get_called_class()) ;
        }
    }