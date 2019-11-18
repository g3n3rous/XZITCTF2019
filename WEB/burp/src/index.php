  <!DOCTYPE html>  
  <html lang="en">  
  <head>  
      <meta charset="UTF-8">  
      <title></title>  
     <link rel="stylesheet" type="text/css" />  
  </head>  
  <body>  
     <div id="login">  
         <h4>登陆密码是6位纯数字数，第一位不为0 </h4>  
         <form method="post">
            请输入用户名：
              <br>  
             <input type="text" required="required" placeholder="username" name="username" value="admin"></input>  
             <br>
             请输入密码：
             <br>
             <input type="password" required="required" placeholder="pssword" name="pssword"></input>
             <br>  
             <button type="submit">登陆</button>  
         </form>  
     </div>  
 </body>  
 </html> 
<?php
    $flag='flag_here';
    if(@$_POST['username']=='admin'&&@$_POST['pssword']=='143323')
    {
      echo $flag;
    }
    else
    {
      echo('用户名或密码错误！');
    }
?>