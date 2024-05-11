<?php
//konektor database
include 'koneksi.php';

//menangkapdata yang di kirim dari form
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$contact = $_POST['contact'];

//menginput data ke database
mysqli_query($koneksi,"insert into dlist_customer_name values('','$nama','$alamat','$contact')");
header("location:../pdf");
