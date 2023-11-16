<?php
include("config.php");


$temparray = array();

$sqlselect = "SELECT * FROM 20146_class where class = '20143'";
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