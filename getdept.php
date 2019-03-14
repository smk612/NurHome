<!DOCTYPE html>
<html>
<head>
<title>Department Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/w3.css" rel="stylesheet">
</head>
<body>

<?php
$dept = intval($_GET['q']);
$bcount=0;
$link = mysqli_connect("localhost","root","","nurhome");
if (!$link) {
    die('Could not connect: ' . mysqli_error($link));
}

$sql1="SELECT * from department INNER JOIN doctor ON department.dept_head = doctor.d_id WHERE dept_id ='$dept'" ;
$res1 = mysqli_query($link,$sql1);
$row1=mysqli_fetch_array($res1);
echo "<h2>Department Name: ".$row1["dept_name"]."</h2>";
if($row1["d_name"]!=NULL)
{
	echo "<p>Department Head: ".$row1["d_name"]." </p>";
}
else
{	echo "<p>Department Head: Not Assigned </p>";}
echo "<p>Visit Charge: ".$row1["d_visit_charge"]."</p>";
echo "<p>Consult Charge: ".$row1["d_consult_charge"]."</p>";
$sql2="SELECT * from doctor INNER JOIN d_perm ON doctor.d_id = d_perm.d_id WHERE d_dept ='$dept' AND d_type='Perm'" ;
$res2 = mysqli_query($link,$sql2);
echo "<table class='w3-table-all w3-card-4'>";
if(mysqli_num_rows($res2) > 0)
{
	echo "
	<tr class='w3-blue'>
		<th colspan='8'>Permanent Doctors</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Gender</th>
		<th>DOB</th>
		<th>Phone</th>
		<th>License No.</th>
		<th>Qualifications</th>
		<th>Speciality</th>
		<th>Monthly Salary</th>
	</tr>";
while($row2 = mysqli_fetch_array($res2)) {
    echo "<tr>";
    	echo "<td><a href='getdoc.php?q=".$row2['d_id']."'>" . $row2['d_name'] . "</a></td>";
    	echo "<td>" . $row2['d_gender'] . "</td>";
    	echo "<td>" . $row2['d_dob'] . "</td>";
    	echo "<td>" . $row2['d_phone'] . "</td>";
    	echo "<td>" . $row2['d_license'] . "</td>";
		echo "<td>" . $row2['d_qual'] . "</td>";
    	echo "<td>" . $row2['speciality'] . "</td>";
    	echo "<td>" . $row2['d_monthly_sal'] . "</td>";
    echo "</tr>";
	}
	$sql21="SELECT SUM(d_monthly_sal),COUNT(*) FROM doctor INNER JOIN d_perm ON doctor.d_id=d_perm.d_id WHERE d_dept ='$dept' ";
	$res21 = mysqli_query($link,$sql21);
	$row21=mysqli_fetch_array($res21);
	echo "
	<tr>
		<th style='text-align:right'>Total Permanent Doctors</th>
		<th>".$row21[1]."</th>
		<th colspan='5' style='text-align:right'>Total Monthly Salary</th>
		<th>".$row21[0]."</th>
	</tr>
	</table>";
}
else {
echo"
	<tr class='w3-red'>
		<th colspan='8'>No Permanent Doctors in Department</th>
	</tr>
	</table>";}

$sql4="SELECT * from doctor INNER JOIN d_visit ON doctor.d_id = d_visit.d_id WHERE d_dept ='$dept' AND d_type='Visit'" ;
$res4 = mysqli_query($link,$sql4);
echo "<table class='w3-table-all w3-card-4'>";
if(mysqli_num_rows($res4) > 0)
{
	echo "
	<tr class='w3-light-blue'>
		<th colspan='8'>Visiting Doctors</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Gender</th>
		<th>DOB</th>
		<th>Phone</th>
		<th>License No.</th>
		<th>Qualifications</th>
		<th>Fee per Visit</th>
		<th>Fee per Consult</th>
	</tr>";
while($row4 = mysqli_fetch_array($res4)) {
    echo "<tr>";
    	echo "<td> <a href='getdoc.php?q=".$row4['d_id']."'>" . $row4['d_name'] . "</a></td>";
    	echo "<td>" . $row4['d_gender'] . "</td>";
    	echo "<td>" . $row4['d_dob'] . "</td>";
    	echo "<td>" . $row4['d_phone'] . "</td>";
    	echo "<td>" . $row4['d_license'] . "</td>";
		echo "<td>" . $row4['d_qual'] . "</td>";
    	echo "<td";
    	if($row4['d_fee_per_visit']>$row1["d_visit_charge"])
    		echo " class='w3-red' ";
    	echo ">" . $row4['d_fee_per_visit'] . "</td>";
    	echo "<td";
    	if($row4['d_fee_per_consult']>$row1["d_consult_charge"])
    		echo " class='w3-red' ";
    	echo ">" . $row4['d_fee_per_consult'] . "</td>";
    echo "</tr>";
	}
	$sql41="SELECT ROUND(AVG(d_fee_per_visit),0),ROUND(AVG(d_fee_per_consult),0),COUNT(*) FROM doctor INNER JOIN d_visit ON doctor.d_id=d_visit.d_id WHERE d_dept ='$dept' ";
	$res41 = mysqli_query($link,$sql41);
	$row41=mysqli_fetch_array($res41);
	echo "
	<tr>
		<th style='text-align:right'>Total Temporary Doctors</th>
		<th>".$row41[2]."</th>
		<th colspan='2' style='text-align:right'>Average Visit Charge</th>
		<th>".$row41[0]."</th>
		<th colspan='2' style='text-align:right'>Average Consult Charge</th>
		<th>".$row41[1]."</th>
	</tr>
	</table>";
}
else {
echo"
	<tr class='w3-red'>
		<th colspan='8'>No Visiting Doctors in Department</th>
	</tr>
	</table>";}

$sql3="SELECT * from s_wardboy INNER JOIN staff ON s_wardboy.s_id = staff.s_id WHERE dept_id ='$dept' ORDER BY duty" ;
$res3 = mysqli_query($link,$sql3);
echo "<table class='w3-table-all w3-card-4'>";
if(mysqli_num_rows($res3) > 0)
{
	echo "
	<tr class='w3-green'>
		<th colspan='8'>WardBoys</th>
	</tr>
	<tr>
		<th>Name</th>
		<th>Gender</th>
		<th>DOB</th>
		<th>Address</th>
		<th>Phone</th>
		<th>Salary</th>
		<th>Shift</th>
		<th>Duty</th>
	</tr>";
while($row3 = mysqli_fetch_array($res3)) {
    echo "<tr>";
    	echo "<td>" . $row3['s_name'] . "</td>";
    	echo "<td>" . $row3['s_gender'] . "</td>";
    	echo "<td>" . $row3['s_dob'] . "</td>";
    	echo "<td>" . $row3['s_addr'] . "</td>";
    	echo "<td>" . $row3['s_phone'] . "</td>";
    	echo "<td>" . $row3['s_sal'] . "</td>";
		echo "<td>" . $row3['shift'] . "</td>";
		echo "<td>" . $row3['duty'] . "</td>";
    echo "</tr>";
	}
	$sql31="SELECT SUM(s_sal),COUNT(*) FROM s_wardboy INNER JOIN staff ON s_wardboy.s_id = staff.s_id WHERE dept_id ='$dept' ";
	$res31 = mysqli_query($link,$sql31);
	$row31=mysqli_fetch_array($res31);
	echo "
	<tr>
		<th colspan='2' style='text-align:right'>Total Wardboys</th>
		<th>".$row31[1]."</th>
		<th colspan='4' style='text-align:right'>Total Monthly Salary</th>
		<th>".$row31[0]."</th>
	</tr>
	</table>";
}
else {
echo"
	<tr class='w3-red'>
		<th colspan='8'>No Wardboys assigned to Department</th>
	</tr>
	</table>";}


$sql5="SELECT b_type, COUNT(*), ROUND(AVG(b_charge),0) FROM bed WHERE dept_id='$dept' GROUP BY b_type";
$res5=mysqli_query($link,$sql5);;
echo "<table class='w3-table-all w3-card-4'>";
if(mysqli_num_rows($res5) > 0)
{
	echo "
	<tr class='w3-amber'>
		<th colspan='3'>Beds</th>
	</tr>
	<tr>
		<th>Bed Type</th>
		<th>Average Charge per Day</th>
		<th>Number</th>
	</tr>";
while($row5 = mysqli_fetch_array($res5)) {
    echo "<tr>";
    	echo "<td>" . $row5[0] . "</td>";
    	echo "<td>" . $row5[2] . "</td>";
    	echo "<td>" . $row5[1] . "</td>";
    echo "</tr>";$bcount++;
}
echo "
	<tr>
		<th colspan='2' style='text-align:right'>Total Beds</th>
		<th>".$bcount."</th>
	</tr>
	</table>";
}
else{
	echo"
	<tr class='w3-red'>
		<th colspan='3'>No Beds assigned to Department</th>
	</tr>
	</table>";
}
mysqli_close($link);
?>
<br><a href="view_dept.php">Go Back</a>
</body>
</html>
