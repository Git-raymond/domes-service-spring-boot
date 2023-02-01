<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Inscription</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/style.css" />
</head>
<body>
	<header id="home" class="header">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<a class="navbar-brand" href="/home">DOMES SERVICE</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link" href="/home">Accueil</a> 
						<a class="nav-link" href="/GoLogin">Se connecter</a>
						<a class="nav-link active" aria-current="page" href="#">S'inscrire</a>
						<a class="nav-link" href="/GoSearch">Rechercher</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<br>
	<section id="registration" class="section">
		<div class="container tagline">
		<h2 class="headline">PAGE D'INSCRIPTION</h2>
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
				<form:input path="password" type="password" />  (Le mot de passe doit avoir une majuscule, une minuscule et doit comporter entre 6 et 10 caractères)
				<form:errors path="password" cssClass="error" />
				<br />
				<input type="submit" value="S'inscrire" id="submit">
			</form:form>
		</div>
	</section>
	<footer class="footer">
		<div class="container">
			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding"></div>
				</div>
			</nav>
		</div>
	</footer>
	<script type="text/javascript" src="/css/bootstrap.min.js"></script>
</body>
</html>