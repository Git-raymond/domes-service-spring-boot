<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Recherche</title>
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
						<a class="nav-link" href="/home">Accueil</a> <a class="nav-link"
							href="/GoLogin">Se connecter</a> <a class="nav-link"
							href="/goToRegister">S'inscrire</a> <a class="nav-link active"
							aria-current="page" href="#">Rechercher</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<br>
	<section id="search" class="section">
		<header class="imageheader"></header>
		<div class="container-animal">
			<h2 class="headline">Recherche d'un animal</h2>
			<br>
			<br>
			
			<form action="/search" method="get">
				<label class="card-title">Trouver votre animal par son
					surnom (par exemple: Tecky)</label> <input path="search" name="search" value=""> <input
					type="submit" value="Search">
			</form>
			
		</div>
		<br>
	</section>
	<c:if test="${!empty(animals)}">
		<section id="animals" class="section">

			<c:forEach var="animal" items="${animals}">
				<div class="productContainer">

					<div class="productContainerItem px-5">
						<img width="200px" id="pic1" src="${animal.imageAnimal}"> 
						<input type="text" name="animal" value="${animal.surnom}"><br />
						<br>

					</div>
			</c:forEach>
			</div>
		</section>
	</c:if>


	<footer class="footer">
		<div class="container">

			<nav class="nav" role="navigation">
				<div class="container nav-elements">
					<div class="branding">
						</p>
					</div>
				</div>
			</nav>
		</div>
	</footer>
	<script type="text/javascript" src="/css/bootstrap.min.js"></script>
</body>
</html>