<?php
error_reporting(0);
include("config.php");

if(!isset($_SESSION['id'])){
	header("Location: login.php");
	exit();
}


$sql = "SELECT persons.id,username,sex,age,address,height,job,content,save FROM persons left join pictures on persons.id = pictures.personid;";

include("templates/index.html");