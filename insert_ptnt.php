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
$name = mysqli_real_escape_string($link, $_REQUEST['pname']);
$sex = mysqli_real_escape_string($link, $_REQUEST['psex']);
$dob = mysqli_real_escape_string($link, $_REQUEST['pdob']);
$addr = mysqli_real_escape_string($link, $_REQUEST['paddr']);
$cont = mysqli_real_escape_string($link, $_REQUEST['pcont']);

// attempt insert query execution
$sql = "INSERT INTO patient (p_name, p_gender, p_dob, p_address, p_phone) VALUES ('$name', '$sex', '$dob', '$addr', '$cont')";
if(mysqli_query($link, $sql)){
   	echo '<script language="javascript">';
	echo 'alert("A new Patient has been succesfully added.")';
	echo '</script>'; 
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);$err=1;
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
