<!--if($_POST['a']!==$_POST['b']&&sha1($_POST['a'])===sha1($_POST['b']))
    {
      echo "XXXXXXX";
      }
      else
    {
      echo("failure");
    }
-->
<?php
    error_reporting(0);
    $flag="flag_here";
    if($_POST['a']!==$_POST['b']&&sha1($_POST['a'])===sha1($_POST['b']))
    {
      echo $flag;
    }
    else
    {
      echo("failure");
    }
?>