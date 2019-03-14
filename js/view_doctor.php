<html>
</head>
<body>
<p align=center><font face="arial" size=20 color=black><b>DOCTOR RECORDS</b></font></P>
<?php

$conn = new mysqli("localhost", "root", "","nurhome");

if ($conn->connect_error)
{
	echo '<font size="4">Connection failed: ' . $conn->connect_error .'</font>';
}
else
{
	$run = $conn->query("SELECT department.dept_name, d_name, d_gender, d_phone, d_type FROM DOCTOR left join department on doctor.d_dept=department.dept_Id where d_type!='Disc' order by dept_name ");

	if($run->num_rows > 0)
	{
?>

<table border="2" width="700" align="center">
<tr>
<th> DEPARTMENT </th>
<th> NAME </th>
<th> GENDER</th>
<th> PHONE </th>
<th> STATUS </th>
</tr>

<?php
		while($row = $run->fetch_array())
		{	
			$department = $row[0];
			$name = $row[1];
			$gender = $row[2];
			$phone = $row[3];
			$status = $row[4];
		
			echo	"<tr>
						<td>$department</td>
						<td>$name</td>
						<td>$gender</td>
						<td>$phone</td>
						<td>$status</td>
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

</div>

</body>
</html>