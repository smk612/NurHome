<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/w3.css" rel="stylesheet">
</head>
<body>
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "","nurhome");
$err=0;
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$pat = mysqli_real_escape_string($link, $_REQUEST['apat']);
$dept = mysqli_real_escape_string($link, $_REQUEST['adept']);
$type = mysqli_real_escape_string($link, $_REQUEST['btype']);
$doc = mysqli_real_escape_string($link, $_REQUEST['adoc']);
$date = mysqli_real_escape_string($link, $_REQUEST['adate']);
if($pat == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Patient to Admit!")';
	echo '</script>'; 
}
else if($dept == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Department to Admit to!")';
	echo '</script>'; 
}
else if($doc == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Doctor to Admit under!")';
	echo '</script>'; 
}
else
{
	$res = mysqli_query($link,"SELECT b_id FROM bed WHERE dept_id='$dept' AND b_type='$type' AND b_id NOT IN (SELECT b_id FROM t_admit WHERE disc_date IS NULL)");
	
	$res1 = mysqli_query($link, "SELECT p_id FROM t_admit WHERE p_id='$pat' AND disc_date IS NULL");
	if(mysqli_num_rows($res1)>0){
		echo "This Patient has not yet being discharged.";
	}
	else{
	if (mysqli_num_rows($res) > 0) 
	{
		$row=mysqli_fetch_array($res);
		$bid=$row[0];
		$sql1 = "INSERT INTO t_admit (p_id, d_id, b_id, admit_date) VALUES ('$pat', '$doc', '$bid', '$date')";
		if(mysqli_query($link, $sql1)){
		   	echo '<script language="javascript">';
			echo 'alert("A Patient has been succesfully admitted.")';
			echo '</script>'; 
		} else{
		    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);$err=1;
		}
	}
	else{
		echo "<p>Sorry, No Free Beds Available in the chosen Department/of the ". $type." Type. Alternate Beds are displayed of that department.</p>";
		$res2 = mysqli_query($link,"SELECT b_type FROM bed WHERE dept_id='$dept' AND b_id NOT IN (SELECT b_id FROM t_admit WHERE disc_date IS NULL)");
		if (mysqli_num_rows($res2) > 0) 
		{
			echo"<table class='w3-table-all w3-card-4'>
			<tr>
				<th>Bed Types Available</th>
			</tr>";
			while($row2 = mysqli_fetch_array($res2)) {
    			echo "<tr>";
    			echo "<td>" . $row2[0] . "</td></tr>";
    			}
    		echo "</table>";
		}
		else
		{
			echo "<p>Sorry, no free beds in the said department.</p>";
		}
		
	}
	}
}
// close connection
mysqli_close($link);
?>

<br><a href="insert_trans.php" id="defaultOpen">Go Back</a>
</body>
<script>
	var err = '<?php echo $err; ?>';
	if(err == 0)
	{
		document.getElementById("defaultOpen").click();
	}
	else
		echo err;
</script>
</html>
