<?php include "header.php";?>

	
<h1>Tambah Customer</h1>
<br />		
	<form method="post" action="addproses.php" target="_blank">
			<label for="nama"> Nama</label>
			<input type="text" id="nama" name="nama">
		<br>
		<label for="alamat"> Alamat</label>
			<input type="text" id="alamat" name="alamat">
		<br>
		<label for="contact"> Contact</label>
			<input type="text" id="contact" name="contact">
		<br>
			<input type="submit" value="submit" name="submit">

		</form>


<?php include "footer.php";?>
