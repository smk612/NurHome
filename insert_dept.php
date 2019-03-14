<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "","nurhome");
$err=0;
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$name = mysqli_real_escape_string($link, $_REQUEST['d_name']);
$hod = mysqli_real_escape_string($link, $_REQUEST['hod']);
$visit = mysqli_real_escape_string($link, $_REQUEST['v_c']);
$consult = mysqli_real_escape_string($link, $_REQUEST['c_c']);

// attempt insert query execution
$res=mysqli_query($link,"SELECT * FROM doctor WHERE d_id = '$hod'");
if(mysqli_num_rows($res) == 0)
{
	if($hod!=0)
	{
		$sql = "INSERT INTO department (dept_name, d_visit_charge, d_consult_charge, dept_head) VALUES ('$name', '$visit', '$consult','$hod')";
	}
	else
	{
		$sql = "INSERT INTO department (dept_name, d_visit_charge, d_consult_charge) VALUES ('$name', '$visit', '$consult')";
	}
	if(mysqli_query($link, $sql)){
	    echo '<script language="javascript">';
		echo 'alert("Records added successfully into table department.")';
		echo '</script>';  	   
	} else{
	    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);$err=1;
	}
	if($hod!=0)
	{
		$sql1 = "UPDATE doctor SET d_dept = LAST_INSERT_ID() WHERE d_id = '$hod'";
		if(mysqli_query($link, $sql1))
		{
    		echo '<script language="javascript">';
			echo 'alert("Records updated successfully in table doctor.")';
			echo '</script>'; 
		} 
		else
		{
    		echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);$err=1;
		}
	}
}
else
{
	echo '<script language="javascript">';
	echo 'alert("The person you chose as Head of the Department is part of another Department.")';
	echo '</script>';  
}
 
// close connection
mysqli_close($link);
?>
<br><a href="insert_main.php" id="defaultOpen">Go Back</a>
<script>
	if($err!=1)
	{
		document.getElementById("defaultOpen").click();
	}
</script>
