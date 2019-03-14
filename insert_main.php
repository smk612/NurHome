<?php
        $temp=mysqli_connect("localhost", "root", "","nurhome");   		
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert Data</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/w3.css" rel="stylesheet">
<style>
body {font-family: Arial;}

/* Style the tab */
div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

input[type=reset] {
    background-color: #ff3300;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=reset]:hover {
    background-color: #e62e00;
}
.container{
	padding: 25px;

}
</style>
</head>

<body>
<!--HTML Form -->
<div class="container">
<h2>Insert Data In Nursing Home Database.</h2>
<a href="index.php">Click Here to Go Back to Homepage</a>
<div class="tab">
  <button class="tablinks" onclick="openForm(event, 'Doctor')">Doctor</button>
  <button class="tablinks" onclick="openForm(event, 'Staff')">Staff</button>
  <button class="tablinks" onclick="openForm(event, 'Bed')">Bed</button>
  <button class="tablinks" onclick="openForm(event, 'Department')">Department</button>
  <button class="tablinks" onclick="openForm(event, 'Patient')" id="defaultOpen">Patient</button>
</div>

<div id="Doctor" class="tabcontent">
	
  <h3>Add New Doctor</h3>
  <form action="insert_dctr.php" method="post">
    <p>
        <label for="DName">Name<sup>*</sup>:</label>
        <input type="text" name="dname" id="DName" value="" placeholder="Doctor's name">
    </p>
    <p>
        <label for="DGender">Gender<sup>*</sup>:</label>
        <select name="dsex" id="DGender">
        	<option value="Male">Male</option>
        	<option value="Female">Female</option>
        	<option value="Other">Other</option>
        </select>
    </p>
    <p>
        <label for="DDOB">Date of Birth<sup>*</sup>:</label>
        <input type="date" name="ddob" id="DDOB" max=
     <?php
         echo date('Y-m-d');
     ?>>
    </p>
    <p>
		<textarea rows="5" cols="50" name="daddr" id="DAddr" placeholder="Home Address*"></textarea>
	</p>
	<p>
        <label for="DCont">Contact No<sup>*</sup>:</label>
        <input type="number" name="dcont" id="DCont" min="0">
    </p>
    <p>
        <label for="Lic">License No<sup>*</sup>:</label>
        <input type="text" name="lic" id="Lic" placeholder="License No">
    </p>
    <p>
		<label for="Qual">Qualifications:</label>
        <input type="text" name="qual" id="Qual" value="" placeholder="Doctor's list of Qualifications">
    </p>
    <p>
		<!--User Chooses Doc type -->
    	<label for="DType">Type<sup>*</sup>:</label>
    	<select name="dtype" id="DType" onchange="docCheck(this);">
    		<option value="Disc">Discontinued</option>
			<option value="Perm">Permanent</option>
			<option value="Visit">Visiting</option>
    	</select>
		<!--Extra fields shown depending on type chosen-->
    	<div id="permType" style="display:none;">
  			<label for="Salary">Monthly Salary*:</label>
  			<input type="number" name="d_sal" id ="Salary" value="0" min="0">

  			<label for="Speciality">Speciality:</label>
  			<input type="text" name="spec" id="Speciality" placeholder="Specializes in">
		</div>
		<div id="tempType" style="display:none;">
  			<label for="Fee_v">Fee Per Visit*:</label>
  			<input type="number" name="fee_v" id ="Fee_v" value="0" min="0">

  			<label for="Fee_c">Fee Per Consultation*:</label>
  			<input type="number" name="fee_c" id="Fee_c" value="0" min="0">
		</div>
    </p>
    <p>
        <label for="Dept">Department<sup>*</sup>:</label>
        <select name="dept" id="Dept">
		<?php
           $res1=mysqli_query($temp,"SELECT * FROM department ORDER BY dept_name");
           while($row1=mysqli_fetch_array($res1))
           {
		?>
			<option value="<?php echo $row1[0]?>"><?php echo $row1["1"];?></option>
		<?php
           }
        ?>
        </select>
    </p>
    <p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
	</form>
	
</div>

