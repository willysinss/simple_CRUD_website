<?php

include '../db/connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    if (isset($_POST['nik'])) {
        $nikToDelete = $_POST['nik'];

        $query = "DELETE FROM performance WHERE nik = '$nikToDelete'";

        if (mysqli_query($con, $query)) {
            echo "success";
        } else {
            echo "Gagal menghapus data: " . mysqli_error($con);
        }
    } else {
        echo "NIK tidak ditemukan dalam permintaan.";
    }
} else {
    echo "Permintaan tidak valid.";
}
?>
