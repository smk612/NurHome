<!DOCTYPE html>
<html lang="en"> 
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>NURSING HOME - Responsive HTML &amp; Bootstrap Template</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
	<script src="js/modernizr.js"></script>
	<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	
	<!-- ====================================================
	header section -->
	<header class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-5 header-logo">
					<br>
					<a href="index.html"><img src="img/logo.png" alt="" class="img-responsive logo"></a>
				</div>

				<div class="col-md-7">
					<nav class="navbar navbar-default">
					  <div class="container-fluid nav-bar">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      
					      <ul class="nav navbar-nav navbar-right">
					        <li><a class="menu active" href="insert_main.php">Departmental Records</a></li>
							</ul>
					    </div><!-- /navbar-collapse -->
					  </div><!-- / .container-fluid -->
					</nav>
				</div>
			</div>
		</div>
	</header><!-- end of header area -->
							
<?php

$conn = new mysqli("localhost", "root", "","nurhome");

if ($conn->connect_error)
{
	echo '<font size="4">Connection failed: ' . $conn->connect_error .'</font>';
}
else
{
	$run = $conn->query("SELECT `dept_name`, `doctor`.`d_name`, `d_visit_charge`, `d_consult_charge`,dept_id FROM `department` left join `doctor` on `department`.`dept_head`=`doctor`.`d_id` order by `dept_name`");

	if($run->num_rows > 0)
	{
?>

<br><br><br>
<br><br><br>
<br>
<table border="2" width="900" align="center" bgcolor=lightblue>
<tr>
<th><font size=5> DEPARTMENT </th>
<th><font size=5> HEAD DOCTOR </th>
<th><font size=5> VISIT CHARGE</th>
<th><font size=5> CONSULT CHARGE </th>
</tr>

<?php
		while($row = $run->fetch_array())
		{	
			$department = $row[0];
			$name = $row[1];
			$gender = $row[2];
			$qual = $row[3];
		
			echo	"<tr>
						<td><font size=4><a href='getdept.php?q=".$row[4]."'>$department</a></td>
						<td><font size=4>$name</td>
						<td><font size=4>$gender</td>
						<td><font size=4>$qual</td>
					</tr>";
		}
	}
	else
	{
		echo '<font size="4">No Rows To Display</font>';
	}

	$conn->close();
}
?>


</table>

<form action="index.php" method="get">
	<br /><input type="submit" name="back" value="BACK"/>
</form>

</body>
</html>
