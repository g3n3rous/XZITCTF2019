<!DOCTYPE html>
<html lang="en">
<head>
	<title>Web签到题</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/sketchy/bootstrap.min.css">
    <style type="text/css">
        .form-control-borderless {
            border: none;
        }
        .form-control-borderless:hover, .form-control-borderless:active, .form-control-borderless:focus {
            border: none;
            outline: none;
            box-shadow: none;
        }
    </style>
</head>
<body>
    <div class='container'>
        <br>
        <br>
        <div class='row justify-content-center'>
            <h1><font style="font-size: 200%">Welcome to XZITCTF 2019</font></h1>
        </div>

        <br>
        <br>
        <div class='row justify-content-center'>
        	<h3><font color='#996699'>你只要提交 <code>XZITCTF2019</code> 就可以得到 flag</font></h3>
        </div>
        <div class='row justify-content-center'>
            <div class="col-6 col-md-10 col-lg-6">
                <form class="card card-sm" method="POST" action="">
                    <div class="card-body row no-gutters align-items-center">
                        <div class="col">
                            <input class="form-control form-control-lg form-control-borderless" type="text" name="answer" maxlength="10">
                        </div>
                        <div class="col-auto">
                            <button class="btn btn-lg btn-success" type="submit">Submit</button>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>

        <br>
        <br>
	<div class='row justify-content-center'>
	<h3><b><code>
           <?php 
                    	$flag = 'flag_here';
                    	if (isset($_POST['answer'])){
                    		if($_POST['answer'] == "XZITCTF2019"){
                    			echo $flag;
                    		}
                    		else{
                    			echo "Wrong!";
                    		}
                    	}
                    ?></code></b></h3>
        </div>
    </div>
</body>
</html>
