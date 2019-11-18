<?php
error_reporting(0);
include("config.php");

if(isset($_SESSION['id'])){
    header("Location: index.php");
    exit();
}

if(isset($_POST['username']) && isset($_POST['password'])){
    $username = addslashes($_POST['username']);
    $sql = "select * from users where username='$username' LIMIT 0,1;";
    $retval = mysql_query($sql,$con);

	$row = mysql_fetch_array($retval);


    if(isset($row['id']) && md5($_POST['password']) === $row['password']){
        $_SESSION['id'] = $row['id'];
        exit("<script>alert('Login successful.');location.href='index.php';</script>");
    }else{
        exit("<script>alert('username or password error');history.go(-1);</script>");
    }
}else{
    include("templates/login.html");
}
