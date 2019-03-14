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
$name = mysqli_real_escape_string($link, $_REQUEST['sname']);
$sex = mysqli_real_escape_string($link, $_REQUEST['ssex']);
$dob = mysqli_real_escape_string($link, $_REQUEST['sdob']);
$addr = mysqli_real_escape_string($link, $_REQUEST['saddr']);
$cont = mysqli_real_escape_string($link, $_REQUEST['scont']);
$sal = mysqli_real_escape_string($link, $_REQUEST['ssal']);
$stype = mysqli_real_escape_string($link, $_REQUEST['stype']);
$shift = mysqli_real_escape_string($link, $_REQUEST['shift']);

// attempt insert query execution
$sql = "INSERT INTO staff (s_name, s_gender, s_dob, s_addr, s_phone, s_sal, s_type, shift) VALUES ('$name', '$sex', '$dob', '$addr', '$cont', '$sal', '$stype', '$shift')";
if(mysqli_query($link, $sql)){
   	echo '<script language="javascript">';
	echo 'alert("A new Staff has been succesfully added.")';
	echo '</script>'; 
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);$err=1;
}

if( $stype == 'Nurse' )
{
	$nqual = mysqli_real_escape_string($link, $_REQUEST['nqual']);
	$sqln = "INSERT INTO s_nurse (s_id, qual) VALUES (LAST_INSERT_ID(),'$nqual')";
	if(mysqli_query($link, $sqln)){
   		echo '<script language="javascript">';
		echo 'alert("A new Nurse is welcomed.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sqln. " . mysqli_error($link);$err=2;
	}
}
if( $stype == 'WardBoy' )
{
	$wdept = mysqli_real_escape_string($link, $_REQUEST['wdept']);
	$wduty = mysqli_real_escape_string($link, $_REQUEST['wduty']);
	$sqlw = "INSERT INTO s_wardboy (s_id, dept_id, duty) VALUES (LAST_INSERT_ID(),'$wdept', '$wduty')";
	if(mysqli_query($link, $sqlw)){
   		echo '<script language="javascript">';
		echo 'alert("A new WardBoy is welcomed.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sqlw. " . mysqli_error($link);$err=3;
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
