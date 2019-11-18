<?php
error_reporting(0);
include("config.php");

if(isset($_SESSION['id'])){
    header("Location: index.php");
    exit();
}


if(isset($_POST['username']) && isset($_POST['password'])){
    if(strlen($_POST['username']) > 20){
        exit("<script>alert('username too long.');history.go(-1);</script>");
    }else{
        $username = addslashes($_POST['username']);
        $sql = "select * from users where username='$username' LIMIT 0,1;";
        $retval = mysql_query($sql,$con);

        $row = mysql_fetch_array($retval);

        if(!isset($row['id'])){
            $password = md5($_POST['password']);
            $sql = "insert into users (username,password) values ('$username', '$password');";
                $retval = mysql_query($sql,$con);
            if ($retval) {
                exit("<script>alert('Register successful.');location.href='login.php';</script>");
            }

            
        }else{
            exit("<script>alert('Username already exists!');history.go(-1);</script>");
        }
    }
}else {
    include("templates/register.html");
}
