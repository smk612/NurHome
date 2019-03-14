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
$btype = mysqli_real_escape_string($link, $_REQUEST['btype']);
$bcharge = mysqli_real_escape_string($link, $_REQUEST['bcharge']);
$bdept = mysqli_real_escape_string($link, $_REQUEST['bdept']);

$sday = mysqli_real_escape_string($link, $_REQUEST['sday']);
$seve = mysqli_real_escape_string($link, $_REQUEST['seve']);
$snight = mysqli_real_escape_string($link, $_REQUEST['snight']);

// attempt insert query execution
$sql = "INSERT INTO bed (b_type, b_charge, dept_id) VALUES ('$btype', '$bcharge', '$bdept')";
if(mysqli_query($link, $sql)){
   	echo '<script language="javascript">';
	echo 'alert("A new Bed has been succesfully added.")';
	echo '</script>'; 
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);$err=1;
}

if( $sday != 'NA' )
{
	$sql1 = "INSERT INTO nurse_bed (b_id, n_id, shift) VALUES (LAST_INSERT_ID(),'$sday', 'Day')";
	if(mysqli_query($link, $sql1)){
   		echo '<script language="javascript">';
		echo 'alert("A Nurse has been allocated for the Day Shift.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sql1. " . mysqli_error($link);$err=2;
	}
}
if( $seve != 'NA' )
{
	$sql2 = "INSERT INTO nurse_bed (b_id, n_id, shift) VALUES (LAST_INSERT_ID(),'$seve', 'Evening')";
	if(mysqli_query($link, $sql2)){
   		echo '<script language="javascript">';
		echo 'alert("A Nurse has been allocated for the Evening Shift.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sql2. " . mysqli_error($link);$err=2;
	}
}
if( $snight != 'NA' )
{
	$sql3 = "INSERT INTO nurse_bed (b_id, n_id, shift) VALUES (LAST_INSERT_ID(),'$snight', 'Night')";
	if(mysqli_query($link, $sql3)){
   		echo '<script language="javascript">';
		echo 'alert("A Nurse has been allocated for the Night Shift.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sql3. " . mysqli_error($link);$err=2;
	}
}
 
// close connection
mysqli_close($link);
?>
<br><a href="insert_main.php" id="defaultOpen">Go Back</a>
<script>
	var err = '<?php echo $err; ?>';
	if(err == 0)
	{
		document.getElementById("defaultOpen").click();
	}
	else
		echo err;
</script>
