<?php
$connect = mysqli_connect("localhost","root","apmsetup")
			   or die("connect fail : ".mysqlierror());
echo("success\n");
mysqli_select_db($connect,"record") or die ("db fail");
$name = $_GET['name'];
$query = "select val from value where name='$name'";
$result = mysqli_query($connect,$query) or die ("query fail : ".mysqlierror());

echo "<table border = '1'>\n";
echo "<tr>
	<td width = 100 height=30 align = 'center'> value </td>
        </tr>";
while($line = mysqli_fetch_row($result)){
echo "<tr>";
foreach($line as $row_value => $abc){
echo "<td aline = 'center'> $abc </td>";}
echo "</tr>";}
echo "</table>\n";
mysqli_free_result($result);
mysqli_close($connect);
?>
