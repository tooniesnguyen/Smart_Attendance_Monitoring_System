<?php

$selectedClass = $_POST['selectedClass'];

include("config.php");


$temparray = array();
if($selectedClass == "all"){$sqlselect = "SELECT * FROM class ";}
else{$sqlselect = "SELECT * FROM class where class = '$selectedClass'";}

$result = $conn->query($sqlselect);
if ($result->num_rows > 0){
    while($row = $result->fetch_assoc()) 
    {
        array_push($temparray, $row); //save your data into array
    }
}
mysqli_close($conn);

echo json_encode($temparray);

?>