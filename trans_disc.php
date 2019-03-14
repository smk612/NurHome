<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "","nurhome");
$err=0;
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$aid = mysqli_real_escape_string($link, $_REQUEST['arec']);
$ddate = mysqli_real_escape_string($link, $_REQUEST['ddate']);
if($aid==0)
{ 		
	echo '<script language="javascript">';
	echo 'alert("Select a Patient to Discharge!")';
	echo '</script>'; 
}
else
{
	$res = mysqli_query($link, "SELECT admit_date, p_id, b_id FROM t_admit WHERE a_id='$aid'");
	$row = mysqli_fetch_array($res);
	$adate=$row[0];
	$pid=$row[1];
	$bid=$row[2];
	if($adate<=$ddate)
	{
		$sql1 = "UPDATE t_admit SET disc_date = '$ddate' WHERE a_id ='$aid'";
		if(mysqli_query($link, $sql1)){
		   	echo '<script language="javascript">';
			echo 'alert("A Patient has been succesfully discharged.")';
			echo '</script>'; 
		} else{
		    echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);$err=1;
		}
		//Converting into date objects, TRUE to return +ve, format to convert back to integer
		$days=date_diff(date_create($adate),date_create($ddate),TRUE)->format("%a");
		$res1 = mysqli_query($link, "SELECT b_charge FROM bed WHERE b_id='$bid'");
		$row1 = mysqli_fetch_array($res1);
		$totcharge = ($days+1)*$row1[0];
		$sql2 = "INSERT INTO t_bill (p_id, t_id, t_type, charge) VALUES ('$pid',$aid, 'A', '$totcharge')";
		if(mysqli_query($link, $sql2)){
		   	echo "The Bill has been added for ".($days+1)." days."; 
		} else{
		    echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);$err=1;
		}
	}
	else
		echo "The Discharge Date:" .$ddate." is earlier than the Admission date:" .$adate;
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
