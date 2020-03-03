<?php

    /**
     * @author Fernando Leiva Brenes
     * ACCESO A LA BASE DE DATOS
     */

    class Database
    {
        private $pdo = null ;
		private $resultado ;

		private static $instance = null;

		/**
		 * Conexión de la base de datos
		 */
		private function __construct()
		{
			$database_properties = require_once "config/database_properties.php";
			
			$this->pdo = new PDO( $database_properties["driver"].":host=".$database_properties["host"].";dbname=".$database_properties["dbno"].";charset=utf8",$database_properties["user"],$database_properties["pass"])
						 or die("Error de conexión con la base de datos.") ;
		}

		/**
		 * Cierra la conexión de la base de datos antes de eliminar el el objeto Database.
		 */
		public function __destruct()
		{
			$this->pdo = null ;
		}

		/**
		 * Realizar consultas a la base de datos
         * @param string $sql : Consulta sql a resolver
		 */
		public function query($sql)
		{
			// echo $sql;
			// die();
			$this->resultado = $this->pdo->query($sql);
			return $this;
		}

		/** */
		public static function getInstance()
		{
			if (Database::$instance==null)
				Database::$instance = new Database() ;

			// devolvemos la instancia
			return Database::$instance ;
		}

		/**
		 * Devuelve un registro en formato de objeto
         * @param string $clase : Clase a la que formatea el registro, por defecto clase estándar de pdo::fechObject(StnClass)
		 */
		public function getObject($clase = "StdClass")
		{
			return $this->resultado->fetchObject($clase) ;
		}

		/**
		 * Devuelve varios registros en formato de objeto
         * @param string $clase : Clase a la que formatea el registro, por defecto clase estándar de pdo::fechObject(StnClass)
		 */
		public function getObjects($clase = "StdClass")
		{
			$data = [];

			while ( $obj = $this->getObject($clase))
				array_push($data, $obj);

			return $data;
		}

		/**
		 * Devuelve el último id introducido en la base de datos
		 */
		public function lastIdIn()
		{
			return $this->pdo->lastInsertId() ;
		}

    }