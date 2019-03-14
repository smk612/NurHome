<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/w3.css" rel="stylesheet">
</head>
<body>
<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "","nurhome");
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$total=0;
if(isset($_POST['submit'])){
	//to run PHP script on submit
	echo "
	<table class='w3-table-all w3-card-4'>
	";
	if(!empty($_POST['check_list_v'])){
		echo "
		<tr class='w3-blue'>
			<th colspan='7'>Visits</th>
		</tr>
		<tr>
			<th>V_id</th>
			<th>Date</th>
			<th>Time</th>
			<th>Doctor</th>
			<th colspan='2'>Comment</th>
			<th>Charge</th>
		</tr>";
		// Loop to store and display values of individual checked checkbox.
		foreach($_POST['check_list_v'] as $value)
		{
			$sqlvt = "UPDATE t_bill SET status=1 WHERE t_type ='V' AND t_id='$value'";
			if(mysqli_query($link, $sqlvt)){
			$sqlv="SELECT t_visit.date, t_visit.time, doctor.d_name, t_visit.comment, t_bill.charge FROM t_bill INNER JOIN t_visit ON t_bill.t_id = t_visit.v_id INNER JOIN doctor ON t_visit.d_id = doctor.d_id WHERE t_bill.t_id = '$value' AND t_bill.t_type='V'" ;
			$resv = mysqli_query($link,$sqlv);
			$rowv = mysqli_fetch_array($resv);
			echo "<tr><td>".$value."</td>";
    		echo "<td>" . $rowv['date'] . "</td>";
    		echo "<td>" . $rowv['time'] . "</td>";
    		echo "<td>" . $rowv['d_name'] . "</td>";
    		echo "<td colspan='2'>" . $rowv['comment'] . "</td>";
    		echo "<td>" . $rowv['charge'] . "</td>";
    		echo "</tr>";
    		$total+=$rowv['charge'];
			} else{
			    echo "ERROR: Could not able to execute $sqlv. " . mysqli_error($link);
			}
		}
	}
	if(!empty($_POST['check_list_a'])){
		// Loop to store and display values of individual checked checkbox.
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
		foreach($_POST['check_list_a'] as $value)
		{
			$sqlat = "UPDATE t_bill SET status=1 WHERE t_type ='A' AND t_id='$value'";
			if(mysqli_query($link, $sqlat)){
		   		$sqla="SELECT t_admit.a_id, t_admit.admit_date, t_admit.disc_date, t_admit.b_id, doctor.d_name, t_bill.charge, t_bill.t_id FROM t_bill INNER JOIN t_admit ON t_bill.t_id = t_admit.a_id INNER JOIN doctor ON t_admit.d_id = doctor.d_id WHERE t_bill.t_id = '$value' t_bill.t_type='A'" ;
				$resa = mysqli_query($link,$sqla);
				$rowa = mysqli_fetch_array($resa);
				echo "<tr>";
    			echo "<td>" . $rowa['a_id'] . "</td>";
    			echo "<td>" . $rowa['admit_date'] . "</td>";
    			echo "<td>" . $rowa['disc_date'] . "</td>";
    			echo "<td>" . $rowa['d_name'] . "</td>";
    			echo "<td>" . $rowa['b_id'] . "</td>";
    			echo "<td>" . $rowa['charge'] . "</td>";
    			echo "</tr>";
    			$total+=$rowa['charge'];
			} else{
			    echo "ERROR: Could not able to execute $sqla. " . mysqli_error($link);
			}
		}
	}
	if(!empty($_POST['check_list_c'])){
		// Loop to store and display values of individual checked checkbox.
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
		foreach($_POST['check_list_c'] as $value)
		{
			$sqlct = "UPDATE t_bill SET status=1 WHERE t_type ='C' AND t_id='$value'";
			if(mysqli_query($link, $sqlct)){
				$sqlc="SELECT t_consult.a_id, t_consult.date, t_consult.time, t_consult.comment, doctor.d_name, t_bill.charge, t_bill.t_id FROM t_bill INNER JOIN t_consult ON t_bill.t_id = t_consult.c_id INNER JOIN doctor ON t_consult.d_id = doctor.d_id WHERE t_bill.t_id='$value' AND t_bill.t_type='C' ORDER BY t_consult.a_id" ;
				$resc = mysqli_query($link,$sqlc);
				$rowc = mysqli_fetch_array($resc);
				echo "<tr><td>".$value."</td>";
    			echo "<td>" . $rowc['a_id'] . "</td>";
    			echo "<td>" . $rowc['date'] . "</td>";
    			echo "<td>" . $rowc['time'] . "</td>";
    			echo "<td>" . $rowc['d_name'] . "</td>";
    			echo "<td>" . $rowc['comment'] . "</td>";
    			echo "<td>" . $rowc['charge'] . "</td>";
    			echo "</tr>";
    			$total+=$rowc['charge'];
			} else{
			    echo "ERROR: Could not able to execute $sqlc. " . mysqli_error($link);
			}
		}
	}
	if($total==0)
	{
		echo"
		<tr class='w3-red'>
			<th colspan='7'>No Box is checked.</th>
		</tr></table>";
	}
	else{
		echo "
			<tr>
				<th colspan ='6' style='text-align:right'>Total Amount Paid</th>
			<th>".$total."</th>
			</tr>
		</table>
		<button id ='one' onclick='myFunction()'>Print this page</button>";
	}
}
mysqli_close($link);
?>
<br><a href="insert_trans.php" id="defaultOpen">Go Back</a>
</body>
<script>
	function myFunction() {
	document.getElementById("one").style.display="none";
	document.getElementById("defaultOpen").style.display="none";
    window.print();
    document.getElementById("defaultOpen").style.display="block";
    document.getElementById("one").style.display="block";
}
</script>
</html>
