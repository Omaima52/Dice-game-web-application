<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>App Game</title>

<meta charset="UTF-8">
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
<div class="container-login100" style="background-image: url('style/images/bg-01.jpg');">
<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">



<span class="login100-form-title p-b-49">
Page d'erreur
</span>


	<ul>

		<c:forEach items="${requestScope.messages}" var="msg">

			<li style="color: red">${msg.text}</li>
		</c:forEach>
	</ul>

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