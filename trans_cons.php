<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "","nurhome");
$err=0;
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$aid = mysqli_real_escape_string($link, $_REQUEST['crec']);
$doc = mysqli_real_escape_string($link, $_REQUEST['cdoc']);
$date = mysqli_real_escape_string($link, $_REQUEST['cdate']);
$time = mysqli_real_escape_string($link, $_REQUEST['ctime']);
$comm = mysqli_real_escape_string($link, $_REQUEST['ccomm']);

if($aid == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Patient!")';
	echo '</script>'; 
}
else if($doc == 0)
{
	echo '<script language="javascript">';
	echo 'alert("Select a Consulting Doctor!")';
	echo '</script>'; 
}
else
{
	//Next 3 queries may have room for improvement
	$res1 = mysqli_query($link,"SELECT d_consult_charge FROM department WHERE dept_id = (SELECT d_dept FROM doctor WHERE d_id = '$doc')");
	$row1 = mysqli_fetch_array($res1);
	$charge = $row1[0];

	$res = mysqli_query($link, "SELECT admit_date, p_id FROM t_admit WHERE a_id='$aid'");
	$row = mysqli_fetch_array($res);
	$adate=$row[0];
	$pid=$row[1];
	if($adate<=$date)
	{
	$sql1 = "INSERT INTO t_consult (a_id, d_id, date, time, comment, charge) VALUES ('$aid', '$doc', '$date', '$time', '$comm', '$charge')";
	if(mysqli_query($link, $sql1)){
	   	echo '<script language="javascript">';
		echo 'alert("A new Consult Session has been registered.")';
		echo '</script>'; 
	} else{
	    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);$err=1;
	}
	
	$sql2 = "INSERT INTO t_bill (p_id, t_id, t_type, charge) VALUES ('$pid',LAST_INSERT_ID(), 'C', '$charge')";
	if(mysqli_query($link, $sql2)){
	   	echo '<script language="javascript">';
		echo 'alert("Bill has been added to patient.")';
		echo '</script>'; 
	} else{
	    echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);$err=2;
	}
	}
	else
	{
		echo "Consult Date:".$date." before Admission date:".$adate; 
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
