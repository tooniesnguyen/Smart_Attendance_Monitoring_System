<?php
// Connect to database
$server = "localhost";
$user = "Nhan"; 
$pass = "Nh@n";
$dbname = "IOT_Face";

$conn = mysqli_connect($server,$user,$pass,$dbname);

// Check connection
if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}


?>