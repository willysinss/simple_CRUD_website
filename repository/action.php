<?php

function action(){
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if($_POST['operation'] === 'insert'){

            $tglPenilaian = $_POST['tanggalPenilaian'];
            $nik = $_POST['nik'];
            $nama = $_POST['nama'];
            $statusKerja = $_POST['statusKerja'];
            $posisi = $_POST['posisi'];
            $responsibility = $_POST['responsibility'];
            $teamWork = $_POST['teamWork'];
            $time = $_POST['time'];
            $total = $_POST['total'];
            $grade = $_POST['grade'];
        
            $fileInput = $_FILES['fileInput']; 
    
            if ($fileInput['error'] === UPLOAD_ERR_OK) {
                $uploadDir = 'image/';
                $fileName = basename($fileInput['name']); 
    
                $fileTempName = $fileInput['tmp_name'];
                $filePath = $uploadDir . $fileName;
    
                if (move_uploaded_file($fileTempName, $filePath)) {
                    include 'db/connection.php';
    
                    $query = "INSERT INTO performance (tgl_penilaian, nik, nama, status_kerja, position, responsibility, teamwork, management_time, total, grade, foto) 
                              VALUES ('$tglPenilaian', '$nik', '$nama', '$statusKerja', '$posisi', '$responsibility', '$teamWork', '$time', '$total', '$grade', '$fileName')"; // Menggunakan $fileName saja
    
                    if (!mysqli_query($con, $query)) {
                        echo "Gagal menyimpan data: " . mysqli_error($con);
                    } 
                } else {
                    echo "Gagal mengunggah file.";
                }
            } else {
                echo "Terjadi kesalahan saat mengunggah file.";
            }
        }
        else if($_POST['operation'] === 'update'){
            // Mengambil data dari formulir
            $tglPenilaian = $_POST['tanggalPenilaian'];
            $nik = $_POST['nik'];
            $nama = $_POST['nama'];
            $statusKerja = $_POST['statusKerja'];
            $posisi = $_POST['posisi'];
            $responsibility = $_POST['responsibility'];
            $teamWork = $_POST['teamWork'];
            $time = $_POST['time'];
            $total = $_POST['total'];
            $grade = $_POST['grade'];

           
            $fileInput = $_FILES['fileInput'];

            if ($fileInput['error'] === UPLOAD_ERR_OK) {
                $uploadDir = 'image/';
                $fileName = basename($fileInput['name']);

                $fileTempName = $fileInput['tmp_name'];
                $filePath = $uploadDir . $fileName;

                if (move_uploaded_file($fileTempName, $filePath)) {
                    $updateFoto = ", foto = '$fileName'";
                } else {
                    echo "Gagal mengunggah file.";
                    return; 
                }
            } else {
                $updateFoto = ''; 
            }

            include 'db/connection.php';

            $query = "UPDATE performance 
                    SET tgl_penilaian = '$tglPenilaian', 
                        nama = '$nama', 
                        status_kerja = '$statusKerja', 
                        position = '$posisi', 
                        responsibility = '$responsibility', 
                        teamwork = '$teamWork', 
                        management_time = '$time', 
                        total = '$total', 
                        grade = '$grade' 
                        $updateFoto
                    WHERE nik = '$nik'";

            if (!mysqli_query($con, $query)) {
                echo "Gagal memperbarui data: " . mysqli_error($con);
            }
         }
    }        
}
?>