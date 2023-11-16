<?php
# Kết nối cơ sở dữ liệu
include("config.php");

$temparray = array(
    "on_time" => 0,
    "late" => 0,
    "absent" => 0
);

$sqlselect = "SELECT * FROM class";
$result = $conn->query($sqlselect);

if ($result->num_rows > 0){
    while($row = $result->fetch_assoc()) {
        // Lấy giờ từ cột W_1
        $time_w1 = $row['W_1'];

        // Kiểm tra giờ và thực hiện tính toán
        if (!is_null($time_w1) && $time_w1 <= '14:20'){
            $temparray['on_time'] += 1;
        } elseif ($time_w1 > '14:20') {
            $temparray['late'] += 1;
        } else {
            $temparray['absent'] += 1;
        }
    }
}

mysqli_close($conn);
echo json_encode(array($temparray));
?>