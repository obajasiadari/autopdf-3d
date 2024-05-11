<?php include "header.php";?>

		<h1>
			FORM Job Completion Report
		</h1>
		<br />
		<h3>TAMBAH DATA</h3>
		<form method="post" action="index2.php" target="_blank">
			<label for="refrence"> Refrence Number </label>
			<input type="text" id="refrence" name="refrence">
			<br>
			<label for="customer">Customer Name</label>
			<input list="customername" name="customer">
			<datalist id="customername">
				<?php
				include 'koneksi.php';

				$query=mysqli_query($koneksi, 'select * from dlist_customer_name');
				while($row=mysqli_fetch_array($query))
				{
					echo "<option> $row[nama]</option>";
				}
				?>
			</datalist>
			<br>		
			<label for="customerAdd">Customer Address
			<input list="customerAdd" name="Add">
			<datalist id="customerAdd">
				<?php
				$query=mysqli_query($koneksi, 'select * from dlist_customer_name');
				while($row=mysqli_fetch_array($query))
				{
					echo "<option> $row[alamat]</option>";
				}
				?>
			</datalist>
			<br><br>
			<label for="location">Location and Description of Project</label>
			</label>
			<br>
			<textarea id="location" name="location" style="width: 300px;height: 300px;">
			</textarea>
			<br>
			<label for="works">Items of Works</label>
			<button type="button" id="addWorks">Add List</button>
			<div id="works">
            <input type="text" name="works[]" required><br>
        	</div>
			<label for="cdate">Actual Job Completion Date</label>
			<input type="datetime-local" name="cdate">
			<label for="technician"> Technician </label>
			<input list="technician" name="technician">
			<datalist id="technician">
				<?php
				$query=mysqli_query($koneksi, 'select * from pic');
				while($row=mysqli_fetch_array($query))
				{
					echo "<option> $row[nama]</option>";
				}
				?>
			</datalist>
			<input type="submit" value="submit" name="submit">

		</form>
	</div>
</div>
</div>
	
<?php include "footer.php";?>