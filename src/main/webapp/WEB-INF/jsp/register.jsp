<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Inscription</title>
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
<body>
	<%
	request.setAttribute("register_active", "active");
	%>
	<jsp:include page="templates/header.jsp" />


	<div class="limiter" style="background-color: orange;">
		<div class="container-login100">
			<div class="shadow-lg p-2 p-lg-5 rounded" data-aos="fade-up">
				<div class="wrap-login100 p-t-50 p-b-90">
					<form:form action="/registerUser" method="post"
						modelAttribute="newuser"
						class="login100-form validate-form flex-sb flex-w justify-content-center"
						enctype="multipart/form-data">
						<span class="login100-form-title m-b-20"> Inscription </span>

						${alert}
						<div class="pl-3 mb-4">
							<form:errors path="nom" cssClass="error" />
							<br>
							<form:errors path="prenom" cssClass="error" />
							<br>
							<form:errors path="dateNaissance" cssClass="error" />
							<br>
							<form:errors path="telephone" cssClass="error" />
							<br>
							<form:errors path="email" cssClass="error" />
							<br>
							<form:errors path="password" cssClass="error" />
							<br>
							<form:errors path="confirmPassword" cssClass="error" />
							<br>
						</div>
						<div class="m-b-16">
							<label class="m-0" for="imgInp">
								<figure class="d-flex justify-content-center m-0">
									<img id="blah" src="images/blank_avatar.png" alt="your image"
										style="border-radius: 50%; height: 8em; width: 8em">
								</figure>
								<figcaption>Clickez ici pour changer votre image de
									profil</figcaption>
							</label> <input name="profile-image" type="file" id="imgInp"
								style="display: none;">
						</div>
						<div class="wrap-input100 m-b-16">
							<span class="text-center font-italic px-5">(* Champs
								obligatoires)</span> <span class="focus-input100"></span>
						</div>
						<div class="wrap-input100 m-b-16">
							<form:input path="nom" type="text" class="input100"
								placeholder="Nom*" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="nom" cssClass="error" />
							</div>
						</div>
						<div class="wrap-input100 m-b-16">
							<form:input path="prenom" type="text" class="input100"
								placeholder="Prénom*" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="prenom" cssClass="error" />
							</div>
						</div>
						<div class="wrap-input100 m-b-16">
							<h5 class="pl-4 pt-3">Date de naissance*</h5>
							<form:input path="dateNaissance" type="date" class="input100" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="dateNaissance" cssClass="error" />
							</div>
						</div>
						<div class="wrap-input100 m-b-16">
							<form:input path="telephone" type="text" class="input100"
								placeholder="Téléphone*" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="telephone" cssClass="error" />
							</div>
						</div>

						<div class="wrap-input100 m-b-16">
							<form:input path="email" type="email" class="input100"
								placeholder="Email*" />
							<span class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="email" cssClass="error" />
							</div>
						</div>
						<div class="wrap-input100 m-b-16">
							<form:input path="password" type="password" class="input100"
								placeholder="Mot de passe*" />
							<label class="pl-3">(Le mot de passe doit contenir au
								moins une majuscule, une minuscule, un chiffre, un caractère
								spécial et comporter au moins 8 caractères)</label> <span
								class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="password" cssClass="error" />
							</div>
						</div>
						<div class="wrap-input100 m-b-16">
							<form:input path="confirmPassword" type="password"
								class="input100" placeholder="Confirmer le mot de passe*" />
							<label class="pl-3">Répéter le mot de passe</label> <span
								class="focus-input100"></span>
							<div class="pl-3">
								<form:errors path="confirmPassword" cssClass="error" />
							</div>
						</div>

						<div class="container-login100-form-btn m-t-17">
							<button type="submit" class="login100-form-btn">S'inscrire
							</button>
						</div>

					</form:form>
					<br>
					<div class="text-center">
						<p class="txt1" style="color: #999999">
							Déjà client ? <a href="/connexion" class="txt1"> Se connecter
								ici</a>
						</p>
					</div>
				</div>


			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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

	<script>
    imgInp.onchange = evt => {
        const [file] = imgInp.files
        if (file) {
            blah.src = URL.createObjectURL(file)
        }
    }
</script>
</body>
</html>