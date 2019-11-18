  <!DOCTYPE html>  
  <html lang="en">  
  <head>  
      <meta charset="UTF-8">  
      <title>你够快吗？</title>  
     <link rel="stylesheet" type="text/css" />  
  </head>  
  <body>  
     <div id="login">  
         <h4>来来来，输入你的名字和年龄，我给你算算手速</h4>  
         <form method="get">  
             <input type="text" required="required" placeholder="your name" name="name"></input>  
             <br>
             <input type="text" required="required" placeholder="your age" name="age"></input>
             <br>  
             <button class="but" type="submit">算一把！</button>  
         </form>  
     </div>  
 </body>  
 </html> 
<?php
    $savepath = "uploads/" . sha1($_SERVER['REMOTE_ADDR']) . "/";
    if (!is_dir($savepath)) {
        $oldmask = umask(0);
        mkdir($savepath);
        umask($oldmask);
	}
	$flag='flag_here';
    if ((@$_GET['name']) && (@$_GET['age'])) 	
    {
        $content = $flag;
        file_put_contents("$savepath" . sha1($_GET['name']), $content);
        $msg = '来!你的手速结果就在这儿啦！ ' . $savepath . htmlspecialchars(sha1($_GET['name'])) . "";
        echo $msg;
        usleep(100000);
        @$content = "you are too slow";
        file_put_contents("$savepath" . sha1($_GET['name']), $content);
    }
?>
