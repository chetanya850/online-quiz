<?php 
session_start();
include "connection.php";
?>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min.css">
    <link rel="stylesheet" href="css1/owl.carousel.css">
    <link rel="stylesheet" href="css1/owl.theme.css">
    <link rel="stylesheet" href="css1/owl.transitions.css">
    <link rel="stylesheet" href="css1/animate.css">
    <link rel="stylesheet" href="css1/normalize.css">
    <link rel="stylesheet" href="css1/main.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css1/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

	<div class="error-pagewrap" style="background-image: url('login.jpg'); background-repeat: no-repeat; background-size: 100% 100%;">
		<div class="error-page-int">
			<div class="text-center m-b-md custom-login">
				<h3>LOGIN FORM</h3>

			</div>
			<div class="content-error" style="opacity: 0.9;">
				<div class="hpanel">
                    <div class="panel-body">
                        <form action="" name="form1" method="post">
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="example@gmail.com" title="Please enter you username" required="" value="" name="username" id="username" class="form-control"/>

                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control"/>

                            </div>
                            <div class="form-group">

                            <input type="submit" class="btn btn-default btn-block" style="background-color: lightblue;" name="login" value="LOGIN"/>
                            <a class="btn btn-default btn-block" href="register.php">Sign-Up</a>

                        	</div>
							
							<div class="alert alert-danger" id="failure" style="margin-top: 10px; display:none">
									<strong>Does not match</strong> Invalid Username or password.
							</div>			

							
							
                        </form>
                    
<?php 
	if(isset($_POST["login"]))
	{
		$count=0;
		$u=$_POST["username"];
		$p=$_POST["password"];
		$res=mysqli_query($link,"select * from registration where username='$u' && password='$p'");
		$row=mysqli_fetch_array($res,MYSQLI_ASSOC);
		$count=mysqli_num_rows($res);
		
		if($count==0)
		{
			?>
			<script type="text/javascript">
			document.getElementById("failure").style.display="block";
			</script>
			<?php
			
		}else{
			
			$_SESSION["username"]=$_POST["username"];
			$_SESSION["fn"]=$row["firstname"]."   ".$row["lastname"];
			
			
			
			?>
			<script type="text/javascript">
			window.location.href="select_exam.php";
			</script>
			<?php
		}
	}
	
	?>
</div>
                </div>
			</div>

		</div>   
    </div>
		

    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery-price-slider.js"></script>
    <script src="js/jquery.meanmenu.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>


</body>

</html>