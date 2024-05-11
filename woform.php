<?php include "header.php";?>

		<h1>
			FORM WORK ORDER
		</h1>
		<br />
		<h3>TAMBAH DATA</h3>
		<form method="post" action="workorder.php" target="_blank">
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
			<label for="customerAdd">Customer Address</label>
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
			<br>
			<label for="contact"> Contact Number</label>
			<input type="text" id="contact" name="contact">
			<br>
			<label for="wo_works">Details of Work</label>
			<button type="button" id="addWo_Works">Add List</button>
			<br>
			<input type="text" name="worksTitle" value="description" disabled>
			<input type="text" name="remarksTitle" value="Remark" disabled><br>
			<div id="works">
        	</div>
        	<label for="Used">Device Used</label>
			<button type="button" id="addUsed">Add List</button>
			<br>
			<input type="text" name="itemDes" value="Item Description" disabled>
			<input type="text" name="iemQty" value="QTY" disabled>
			<input type="text" name="remarksTitle" value="Remark" disabled><br>
			<div id="Used">
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


<?php include "footer.php";?>

	<script>
        $(document).ready(function() {
            $("#addWo_Works").click(function() {
                $("#works").append('<input type="text" name="works[]" required>'),
                $("#works").append('<input type="text" name="remarks[]" required><br>');
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            $("#addUsed").click(function() {
                $("#Used").append('<input type="text" name="itemDes[]" required>'),
                $("#Used").append('<input type="text" name="itemQty[]" required>'),
                $("#Used").append('<input type="text" name="remarksUsed[]" required><br>');
            });
        });
    </script>
