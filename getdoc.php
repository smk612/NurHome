<!DOCTYPE html>
<html>
<head>
<title>Doctor Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/w3.css" rel="stylesheet">
</head>
<body>

<?php
$doc = intval($_GET['q']);
$tot=0;$count=0;
$link = mysqli_connect("localhost","root","","nurhome");
if (!$link) {
    die('Could not connect: ' . mysqli_error($link));
}

$sql1="SELECT * from doctor INNER JOIN department ON department.dept_id = doctor.d_dept WHERE doctor.d_id ='$doc'" ;
$res1 = mysqli_query($link,$sql1);
$row1=mysqli_fetch_array($res1);
echo "<h2>Doctor Name: ".$row1["d_name"]."</h2>";
echo "<h3>Personal Details</h3><p>Gender: ".$row1["d_gender"]."<br>";
echo "Date of Birth: ".$row1["d_dob"]."<br>";
echo "Address: ".$row1["d_addr"]."<br>";
echo "Phone: ".$row1["d_phone"]."</p>";
echo "<h3>Professional Details</h3><p>Department: ".$row1["dept_name"]."<br>";
echo "Qualifications: ".$row1["d_dob"]."<br>";
echo "License No.: ".$row1["d_license"]."<br>";

if($row1["d_type"]=="Perm")
{
	$sql2="SELECT * FROM d_perm WHERE d_id = '$doc'";
	$res2 = mysqli_query($link,$sql2);
	$row2 = mysqli_fetch_array($res2);
	echo "Speciality: ".$row2["speciality"]."</p>";
	echo "<h3>Financial Details</h3><p>Monthly Salary:".$row2["d_monthly_sal"]."<br>";
}
else
{
	$sql3="SELECT * FROM d_visit WHERE d_id = '$doc'";
	$res3 = mysqli_query($link,$sql3);
	$row3 = mysqli_fetch_array($res3);
	echo "</p>";
	echo "<h3>Financial Details</h3><p>Visit Charge: ".$row3["d_fee_per_visit"]."<br>";
	echo "Consult Charge: ".$row3["d_fee_per_consult"]."<br>";
}
echo "Departmental Visit Charge: ".$row1["d_visit_charge"]."<br>";
echo "Departmental Consult Charge: ".$row1["d_consult_charge"]."</p>";

echo "
<table class='w3-table-all w3-card-4'>
";
//Records for Visits
$sqlv="SELECT t_visit.date, t_visit.time, patient.p_name, t_visit.comment, t_visit.charge FROM t_visit INNER JOIN patient ON t_visit.p_id = patient.p_id WHERE t_visit.d_id ='$doc'" ;
$resv = mysqli_query($link,$sqlv);
if(mysqli_num_rows($resv) > 0)
{
	echo "
	<tr class='w3-blue'>
		<th colspan='5'>Visits</th>
		<th>Total: ".mysqli_num_rows($resv)."</th>
	</tr>
	<tr>
		<th>Date</th>
		<th>Time</th>
		<th>Patient</th>
		<th colspan='2'>Comment</th>
		<th>Charge</th>
	</tr>";
while($rowv = mysqli_fetch_array($resv)) {
    echo "<tr>";
    	echo "<td>" . $rowv['date'] . "</td>";
    	echo "<td>" . $rowv['time'] . "</td>";
    	echo "<td>" . $rowv['p_name'] . "</td>";
    	echo "<td colspan='2'>" . $rowv['comment'] . "</td>";
    	echo "<td>" . $rowv['charge'] . "</td>";
    echo "</tr>";
    $tot+=$rowv['charge'];
}
}
else {$count+=1;}

//Records for Admit
$sqla="SELECT t_admit.a_id, t_admit.admit_date, t_admit.disc_date, patient.p_name, department.dept_name FROM t_admit INNER JOIN patient ON patient.p_id=t_admit.p_id INNER JOIN bed ON bed.b_id=t_admit.b_id INNER JOIN department ON department.dept_id=bed.dept_id WHERE t_admit.d_id='$doc' ORDER BY t_admit.a_id" ;
$resa = mysqli_query($link,$sqla);
if(mysqli_num_rows($resa) > 0)
{
	echo "
	<tr class='w3-green'>
		<th colspan='5'>Admissions</th>
		<th>Total: ".mysqli_num_rows($resa)."</th>
	</tr>
	<tr>
		<th>Admitted On</th>
		<th>Discharged On</th>
		<th>Patient</th>
		<th colspan='2'>In Department</th>
		<th>Admit ID</th>
	</tr>";
while($rowa = mysqli_fetch_array($resa)) {
    echo "<tr>";
    	echo "<td>" . $rowa['admit_date'] . "</td>";
    	echo "<td>" . $rowa['disc_date'] . "</td>";
    	echo "<td>" . $rowa['p_name'] . "</td>";
    	echo "<td colspan='2'>" . $rowa['dept_name'] . "</td>";
    	echo "<td>" . $rowa['a_id'] . "</td>";
    echo "</tr>";
}
}
else {$count+=1;}
//Records for Consults
$sqlc="SELECT a_id, date, time, comment, charge FROM t_consult WHERE d_id ='$doc'ORDER BY t_consult.a_id" ;
$resc = mysqli_query($link,$sqlc);
if(mysqli_num_rows($resc) > 0)
{
	echo "
	<tr class='w3-orange'>
		<th colspan='5'>Consultations</th>
		<th>Total: ".mysqli_num_rows($resc)."</th>
	</tr>
	<tr>
		<th>Consult Date</th>
		<th>Consult Time</th>
		<th>Under Admit ID</th>
		<th colspan='2'>Comment</th>
		<th>Charge</th>
	</tr>";
while($rowc = mysqli_fetch_array($resc)) {
    echo "<tr>";
    	echo "<td>" . $rowc['date'] . "</td>";
    	echo "<td>" . $rowc['time'] . "</td>";
    	echo "<td>" . $rowc['a_id'] . "</td>";
    	echo "<td colspan='2'>" . $rowc['comment'] . "</td>";
    	echo "<td>" . $rowc['charge'] . "</td>";
    echo "</tr>";
    $tot+=$rowc['charge'];
}
}
else {$count+=1;}
if($count==3)
{
	echo"
	<tr class='w3-red'>
		<th colspan='6'>No Records</th>
	</tr>
	</table></form>";
}
else{
echo "
	<tr>
		<th colspan='5' style='text-align:right'>Total Income</th>
		<th>".$tot."</th>
	</tr>
</table>";

}
mysqli_close($link);
?>
<br><a href="view_doctor.php">Go Back</a>
</body>
</html>
