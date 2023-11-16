<?php
include("config.php");

if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

if ($_FILES['csvFile']['error'] == UPLOAD_ERR_OK && $_FILES['csvFile']['type'] === 'text/csv') {
    $file = $_FILES['csvFile']['tmp_name'];
    $handle = fopen($file, "r");

    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        if ($row == 0) {
            $row++;
            continue;
        }
        $id = $data[0]; // Cột 1 trong file CSV
        $rfid = $data[1]; // Cột 2 trong file CSV
        $name = $data[2]; // Cột 1 trong file CSV
        $class = $data[3]; // Cột 2 trong file CSV
        

        // Thực hiện truy vấn chèn dữ liệu vào bảng của bạn, ví dụ:
        $sql = "INSERT INTO  20146_class(id,rfid,name,class) values ('$id','$rfid','$name','$class')";
        if ($conn->query($sql) === TRUE) {
            echo "Dữ liệu đã được chèn vào cơ sở dữ liệu thành công!";
        } else {
            echo "Lỗi: " . $sql . "<br>" . $conn->error;
        }
    }
    fclose($handle);
} else {
    echo "Vui lòng chọn một file CSV!";
}

$conn->close();

?>