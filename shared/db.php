<?php
 public function connect_db(){
    $this->connection= mysqli_connect("172.31.22.43","Kunj200524563","_hS6p3qRsz","Kunj200524563");
    if(mysqli_connect_error()){
        die("Database connection failed: " . mysqli_connect_error());
    }
}
?>