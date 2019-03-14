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
$d_name = mysqli_real_escape_string($link, $_REQUEST['dname']);
$sex = mysqli_real_escape_string($link, $_REQUEST['dsex']);
$dob = mysqli_real_escape_string($link, $_REQUEST['ddob']);
$addr = mysqli_real_escape_string($link, $_REQUEST['daddr']);
$cont = mysqli_real_escape_string($link, $_REQUEST['dcont']);
$lic = mysqli_real_escape_string($link, $_REQUEST['lic']);
$qual = mysqli_real_escape_string($link, $_REQUEST['qual']);
$dtype = mysqli_real_escape_string($link, $_REQUEST['dtype']);
$dept = mysqli_real_escape_string($link, $_REQUEST['dept']);

// attempt insert query execution
$sql = "INSERT INTO doctor (d_name, d_gender, d_dob, d_addr, d_phone, d_license, d_qual, d_type, d_dept) VALUES ('$d_name', '$sex', '$dob', '$addr', '$cont', '$lic', '$qual', '$dtype', '$dept')";
if(mysqli_query($link, $sql)){
   	echo '<script language="javascript">';
	echo 'alert("A new Doctor has been succesfully added.")';
	echo '</script>'; 
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);$err=1;
}

if( $dtype == 'Perm' )
{
	$d_sal = mysqli_real_escape_string($link, $_REQUEST['d_sal']);
	$spec = mysqli_real_escape_string($link, $_REQUEST['spec']);
	$sqlp = "INSERT INTO d_perm (d_id, d_monthly_sal, speciality) VALUES (LAST_INSERT_ID(),'$d_sal', '$spec')";
	if(mysqli_query($link, $sqlp)){
   		echo '<script language="javascript">';
		echo 'alert("A new Permanent Doctor is welcomed.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sqlp. " . mysqli_error($link);$err=2;
	}
}
if( $dtype == 'Visit' )
{
	$fee_v = mysqli_real_escape_string($link, $_REQUEST['fee_v']);
	$fee_c = mysqli_real_escape_string($link, $_REQUEST['fee_c']);
	$sqlv = "INSERT INTO d_visit (d_id, d_fee_per_visit, d_fee_per_consult) VALUES (LAST_INSERT_ID(),'$fee_v', '$fee_c')";
	if(mysqli_query($link, $sqlv)){
   		echo '<script language="javascript">';
		echo 'alert("A new Visiting Doctor is welcomed.")';
		echo '</script>'; 
	} else{
    	echo "ERROR: Could not able to execute $sqlv. " . mysqli_error($link);$err=3;
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
