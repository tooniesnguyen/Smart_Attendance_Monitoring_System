<?php
// doc du lieu tu website gui ve
$sid = $_POST["sid"];
$name = $_POST["name"];
$class = $_POST["class_st"];

// ket noi database
include("config.php");

// gui data xuong database
$sql = "insert into class(sid,name,class) values ('$sid','$name','$class')";
mysqli_query($conn, $sql);

// ngat ket noi voi database
mysqli_close($conn);
?>
