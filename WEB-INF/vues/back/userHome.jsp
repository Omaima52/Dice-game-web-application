<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="com.bo.GameState"%>

<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Jeu de Des</title>


<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/style/images/icons/dice.ico" />

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
<body>

<div class="limiter">
<div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/style/images/Dice_game.jpg');">
<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
<span class="label-input100">Bonjour </span> <strong><c:out value="${sessionScope.gameState.user.nom}" /></strong> <br>
<span class="label-input100">Entrer le numero du de a lancer!</span>
<form class="login100-form validate-form"  method="POST"
			action="${pageContext.request.contextPath}/back/GameServlet">

<div class="wrap-input100 validate-input m-b-23" data-validate="Username is reauired">
<input class="input100" type="text" placeholder="Numero de de" name="numeroDe" >
<span class="focus-input100" data-symbol="&#xf190;"></span>
</div>

<div class="container-login100-form-btn">
<div class="wrap-login100-form-btn">
<div class="login100-form-bgbtn"></div>
<button class="login100-form-btn">
Lancer le de
</button>
</div>

<br>
<a href="${pageContext.request.contextPath}/back/bestScore">Meilleurs scores</a> | 
<a href="${pageContext.request.contextPath}/back/ReinitGameServlet">Reinitialiser le jeu</a>|
<a href="${pageContext.request.contextPath}/DeconnectServlet">Se deconnecter</a>
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
