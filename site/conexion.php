<?php
	class Connect {
		private $host = '172.19.0.1:8010';
		private $dbname = 'db_docker';
		private $user = 'root';
		private $pass = '123456';

		public function connect() {
			try{
				$conn = new PDO('mysql:host=' . $this->host . '; dbname=' . $this->dbname, $this->user, $this->pass);
				$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				return $conn;
			}catch(PDOException $e){
				echo 'Database Error: ' . $e->getMessage(); 
			}
		}
	}
?>