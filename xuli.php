<?php
include_once ('config/db.php');
if (isset($_POST['submit'])) {
    if ($_FILES['uploadFile']['name'] != NULL) {
        // Kiểm tra file up lên có phải là ảnh không
        if ($_FILES['uploadFile']['type'] == "image/jpeg" || $_FILES['uploadFile']['type'] == "image/png" || $_FILES['uploadFile']['type'] == "image/gif") {

            // Nếu là ảnh tiến hành code upload
            $path = "images/"; // Ảnh sẽ lưu vào thư mục images
            $tmp_name = $_FILES['uploadFile']['tmp_name'];
            $name = $_FILES['uploadFile']['name'];
            // Upload ảnh vào thư mục images
            move_uploaded_file($tmp_name, $path . $name);
            $image_url = $path . $name; // Đường dẫn ảnh lưu vào cơ sở dữ liệu
            // Insert ảnh vào cơ sở dữ liệu
            $sql = "INSERT INTO 'image' ('image_url', 'created') VALUES ('$image_url','" . date('Y-m-d H:i:s') . "')";
            $smt = mysqli_prepare($conn, $sql);
            if (mysqli_stmt_execute($smt)) {
                echo 'Thêm thành công ảnh';
            } else {
                echo 'Không thể thêm được ảnh';
            }
        } else {
            // Không phải file ảnh
            echo "Kiểu file không phải là ảnh";
        }
    } else {
        echo "Bạn chưa chọn ảnh upload";
    }
}
?>