<div id="Staff" class="tabcontent">
  <h3>Add New Staff</h3>
  <form action="insert_staff.php" method="post">
    <p>
        <label for="SName">Name<sup>*</sup>:</label>
        <input type="text" name="sname" id="SName" value="" placeholder="Staff's name">
    </p>
    <p>
        <label for="SGender">Gender<sup>*</sup>:</label>
        <select name="ssex" id="SGender">
        	<option value="Male">Male</option>
        	<option value="Female">Female</option>
        	<option value="Other">Other</option>
        </select>
    </p>
    <p>
        <label for="SDOB">Date of Birth<sup>*</sup>:</label>
        <input type="date" name="sdob" id="SDOB" max=
     <?php
         echo date('Y-m-d');
     ?>>
    </p>
    <p>
		<textarea rows="5" cols="50" name="saddr" id="SAddr" placeholder="Home Address*"></textarea>
	</p>
	<p>
        <label for="SCont">Contact No<sup>*</sup>:</label>
        <input type="number" name="scont" id="SCont" min="0">
    </p>
    <p>
		<label for="SSal">Monthly Salary<sup>*</sup>:</label>
        <input type="number" name="ssal" id="SSal" min="0">
    </p>
    <p>
		<!--User Chooses Staff type -->
    	<label for="SType">Type<sup>*</sup>:</label>
    	<select name="stype" id="SType" onchange="staffCheck(this);">
    		<option value="Misc">Miscellaneous</option>
			<option value="Nurse">Nurse</option>
			<option value="WardBoy">Ward Boy</option>
    	</select>
		<!--Extra fields shown depending on type chosen-->
    	<div id="nurseType" style="display:none;">
  			<label for="NQual">Qualification:</label>
  			<input type="text" name="nqual" id="NQual" placeholder="List of Qualifications">
		</div>
		<div id="wardboyType" style="display:none;">
  			<label for="WDept">Department<sup>*</sup>:</label>
        	<select name="wdept" id="WDept">
			<?php
        	   $res3=mysqli_query($temp,"SELECT * FROM department ORDER BY dept_name");
        	   while($row3=mysqli_fetch_array($res3))
       	    	{
			?>
				<option value="<?php echo $row3[0]?>"><?php echo $row3["1"];?></option>
			<?php
        	   }
        	?>
        	</select>

			<label for="WDuty">Duty:</label>
  			<input type="text" name="wduty" id="WDuty" placeholder="What's his duty">
		</div>
    </p>
    <p>
    	<label for="Shift">Shift<sup>*</sup>:</label>
    	<select name="shift" id="Shift" >
    		<option value="Day">Day [0600-1400]</option>
			<option value="Evening">Evening [1400-2200]</option>
			<option value="Night">Night [2200-0600]</option>

    	</select>
    </p>
    <p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
	</form>
</div>

<div id="Bed" class="tabcontent">
	<h3>Add New Bed</h3>
  	<form action="insert_bed.php" method="post">
		<p>
			<label for="BType">Bed Type<sup>*</sup>:</label>
	    	<select name="btype" id="BType">
	    		<option value="Day Care">Day Care</option>
				<option value="Multi Bed">Multi Bed</option>
				<option value="Twin Delux">Twin Delux</option>
				<option value="Private Delux">Private Delux</option>
				<option value="Executive Suite">Executive Suite</option>
				<option value="Royal Suite">Royal Suite</option>
				<option value="Respiratory Bed">Respiratory Bed</option>
				<option value="Emergency Ward">Emergency Ward</option>
				<option value="ICU">ICU</option>
				<option value="ICCU">ICCU</option>
				<option value="PICU">PICU</option>
				<option value="HDU">HDU</option>
				<option value="SICU">SICU</option>
				<option value="NICU">NICU</option>
    		</select>
		</p>
		<p>
			<label for="BCharge">Daily Charge<sup>*</sup>:</label>
        	<input type="number" name="bcharge" id="BCharge" min="0">
		</p>
		<p>
			<label for="BDept">Department<sup>*</sup>:</label>
        	<select name="bdept" id="BDept">
			<?php
        	   $res4=mysqli_query($temp,"SELECT * FROM department ORDER BY dept_name");
        	   while($row4=mysqli_fetch_array($res4))
       	    	{
			?>
				<option value="<?php echo $row4[0]?>"><?php echo $row4["1"];?></option>
			<?php
        	   }
        	?>
        	</select>
        </p>
        <p>	Nurses(per shift):
        	<br>
        	<label for="SDay">Day [0600-1400]:</label>
        	<select name="sday" id="SDay">
        	<option value="NA">Not Available</option>
			<?php
        	   $res5=mysqli_query($temp,"SELECT s_id,s_name FROM staff WHERE s_type='Nurse' AND shift='Day'");
        	   while($row5=mysqli_fetch_array($res5))
       	    	{
			?>
				<option value="<?php echo $row5[0]?>"><?php echo $row5["1"];?></option>
			<?php
        	   }
        	?>
        	</select>
        	<br>
        	<label for="SEve">Evening [1400-2200]:</label>
        	<select name="seve" id="SEve">
        	<option value="NA">Not Available</option>
			<?php
        	   $res6=mysqli_query($temp,"SELECT s_id,s_name FROM staff WHERE s_type='Nurse' AND shift='Eve'");
        	   while($row6=mysqli_fetch_array($res6))
       	    	{
			?>
				<option value="<?php echo $row6[0]?>"><?php echo $row6["1"];?></option>
			<?php
        	   }
        	?>
        	</select>
        	<br>
        	<label for="SNight">Night [2200-0600]:</label>
        	<select name="snight" id="SNight">
        	<option value="NA">Not Available</option>
			<?php
        	   $res7=mysqli_query($temp,"SELECT s_id,s_name FROM staff WHERE s_type='Nurse' AND shift='Night'");
        	   while($row7=mysqli_fetch_array($res7))
       	    	{
			?>
				<option value="<?php echo $row7[0]?>"><?php echo $row7["1"];?></option>
			<?php
        	   }
        	?>
        	</select>
        </p>
		<p>Labels marked * are required</p>
	    <input class="submit" type="submit" value="Submit">
	    <input type="reset">	
  	</form>

