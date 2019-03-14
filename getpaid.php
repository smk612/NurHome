<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/w3.css" rel="stylesheet">
</head>
<body>

<?php
$pat = intval($_GET['q']);

$link = mysqli_connect("localhost","root","","nurhome");
if (!$link) {
    die('Could not connect: ' . mysqli_error($link));
}

$count=0; $tot=0;
echo "
<table class='w3-table-all w3-card-4'>
";
//Records for Visits
$sqlv="SELECT t_visit.date, t_visit.time, doctor.d_name, t_visit.comment, t_bill.charge, t_bill.t_id FROM t_bill INNER JOIN t_visit ON t_bill.t_id = t_visit.v_id INNER JOIN doctor ON t_visit.d_id = doctor.d_id WHERE t_bill.p_id ='$pat' AND t_bill.status = 1 AND t_bill.t_type='V'" ;
$resv = mysqli_query($link,$sqlv);
if(mysqli_num_rows($resv) > 0)
{
	echo "
	<tr class='w3-blue'>
		<th colspan='7'>Visits</th>
	</tr>
	<tr>
		<th>Date</th>
		<th>Time</th>
		<th>Doctor</th>
		<th colspan='2'>Comment</th>
		<th>Charge</th>
	</tr>";
while($rowv = mysqli_fetch_array($resv)) {
    echo "<tr>";
    	echo "<td>" . $rowv['date'] . "</td>";
    	echo "<td>" . $rowv['time'] . "</td>";
    	echo "<td>" . $rowv['d_name'] . "</td>";
    	echo "<td colspan='2'>" . $rowv['comment'] . "</td>";
    	echo "<td>" . $rowv['charge'] . "</td>";
    echo "</tr>";
    $tot+=$rowv['charge'];
}
}
else {$count+=1;}
//Records for Admit
$sqla="SELECT t_admit.a_id, t_admit.admit_date, t_admit.disc_date, t_admit.b_id, doctor.d_name, t_bill.charge, t_bill.t_id FROM t_bill INNER JOIN t_admit ON t_bill.t_id = t_admit.a_id INNER JOIN doctor ON t_admit.d_id = doctor.d_id WHERE t_bill.p_id ='$pat' AND t_bill.status = 1 AND t_bill.t_type='A' ORDER BY t_admit.a_id" ;
$resa = mysqli_query($link,$sqla);
if(mysqli_num_rows($resa) > 0)
{
	echo "
	<tr class='w3-green'>
		<th colspan='7'>Admissions</th>
	</tr>
	<tr>
		<th>Admit ID</th>
		<th>Admitted On</th>
		<th>Discharged On</th>
		<th>Admitted Under</th>
		<th>Bed Allocated</th>
		<th>Charge</th>
	</tr>";
while($rowa = mysqli_fetch_array($resa)) {
    echo "<tr>";
    	echo "<td>" . $rowa['a_id'] . "</td>";
    	echo "<td>" . $rowa['admit_date'] . "</td>";
    	echo "<td>" . $rowa['disc_date'] . "</td>";
    	echo "<td>" . $rowa['d_name'] . "</td>";
    	echo "<td>" . $rowa['b_id'] . "</td>";
    	echo "<td>" . $rowa['charge'] . "</td>";
    echo "</tr>";
    $tot+=$rowa['charge'];
}
}
else {$count+=1;}
//Records for Consults
$sqlc="SELECT t_consult.a_id, t_consult.date, t_consult.time, t_consult.comment, doctor.d_name, t_bill.charge, t_bill.t_id FROM t_bill INNER JOIN t_consult ON t_bill.t_id = t_consult.c_id INNER JOIN doctor ON t_consult.d_id = doctor.d_id WHERE t_bill.p_id ='$pat' AND t_bill.status = 1 AND t_bill.t_type='C' ORDER BY t_consult.a_id" ;
$resc = mysqli_query($link,$sqlc);
if(mysqli_num_rows($resc) > 0)
{
	echo "
	<tr class='w3-orange'>
		<th colspan='7'>Consultations</th>
	</tr>
	<tr>
		<th>Under Admit ID</th>
		<th>Consult Date</th>
		<th>Consult Time</th>
		<th>Doctor</th>
		<th>Comment</th>
		<th>Charge</th>
	</tr>";
while($rowc = mysqli_fetch_array($resc)) {
    echo "<tr>";
    	echo "<td>" . $rowc['a_id'] . "</td>";
    	echo "<td>" . $rowc['date'] . "</td>";
    	echo "<td>" . $rowc['time'] . "</td>";
    	echo "<td>" . $rowc['d_name'] . "</td>";
    	echo "<td>" . $rowc['comment'] . "</td>";
    	echo "<td>" . $rowc['charge'] . "</td>";
    echo "</tr>";
    $tot+=$rowc['charge'];
}
}
else {$count+=1;}
//I.e No unpaid records at all
if($count==3)
{
	echo"
	<tr class='w3-red'>
		<th colspan='6'>No Paid Records</th>
	</tr>
	</table></form>";
}
else{
echo "
	<tr>
		<th colspan='5' style='text-align:right'>Total Amount Paid</th>
		<th>".$tot."</th>
	</tr>
</table>";

}
mysqli_close($link);
?>
</body>
</html>
