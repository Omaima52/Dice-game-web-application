
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Inscription page</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="images/icons/dice.ico" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/fonts/iconic/css/material-design-iconic-font.min.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/vendor/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/vendor/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style/css/main.css">

<meta name="robots" content="noindex, follow">



</head>
<%-- <body>
	<div class="container">

		<form class="form-signin" method="POST"
			action="${pageContext.request.contextPath}/UserManagementServlet">
			<div>
				
			</div>
			<h2 class="form-signin-heading">Inscription</h2>
			
			<label for="nom" class="sr-only">nom</label> 
			<input type="text" class="form-control" placeholder="nom" required autofocus type="text" id="nom" name="nom" value="" size="20" maxlength="60"> <br />
			<label for="prenom" class="sr-only">pr�nom</label> 
			<input type="text" placeholder="pr�nom" id="prenom" name="prenom" value="" size="20" maxlength="60" class="form-control"  required> <br />
			
			<label for="motdepasse" class="sr-only">Mot de passe</label> 
			<input type="password"   placeholder="Mot de passe" id="motdepasse" name="password" value="" size="20" maxlength="20" class="form-control"  required><br />
			
			<label for="nom" class="sr-only">Nom d'utilisateur</label> 
			<input type="text" placeholder="Nom d'utilisateur" id="nom" name=login value="" size="20" maxlength="20" class="form-control"  required><br />
					
					
					
					
			<button class="btn btn-lg btn-primary btn-block" type="submit">Inscription</button>
		</form>
	</div>
</body> --%>











<body>
<div class="limiter">
<div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/style/images/Dice_game.jpg');">
<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
<form class="login100-form validate-form"  method="POST"
			action="${pageContext.request.contextPath}/UserManagementServlet">
<span class="login100-form-title p-b-49">
Inscription
</span>
<div class="wrap-input100 validate-input m-b-23" data-validate="Username is reauired">
<span class="label-input100">nom</span>
<input class="input100" type="text" name="nom" id="nom" placeholder="Type your last name" required>
<span class="focus-input100" data-symbol="&#xf206;"></span>
</div>
<div class="wrap-input100 validate-input m-b-23" data-validate="Username is reauired">
<span class="label-input100">prenom</span>
<input class="input100" type="text" name="prenom" id="prenom" placeholder="Type your first name" required>
<span class="focus-input100" data-symbol="&#xf206;"></span>
</div>
<div class="wrap-input100 validate-input m-b-23" data-validate="Password is required">
<span class="label-input100">Mot de passe</span>
<input class="input100" type="password"  id="motdepasse" name="password" value="" size="20" maxlength="20" placeholder="Type your password" required>
<span class="focus-input100" data-symbol="&#xf190;"></span>
</div>
<div class="wrap-input100 validate-input" data-validate="Username is reauired">
<span class="label-input100">Nom d'utilisateur</span>
<input class="input100" id="nom" name=login value="" size="20" maxlength="20"  placeholder="Type your username"required >
<span class="focus-input100"  data-symbol="&#xf206;"></span>
</div>
<br>

<div class="container-login100-form-btn">
<div class="wrap-login100-form-btn">
<div class="login100-form-bgbtn"></div>
<button class="login100-form-btn" type="submit">
Inscription
</button>
</div>
</div>


</form>
</div>
</div>
</div>
<div id="dropDownSelect1"></div>

<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="vendor/animsition/js/animsition.min.js"></script>

<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="vendor/select2/select2.min.js"></script>

<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>

<script src="vendor/countdowntime/countdowntime.js"></script>

<script src="js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"6ee6dfa67c7b667b","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.12.0","si":100}' crossorigin="anonymous"></script>
</body>

</html>