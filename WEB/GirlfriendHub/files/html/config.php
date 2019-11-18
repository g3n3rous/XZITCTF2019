<?php
@error_reporting(0);
session_start();

$host = "127.0.0.1";
$dbuser = "root";
$dbpass = "root";
$dbname = "girlfriendhub";
@$con = mysql_connect($host,$dbuser,$dbpass);
if (!$con)
{
    echo "Failed to connect to MySQL: " . mysql_error();
}
    @mysql_select_db($dbname,$con) or die ( "Unable to connect to the database: $dbname");
　$sql_connect = "SQL Connect included";

?>
