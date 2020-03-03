<?php

	/**
	 * @author Antonio José Sánchez
	 * 
	 * MODELO BASE REFLEXIVO
	 * 
	 * @access public
	 * @category model
	 */

	require_once "core/Database.php" ;

	class Model 
	{
		// Clave primaria: por defecto ID
		protected $id = 'id' ;

		// Nombre de la tabla
		protected $tabla ;

		/**
		 * Getter - devuelve el valor de la propiedad,
		 * para lo cual utilizamos reflexión.
		 */
		protected function get($prop)
		{
			$cls = get_called_class() ;

			$ref = new ReflectionClass(new $cls) ;
			$prp = $ref->getProperty($prop) ;
			$prp->setAccessible(true) ;

			return $prp->getValue(new $cls) ;
		}

		/**
		 *	Busqueda de un solo objeto 
		 */
		public static function find(string $idvalue)
		{
			$pk = self::get('id') ;
			$tb = self::get('tabla') ;

			return Database::getInstance()
					->query("SELECT * FROM $tb 
					    	 WHERE $pk='$idvalue' ;") 
					->getObject(get_called_class()) ;
		}

		/** 
		 * Busca toda infomacion de la tabla
		 */
		public static function findAll()
		{
			$tb = self::get('tabla') ;
			
			return Database::getInstance()
					->query("SELECT * FROM $tb ;")
					->getObjects(get_called_class()) ;
		}

		public static function delete( $idRemove )
		{
			$pk = self::get('id') ;
			$tb = self::get('tabla') ;

			Database::getInstance()
					->query("DELETE FROM $tb WHERE $pk = '$idRemove' ;") ;
		}
	}
