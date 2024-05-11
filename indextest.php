<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Tambah Job Completion Report</title>
</head>
<body>
	<center>
		<h1>List JCR & WO</h1>

		<h3><a href="form.php">Tambah JCR</a></h3>
		<h3><a href="woform.php">Tambah WO</a></h3>

		<br>
		<br>
		<table>
			<tr>
				<td>
		<h2>List JCR</h2>
		<table border="1">
			<tr>
				<td>No</td>
				<td>Refrence</td>
				<td>Customer</td>
				<td>View Data</td>
			</tr>
			<?php
			include "koneksi.php";
			$no = 1;
			$data = mysqli_query($koneksi, "select * from jcr_pdf");
			while ($d = mysqli_fetch_array($data)) {
			?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $d['refrence']; ?></td>
					<td><?php echo $d['customer_name']; ?></td>
					<td>
						<a href="view.php?id=<?php echo $d['id']; ?>">LIHAT</a> ||
						<a href="hapus.php?id=<?php echo $d['id']; ?>">HAPUS</a>
					</td>
				</tr>
			<?php
			}
			?>
			
			</table>

		</td>
		<td>	
			<h2>List WO</h2>
			<table border="1">
				<tr>
				<td>No</td>
				<td>Refrence</td>
				<td>Customer</td>
				<td>View Data</td>
			</tr>
			<?php
			include "koneksi.php";
			$no = 1;
			$data = mysqli_query($koneksi, "select * from wo_pdf");
			while ($d = mysqli_fetch_array($data)) {
			?>
				<tr>
					<td><?php echo $no++; ?></td>
					<td><?php echo $d['refrence']; ?></td>
					<td><?php echo $d['customer_name']; ?></td>
					<td>
						<a href="view.php?id=<?php echo $d['id']; ?>">LIHAT</a> ||
						<a href="hapus.php?id=<?php echo $d['id']; ?>">HAPUS</a>
					</td>
				</tr>
			<?php
			}
			?>
			</tr>
			</table>
			</td>
		</table>
	</center>
</body>
</html>