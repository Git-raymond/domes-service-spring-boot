<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Connexion</title>
<jsp:include page="templates/head.jsp" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/logo.png" />
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
<style>
.error {
	color: #ff0000;
	font-weight: bold;
}
</style>
</head>
<body>
	<%
	request.setAttribute("login_active", "active");
	%>
	<jsp:include page="templates/header.jsp" />
	<div class="limiter">
		<div class="container-login100" style="background-color: orange;">
			<div class="shadow-lg p-2 p-lg-5 rounded" data-aos="fade-up">
				<div class="wrap-login100 p-t-50 p-b-90">
					<s:form
						action="/loginUser"
						method="post" modelAttribute="client"
						class="login100-form validate-form flex-sb flex-w">
						<span class="login100-form-title p-b-51"> Connexion</span>
						<span class="font-weight-bold text-danger text-center pl-5 pb-3">${erreur}</span>
						<div class="wrap-input100 m-b-16">
							<s:input path="email" class="input100" type="email"
								placeholder="Email" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<s:errors path="email" cssClass="error" />
							</div>
						</div>
						<div class="wrap-input100 m-b-16">
							<s:input path="password" class="input100" type="password"
								placeholder="Mot de passe" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<s:errors path="password" cssClass="error" />
							</div>
						</div>
						<div class="flex-sb-m w-full p-t-3 p-b-24">
							<div class="contact100-form-checkbox pl-3">
								<input class="input-checkbox100" id="ckb1" type="checkbox"
									name="remember-me-checkbox"> <label
									class="label-checkbox100" for="ckb1"> Restez connecté </label>
							</div>
							<div class="pr-3">
								<a href="#" class="txt1"> Mot de passe oublié ? </a>
							</div>
						</div>
						<div class="container-login100-form-btn m-t-17">
							<button type="submit" class="login100-form-btn">Se
								connecter</button>
						</div>
					</s:form>
					<br>
					<div class="text-center">
						<p class="txt1" style="color: #999999">
							Nouveau client ? <a href="inscription" class="txt1">
								S'inscrire ici </a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	<jsp:include page="templates/footer.jsp" />
	<jsp:include page="templates/scripts.jsp" />
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
