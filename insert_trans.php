<?php
        $temp=mysqli_connect("localhost", "root", "","nurhome");   		
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Transaction</title>
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
  <button class="tablinks" onclick="openForm(event, 'Visit')">Visit</button>
  <button class="tablinks" onclick="openForm(event, 'Admit')">Admit</button>
  <button class="tablinks" onclick="openForm(event, 'Consult')">Consult</button>
  <button class="tablinks" onclick="openForm(event, 'Payment')" id="defaultOpen">Payment</button>
</div>

<div id="Visit" class="tabcontent">
	<h3>Add New Visit</h3>
	<form action="trans_visit.php" method="post">
	<p>
		<label for="VDoc">Doctor*:</label>
        <select name="vdoc" id="VDoc">
        <option value="0">Not Selected</option>
		<?php
           $res2=mysqli_query($temp,"SELECT * FROM doctor ORDER BY d_name");
           while($row2=mysqli_fetch_array($res2))
           {
		?>
			<option value="<?php echo $row2[0]?>"><?php echo $row2["1"];?></option>
		<?php
           }
        ?>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;
		<label for="VPat">Patient*:</label>
        <select name="vpat" id="VPat">
        <option value="0">Not Selected</option>
		<?php
           $res1=mysqli_query($temp,"SELECT * FROM patient ORDER BY p_name");
           while($row1=mysqli_fetch_array($res1))
           {
		?>
			<option value="<?php echo $row1[0]?>"><?php echo $row1["1"];?></option>
		<?php
           }
        ?>
        </select>
        <a href="insert_main.php">Click Here to Add new Patient</a>
    </p>
    <p>
		<label for="VDate">Date of Visit<sup>*</sup>:</label>
        <input type="date" name="vdate" id="VDate" max=
     <?php
         echo date('Y-m-d');
     ?>>
    	&nbsp;&nbsp;&nbsp;&nbsp;
    	<label for="VTime">Time of Visit<sup>*</sup>:</label>
        <input type="time" name="vtime" id="VTime">
    </p>
	<p>
		<textarea rows="5" cols="50" name="vcomm" id="VComm" placeholder="Comments(if any)"></textarea>
	</p>
	<p>
		<input type="hidden" name="vpaid" value="0" />
    	<input type="checkbox" name="vpaid" value="1">Paid      
	</p>
    <p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
    </form>
</div>

<div id="Admit" class="tabcontent">
	<h3>Add New Admission</h3>
	<form action="trans_admit.php" method="post">
	<p>
		<label for="APat">Patient*:</label>
        <select name="apat" id="APat">
        <option value="0">Not Selected</option>
		<?php
           $res4=mysqli_query($temp,"SELECT * FROM patient ORDER BY p_name");
           while($row4=mysqli_fetch_array($res4))
           {
		?>
			<option value="<?php echo $row4[0]?>"><?php echo $row4["1"];?></option>
		<?php
           }
        ?>
        </select>
        <a href="insert_main.php">Click Here to Add new Patient</a>
    </p>
    <p>
		<label for="ADept">In Department*:</label>
        <select name="adept" id="ADept">
        <option value="0">Not Selected</option>
		<?php
           $res5=mysqli_query($temp,"SELECT * FROM department ORDER BY dept_name");
           while($row5=mysqli_fetch_array($res5))
           {
		?>
			<option value="<?php echo $row5[0]?>"><?php echo $row5["1"];?></option>
		<?php
           }
        ?>
        </select>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <label for="BType">Bed Type*:</label>
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
    	<label for="ADoc">Under Doctor*:</label>
        <select name="adoc" id="ADoc">
        <option value="0">Not Selected</option>
		<?php
           $res3=mysqli_query($temp,"SELECT * FROM doctor WHERE d_type='Perm' ORDER BY d_name");
           while($row3=mysqli_fetch_array($res3))
           {
		?>
			<option value="<?php echo $row3[0]?>"><?php echo $row3["1"];?></option>
		<?php
           }
        ?>
        </select>
    </p>
    <p>
		<label for="ADate">Date of Admission<sup>*</sup>:</label>
        <input type="date" name="adate" id="ADate" max=
     <?php
         echo date('Y-m-d');
     ?>>
    </p>
	<p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
    </form>
	
	
	<h3>Discharge Patient</h3>
	<form action="trans_disc.php" method="post">
	<p>
    	<label for="ARec">Bed No/Patient*:</label>
        <select name="arec" id="ARec">
        <option value="0">Not Selected</option>
		<?php
           $res6=mysqli_query($temp,"SELECT t_admit.a_id, t_admit.b_id, patient.p_name FROM t_admit INNER JOIN patient ON patient.p_id=t_admit.p_id WHERE t_admit.disc_date IS NULL ORDER BY patient.p_name");
           while($row6=mysqli_fetch_array($res6))
           {
		?>
			<option value="<?php echo $row6[0]?>"><?php echo "Bed-".$row6["1"].":    ".$row6["2"]; ?></option>
		<?php
           }
        ?>
        </select>
    </p>
	<p>
		<label for="DDate">Date of Discharge<sup>*</sup>:</label>
		<!--Couldn't add check min function on same page. Delegating task to backend-->
        <input type="date" name="ddate" id="DDate" max=
     <?php
         echo date('Y-m-d');
     ?>>
    </p>
	<p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
    </form>
	
