<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "","nurhome");
$err=0;
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$doc = mysqli_real_escape_string($link, $_REQUEST['vdoc']);
$pat = mysqli_real_escape_string($link, $_REQUEST['vpat']);
$date = mysqli_real_escape_string($link, $_REQUEST['vdate']);
$time = mysqli_real_escape_string($link, $_REQUEST['vtime']);
$comm = mysqli_real_escape_string($link, $_REQUEST['vcomm']);
$flag = mysqli_real_escape_string($link, $_REQUEST['vpaid']);

if($doc == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Doctor!")';
	echo '</script>'; 
}
else if($pat == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Patient!")';
	echo '</script>'; 
}
else
{
	//Next 3 queries may have room for improvement
	$res1 = mysqli_query($link,"SELECT d_visit_charge FROM department WHERE dept_id = (SELECT d_dept FROM doctor WHERE d_id = '$doc')");
	$row1 = mysqli_fetch_array($res1);
	$charge = $row1[0];

	$sql1 = "INSERT INTO t_visit (p_id, d_id, date, time, comment, charge) VALUES ('$pat', '$doc', '$date', '$time', '$comm', '$charge')";
	if(mysqli_query($link, $sql1)){
	   	echo '<script language="javascript">';
		echo 'alert("A new Visit has been registered.")';
		echo '</script>'; 
	} else{
	    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);$err=1;
	}
	
	$sql2 = "INSERT INTO t_bill (p_id, t_id, t_type, charge, status) VALUES ('$pat',LAST_INSERT_ID(), 'V', '$charge', '$flag')";
	if(mysqli_query($link, $sql2)){
	   	echo '<script language="javascript">';
		echo 'alert("Bill has been added to patient.")';
		echo '</script>'; 
	} else{
	    echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);$err=2;
	}
}
// close connection
mysqli_close($link);
?>
<br><a href="insert_trans.php" id="defaultOpen">Go Back</a>
<script>
	var err = '<?php echo $err; ?>';
	if(err == 0)
	{
		document.getElementById("defaultOpen").click();
	}
	else
		echo err;
</script>
