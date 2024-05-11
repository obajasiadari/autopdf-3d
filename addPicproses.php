<?php
//konektor database
include 'koneksi.php';

//menangkapdata yang di kirim dari form
$nama = $_POST['nama'];
$title = $_POST['title'];


//menginput data ke database
mysqli_query($koneksi,"insert into pic values('','$nama','$title')");
header("location:../pdf");
