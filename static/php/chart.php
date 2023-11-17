<?php
header('Content-Type: application/json');
$selectedClass = $_POST['selectedClass'];
$selectedWeek = $_POST['selectedWeek'];
# Kết nối cơ sở dữ liệu
include("config.php");



$columns = array("W_1", "W_2", "W_3", "W_4", "W_5", "W_6", "W_7", "W_8", "W_9", "W_10", "W_11", "W_12", "W_13", "W_14", "W_15");

if($selectedWeek != 'all'){$columns = array($columns[$selectedWeek-1]);}
$temparray = array(
    "on_time" => 0,
    "late" => 0,
    "absent" => 0
);

if($selectedClass == "all"){$sqlselect = "SELECT * FROM class ";}
else{$sqlselect = "SELECT * FROM class where class = '$selectedClass'";}

$result = $conn->query($sqlselect);

if ($result->num_rows > 0){
    while($row = $result->fetch_assoc()) {
        foreach ($columns as $column){
        // Lấy giờ từ cột W_1
        $time_column = $row[$column];

        // Kiểm tra giờ và thực hiện tính toán
        if (!is_null($time_column) && $time_column <= '14:20'){
            $temparray['on_time'] += 1;
        } elseif ($time_column > '14:20') {
            $temparray['late'] += 1;
        } else {
            $temparray['absent'] += 1;
        }
    }
    }
}

mysqli_close($conn);
echo json_encode(array($temparray));
?>