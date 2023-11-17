<?php
# Kết nối cơ sở dữ liệu
include("config.php");

$selectedClass = $_POST['selectedClass'];

$temparray = array();

// Lấy danh sách các cột Week từ cơ sở dữ liệu
$sqlColumns = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'class' AND COLUMN_NAME LIKE 'W_%'";
$resultColumns = $conn->query($sqlColumns);

$columns = array();

if ($resultColumns->num_rows > 0) {
    while ($rowColumns = $resultColumns->fetch_assoc()) {
        $columns[] = $rowColumns['COLUMN_NAME'];
    }
}

// Đếm số giá trị không null trong từng cột Week
foreach ($columns as $column) {
    if($selectedClass == 'all'){$sqlCount = "SELECT COUNT(*) as count FROM class WHERE $column IS NOT NULL";}
    else{$sqlCount = "SELECT COUNT(*) as count FROM class WHERE class='$selectedClass' AND $column IS NOT NULL";}
    $resultCount = $conn->query($sqlCount);

    if ($resultCount->num_rows > 0) {
        $rowCount = $resultCount->fetch_assoc();
        $count = $rowCount['count'];
        $temparray[$column] = (int)$count;
    }
}

mysqli_close($conn);
echo json_encode(array($temparray));
?>