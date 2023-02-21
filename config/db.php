<?php
class DatabaseConnection {
  private $servername;
  private $username;
  private $password;
  private $dbname;
  private $conn;

  function __construct($servername, $username, $password, $dbname) {
    $this->servername = $servername;
    $this->username = $username;
    $this->password = $password;
    $this->dbname = $dbname;
  }
  function connect() {
    $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
    if ($this->conn->connect_error) {
        die("Connection failed: " . $this->conn->connect_error);
    } 
    return $this->conn;
}
}
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chatbot";

$connection = new DatabaseConnection($servername, $username, $password, $dbname);
$conn = $connection->connect();

?>