</div>

<div id="Consult" class="tabcontent">
	<h3>Add New Consult</h3>
	<form action="trans_cons.php" method="post">
	<p>
		<label for="CRec">Bed No/Patient*:</label>
        <select name="crec" id="CRec">
        <option value="0">Not Selected</option>
		<?php
           $res8=mysqli_query($temp,"SELECT t_admit.a_id, t_admit.b_id, patient.p_name FROM t_admit INNER JOIN patient ON patient.p_id=t_admit.p_id WHERE t_admit.disc_date IS NULL ORDER BY patient.p_name");
           while($row8=mysqli_fetch_array($res8))
           {
		?>
			<option value="<?php echo $row8[0]?>"><?php echo "Bed-".$row8["1"].":    ".$row8["2"]; ?></option>
		<?php
           }
        ?>
        </select>
	</p>
	<p>
		<label for="CDoc">Consulting Doctor*:</label>
        <select name="cdoc" id="CDoc">
        <option value="0">Not Selected</option>
		<?php
           $res7=mysqli_query($temp,"SELECT * FROM doctor ORDER BY d_name");
           while($row7=mysqli_fetch_array($res7))
           {
		?>
			<option value="<?php echo $row7[0]?>"><?php echo $row7["1"];?></option>
		<?php
           }
        ?>
        </select>
    </p>
    <p>
		<label for="CDate">Date of Visit<sup>*</sup>:</label>
        <input type="date" name="cdate" id="CDate" max=
     <?php
         echo date('Y-m-d');
     ?>>
    	&nbsp;&nbsp;&nbsp;&nbsp;
    	<label for="CTime">Time of Visit<sup>*</sup>:</label>
        <input type="time" name="ctime" id="CTime">
    </p>
	<p>
		<textarea rows="5" cols="50" name="ccomm" id="CComm" placeholder="Comments(if any)"></textarea>
	</p>
    <p>Labels marked * are required</p>
    <input class="submit" type="submit" value="Submit">
    <input type="reset">
    </form>
</div>

<div id="Payment" class="tabcontent">
	<h3>Add New Payment</h3>
	<form>
		<p>
			<label for="PPat">Patient:</label>
        	<select name="ppat" id="PPat" onchange="showUser(this.value)">
        	<option value="">Select a person:</option>
			<?php
        	   $res9=mysqli_query($temp,"SELECT * FROM patient ORDER BY p_name");
        	   while($row9=mysqli_fetch_array($res9))
        	   {
			?>
				<option value="<?php echo $row9[0]?>"><?php echo $row9["1"];?></option>
			<?php
        	   }
        	?>
        	</select>
        </p>
	</form>
	<div id="txtHintUnPaid">
		<p>Unpaid Bills of the Patient will be listed here...</p>
	</div>
	<div id="txtHintPaid">
		<p><button id ='PaidBtn' onclick="showUserPaid()">Show Paid Records</button></p>
	</div>
</div>

</div>
</body>
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
function showUser(str) {
	document.getElementById("txtHintPaid").innerHTML = "<p><button id ='PaidBtn' onclick='showUserPaid()'>Show Paid Records</button></p>";
    if (str == "") {
        document.getElementById("txtHintUnPaid").innerHTML = "<p>Unpaid Bills of the Patient will be listed here...</p>";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHintUnPaid").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","getunpaid.php?q="+str,true);
        xmlhttp.send();
    }
}

function showUserPaid() {
	str1=document.getElementById('PPat').value;
    if (str1 == "") {
        alert("No Patient Selected for displaying Paid Records.");
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHintPaid").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","getpaid.php?q="+str1,true);
        xmlhttp.send();
    }
}
</script>
</body>
</html>
