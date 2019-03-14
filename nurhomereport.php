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

$res = mysqli_query($link,"SELECT COUNT(d_visit.d_fee_per_visit), d_dept FROM doctor LEFT JOIN d_visit ON doctor.d_id= d_visit.d_id GROUP BY d_dept ORDER BY COUNT(d_visit.d_fee_per_visit)");

$records = array();
$records[] = ['Department_id', 'No. of Patients'];
//Retrive the records and add it to the array
while($row  = $res->fetch_array())
{
	$records[] = [$row[1], $row[0]];
}
//Converting to json type data before printing
// print(json_encode($records));
?>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);
      var dataV = <?php echo json_encode($records); ?>;
      function drawChart() {
        var data = google.visualization.arrayToDataTable(dataV);
		
        var options = {
          chart: {
            title: 'Number of patients visiting a department',
          },
          bars: 'vertical', // Required for Material Bar Charts.
          hAxis: {format: 'decimal'},
          height: 400,
          colors: ['#1b9e77', '#d95f02', '#7570b3']
        };

        var chart = new google.charts.Bar(document.getElementById('chart_div'));

        chart.draw(data, google.charts.Bar.convertOptions(options));

        var btns = document.getElementById('btn-group');

        btns.onclick = function (e) {

          if (e.target.tagName === 'BUTTON') {
            options.hAxis.format = e.target.id === 'none' ? '' : e.target.id;
            chart.draw(data, google.charts.Bar.convertOptions(options));
          }
        }
      }
</script>

<div id="chart_div"></div>
<?php
mysqli_close($link);
?>