<%-- 
    Document   : index
    Created on : 01-Apr-2020, 8:42:26 AM
    Author     : Harry Poter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<title>Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="login/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="login/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">	
	<link rel="stylesheet" type="text/css" href="login/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
</head>
<body>
	<div class="container-login100" style="background-image: url('login/images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                    <form class="login100-form validate-form" action="Userregisterservlet" method="post">
                            <span class="login100-form-title p-b-37">
					Gymnasium
				</span>
				<span class="login100-form-title p-b-37">
					Sign Up
				</span>
                                <div class="wrap-input100 validate-input m-b-20" data-validate="Enter First Name">
					<input class="input100" type="text" name="fname" placeholder="First Name">
					<span class="focus-input100"></span>
				</div>
                                <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Last Name">
					<input class="input100" type="text" name="lname" placeholder="Last Name">
					<span class="focus-input100"></span>
				</div>
                                <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Email">
					<input class="input100" type="text" name="email" placeholder="Email">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username">
					<input class="input100" type="text" name="username" placeholder="username">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="password" placeholder="password">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<input type="submit" class="login100-form-btn" value="SIGN UP">
				</div>
                                <div class="text-center">
					<a href="index.jsp" class="txt2 hov1">
						Sign In
					</a>
				</div>
			</form>	
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	<script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="login/vendor/animsition/js/animsition.min.js"></script>
	<script src="login/vendor/bootstrap/js/popper.js"></script>
	<script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="login/vendor/select2/select2.min.js"></script>
	<script src="login/vendor/daterangepicker/moment.min.js"></script>
	<script src="login/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="login/vendor/countdowntime/countdowntime.js"></script>
	<script src="login/js/main.js"></script>
</body>
</html>