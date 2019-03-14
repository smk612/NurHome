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
					        <li><a class="menu active" href="insert_main.php">Records</a></li>
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
	$run = $conn->query("SELECT `department`.dept_name, `doctor`.`d_name`, `doctor`.`d_gender`, `doctor`.`d_qual`, `doctor`.`d_phone`, `d_visit`.`d_fee_per_visit`, doctor.d_id, department.dept_id FROM `DOCTOR` left join `department` on `doctor`.d_dept=`department`.dept_Id JOIN `d_visit` ON `doctor`.`d_id`=`d_visit`.`d_id` where `d_type`!='Disc' order by `dept_name`");

	if($run->num_rows > 0)
	{
?>

<br><br><br>
<br><br><br>
<br>
<table border="2" width="900" align="center" bgcolor=lightblue>
<tr>
<th><font size=5> NAME </th>
<th><font size=5> DEPARTMENT </th>
<th><font size=5> GENDER</th>
<th><font size=5> QUALIFICATION </th>
<th><font size=5> PHONE </th></font>
<th><font size=5> VISIT FEE </th></font>
</tr>

<?php
		while($row = $run->fetch_array())
		{	
			$name = $row[1];
			$department = $row[0];
			$gender = $row[2];
			$qual = $row[3];
			$phone = $row[4];
			$fee = $row[5];
		
			echo	"<tr>
						<td><font size=4><a href='getdoc.php?q=".$row['d_id']."'>$name</td>
						<td><font size=4><a href='getdept.php?q=".$row['dept_id']."'>$department</a></td>
						<td><font size=4>$gender</td>
						<td><font size=4>$qual</td>
						<td><font size=4>$phone</td>
						<td><font size=4>$fee</td></font>
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
