<!doctype html>
<html lang="en">
  <head>
  	<title>Sidebar 02</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	        			  <i class="fa fa-bars"></i>
	         			 <span class="sr-only">Toggle Menu</span>
	        		</button>
        		</div>
				<div class="p-4 pt-5">
		  		<h1><a href="index.html" class="logo">Laporan</a></h1>
	        <ul class="list-unstyled components mb-5">
	        <li class="active">
	              <a href="index.php">Dashboard</a>
	        </li>
	          <li>
	            <a href="#jcrSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">JCR</a>
	            <ul class="collapse list-unstyled" id="jcrSubmenu">
	                <li>
	                    <a href="form.php">Buat JCR</a>
	                </li>
	                <li>
	                    <a href="#">List JCR</a>
	                </li>
	            </ul>
	          </li>
	          <li>
              <a href="#woSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Work Order</a>
              <ul class="collapse list-unstyled" id="woSubmenu">
                <li>
                    <a href="woform.php">Buat WO</a>
                </li>
                <li>
                    <a href="#">List WO</a>
                </li>
              </ul>
	          </li>
	          <li>
              <a href="#dataSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Tambah Data</a>
              <ul class="collapse list-unstyled" id="dataSubmenu">
                <li>
                    <a href="addCustomer.php">Tambah Customer</a>
                </li>
                <li>
                    <a href="addPic.php">Tambah PIC</a>
                </li>
              </ul>
	          </li>
	        </ul>
    	</nav>

        <!-- Page Content  -->
		<div id="content" class="p-4 p-md-5 pt-5">
