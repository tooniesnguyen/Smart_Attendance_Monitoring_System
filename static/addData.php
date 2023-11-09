<?php
// doc du lieu tu website gui ve
$id = $_POST["id"];
$rfid = $_POST["rfid"];
$name = $_POST["name"];
$class = $_POST["class_st"];

// ket noi database
include("config.php");

// gui data xuong database
$sql = "insert into 20146_class(id,rfid,name,class) values ('$id','$rfid','$name','$class')";
mysqli_query($conn, $sql);

// ngat ket noi voi database
mysqli_close($conn);
?>
