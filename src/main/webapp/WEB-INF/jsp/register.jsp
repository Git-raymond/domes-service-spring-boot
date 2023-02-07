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
body {
	background-image: url("images/logos/background_animal.png");
	background-size: cover;
}

.error {
	color: #ff0000;
	font-weight: bold;
}
</style>
<body>
	<jsp:include page="templates/header.jsp" />

	<section id="registration" class="section text-center">
		<div class="container tagline">
			<h2 class="headline">PAGE D'INSCRIPTION EN TRAVAUX</h2>
			<em>(*Champs obligatoires)</em><br /> <br>
			<form:form method="post" action="/registerUser"
				modelAttribute="newuser">
				<label>Nom*</label>
				<form:input path="nom" type="text" />
				<form:errors path="nom" cssClass="error" />
				<br />
				<label>Prénom*</label>
				<form:input path="prenom" type="text" />
				<form:errors path="prenom" cssClass="error" />
				<br />
				<label>Date de naissance*</label>
				<form:input path="dateNaissance" type="date" />
				<form:errors path="dateNaissance" cssClass="error" />
				<br />
				<label>Téléphone*</label>
				<form:input path="telephone" type="text" />
				<form:errors path="telephone" cssClass="error" />
				<br />
				<label>Adresse*</label>
				<form:input path="adresse" type="text" />
				<form:errors path="adresse" cssClass="error" />
				<br />
				<label>Ville*</label>
				<form:input path="ville" type="text" />
				<form:errors path="ville" cssClass="error" />
				<br />
				<label>Code postal*</label>
				<form:input path="codePostal" type="text" />
				<form:errors path="codePostal" cssClass="error" />
				<br />
				<label>Adresse de livraison</label>
				<form:input path="adresseLivraison" type="text" />
				<br />
				<label>Ville de livraison</label>
				<form:input path="villeLivraison" type="text" />
				<br />
				<label>Code postal de livraison</label>
				<form:input path="codePostalLivraison" type="text" />
				<br />
				<label>Email*</label>
				<form:input path="email" type="text" />
				<form:errors path="email" cssClass="error" />
				<br />
				<label>Password*</label>
				<form:input path="password" type="password" />
				<form:errors path="password" cssClass="error" />
				<br />
				<label>(Le mot de passe doit avoir une majuscule, une
					minuscule et doit comporter entre 6 et 10 caractères)</label>
				<br />
				<input type="submit" value="S'inscrire" id="submit">
			</form:form>
		</div>
		<div class="text-center">
			<p class="txt1" style="color: #999999">
				Déjà client? <a href="/GoLogin" class="txt1"> Se connecter ici</a>
			</p>
		</div>
	</section>

	<!-- <div class="limiter"> -->
	<!-- 		<div class="container-login100"> -->
	<!-- 			<div class="shadow-lg p-2 p-lg-5 rounded" data-aos="fade-up"> -->
	<!-- 				<div class="wrap-login100 p-t-50 p-b-90"> -->
	<%-- 					<form action="/registerUser" method="post" modelAttribute="newuser" --%>
	<%-- 						class="login100-form validate-form flex-sb flex-w justify-content-center" --%>
	<%-- 						enctype="multipart/form-data"> --%>
	<!-- 						<span class="login100-form-title m-b-20"> Inscription </span> -->

	<%-- 						${alert} --%>

	<!-- 						<div class="m-b-16"> -->
	<!-- 							<label class="m-0" for="imgInp"> -->
	<!-- 								<figure class="d-flex justify-content-center m-0"> -->
	<!-- 									<img id="blah" src="images/blank_avatar.png" alt="your image" -->
	<!-- 										style="border-radius: 50%; height: 8em; width: 8em"> -->
	<!-- 								</figure> -->
	<!-- 								<figcaption>Clickez ici pour changer votre image de -->
	<!-- 									profil</figcaption> -->
	<!-- 							</label> <input name="profile-image" type="file" id="imgInp" -->
	<!-- 								style="display: none;"> -->
	<!-- 						</div> -->

	<!--  					<div class="wrap-input100 validate-input m-b-16" data-validate="Le nom est requis"> -->
	<%--                         <form:input class="input100" type="text" path="nom" placeholder="Nom"/> --%>
	<%--                         <form:errors path="nom" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span>  -->
	<!--                     </div>          -->
	<!--                      <div class="wrap-input100 validate-input m-b-16" data-validate="Le prénom est requis"> -->
	<%--                         <form:input class="input100" type="text" path="prenom" placeholder="Prénom"/> --%>
	<%--                         <form:errors path="prenom" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="La date de naissance est requise"> -->
	<%--                         <form:input class="input100" type="text" path="dateNaissance" placeholder="Date de naissance"/> --%>
	<%--                         <form:errors path="dateNaissance" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="Le téléphone est requis"> -->
	<%--                         <form:input class="input100" type="text" path="telephone" placeholder="Téléphone"/> --%>
	<%--                         <form:errors path="telephone" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="L'adresse est requise"> -->
	<%--                         <form:input class="input100" type="text" path="adresse" placeholder="Adresse"/> --%>
	<%--                         <form:errors path="adresse" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="La ville requise"> -->
	<%--                         <form:input class="input100" type="text" path="ville" placeholder="Ville"/> --%>
	<%--                         <form:errors path="ville" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="Le code postal est requis"> -->
	<%--                         <form:input class="input100" type="text" path="codePostal" placeholder="Code postal"/> --%>
	<%--                         <form:errors path="codePostal" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="L'adresse de livraison est requise"> -->
	<%--                         <form:input class="input100" type="text" path="adresseLivraison" placeholder="Adresse de livraison"/> --%>
	<%-- <%--                         <form:errors path="adresseLivraison" cssClass="error" /> --%>
	--%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="La ville de livraison est requise"> -->
	<%--                         <form:input class="input100" type="text" path="villeLivraison" placeholder="Ville de livraison"/> --%>
	<%-- <%--                         <form:errors path="villeLivraison" cssClass="error" /> --%>
	--%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="Le code postal de livraison est requis"> -->
	<%--                         <form:input class="input100" type="text" path="codePostalLivraison" placeholder="Code postal de livraison"/> --%>
	<%-- <%--                         <form:errors path="codePostalLivraison" cssClass="error" /> --%>
	--%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->
	<!--                       <div class="wrap-input100 validate-input m-b-16" data-validate="L'adresse email est requise"> -->
	<%--                         <form:input class="input100" type="text" path="nom" placeholder="Nom"/> --%>
	<%--                         <form:errors path="nom" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->

	<!--                     <div class="wrap-input100 validate-input m-b-16" data-validate="Le mot de passe est requis"> -->
	<%--                         <form:input class="input100" type="password" path="password" placeholder="Password"/> --%>
	<%--                         <form:errors path="password" cssClass="error" /> --%>
	<!--                         <span class="focus-input100"></span> -->
	<!--                     </div> -->

	<!-- <!--                     <div class="wrap-input100 validate-input m-b-16" data-validate="Le mot de passe est requis"> -->
	-->
	<%-- <%--                         <form:input class="input100" type="password" path="repeat-password" --%>
	--%>
	<%-- <%--                                placeholder="Confirmer le mot de passe"/> --%>
	--%>
	<%-- <%--                                <form:errors path="repeat-password" cssClass="error" /> --%>
	--%>
	<!-- <!--                         <span class="focus-input100"></span> -->
	-->
	<!-- <!--                     </div> -->
	-->


	<!-- 						<div class="container-login100-form-btn m-t-17"> -->
	<!-- 							<button type="submit" class="login100-form-btn">S'inscrire -->
	<!-- 							</button> -->
	<!-- 						</div> -->
	<%-- 					</form> --%>
	<!-- 				</div> -->

	<!-- 				<div class="text-center"> -->
	<!-- 					<p class="txt1" style="color: #999999"> -->
	<!-- 						Déjà client? <a href="/GoLogin" class="txt1"> Se connecter ici</a> -->
	<!-- 					</p> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

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