</div>

<div id="Department" class="tabcontent">
  <h3>Add New Department</h3>
	<form action="insert_dept.php" method="post">
  	<p>
        <label for="D_Name">Department Name:<sup>*</sup></label>
        <input type="text" name="d_name" id="D_Name" value="" placeholder="Department name">
    </p>
    <p>
        <label for="Hod">Head of Department:</label>
        <select name="hod" id="Hod">
        <option value="0">Not Selected</option>
		<?php
           $res2=mysqli_query($temp,"SELECT * FROM doctor WHERE d_type='Perm' ORDER BY d_name");
           while($row2=mysqli_fetch_array($res2))
           {
		?>
			<option value="<?php echo $row2[0]?>"><?php echo $row2["1"];?></option>
		<?php
           }
        ?>
        </select>
    </p>
    <p>
        <label for="V_Charge">Charge per Visit:<sup>*</sup></label>
        <input type="number" name="v_c" id="V_Charge" value="0" min="0">
    </p>
	<p>
        <label for="C_Charge">Charge per Consultation:<sup>*</sup></label>
        <input type="number" name="c_c" id="C_Charge" value="0" min="0">
    </p>
    <p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
    </form>
</div>

<div id="Patient" class="tabcontent">
	<h3>Add New Patient Details</h3>
	<a href="insert_trans.php">Go Back to Transactions</a>
	<form action="insert_ptnt.php" method="post">
    <p>
        <label for="PName">Name<sup>*</sup>:</label>
        <input type="text" name="pname" id="PName" value="" placeholder="Patient's name">
    </p>
    <p>
        <label for="PGender">Gender<sup>*</sup>:</label>
        <select name="psex" id="PGender">
        	<option value="Male">Male</option>
        	<option value="Female">Female</option>
        	<option value="Other">Other</option>
        </select>
    </p>
    <p>
        <label for="PDOB">Date of Birth<sup>*</sup>:</label>
        <input type="date" name="pdob" id="PDOB" max=
     <?php
         echo date('Y-m-d');
     ?>>
    </p>
    <p>
		<textarea rows="5" cols="50" name="paddr" id="PAddr" placeholder="Home Address*"></textarea>
	</p>
	<p>
        <label for="PCont">Contact No<sup>*</sup>:</label>
        <input type="number" name="pcont" id="PCont" min="0">
    </p>
        
    <p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
    </form>
</div>
</div>

<script>
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
function openForm(evt, formName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(formName).style.display = "block";
    evt.currentTarget.className += " active";
}

function docCheck(that) {
	if(that.value == "Perm"){
		document.getElementById("permType").style.display="block";
		document.getElementById("tempType").style.display="none";
	}
	if(that.value == "Visit"){
		document.getElementById("tempType").style.display="block";
		document.getElementById("permType").style.display="none";
	}	
	if(that.value == "Disc"){
		document.getElementById("tempType").style.display="none";
		document.getElementById("permType").style.display="none";
	}
}

function staffCheck(that) {
	if(that.value == "Nurse"){
		document.getElementById("nurseType").style.display="block";
		document.getElementById("wardboyType").style.display="none";
	}
	if(that.value == "WardBoy"){
		document.getElementById("wardboyType").style.display="block";
		document.getElementById("nurseType").style.display="none";
	}	
	if(that.value == "Misc"){
		document.getElementById("nurseType").style.display="none";
		document.getElementById("wardboyType").style.display="none";
	}
}
</script>
</body>
</html>
