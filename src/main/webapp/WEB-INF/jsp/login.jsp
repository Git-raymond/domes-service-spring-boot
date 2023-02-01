<!DOCTYPE html>
<html>
<head>
<title>Connexion</title>
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
						<a class="nav-link active" aria-current="page" href="#">Se connecter</a> 
						<a class="nav-link" href="/goToRegister">S'inscrire</a>
						<a class="nav-link" href="/GoSearch">Rechercher</a>
					</div>
				</div>
			</div>
		</nav>
	</header>
	<br>
	<section id="login" class="section">
		<div class="container tagline">
		<h2 class="headline">PAGE D'AUTHENTIFICATION</h2>
			<br><br>
			<form action="#" method="post">
				<label>Email</label> <input type="text" name="email" /><br />
				<label>Password</label> <input type="password" name="password" /><br />
				<br>
				<input type="submit" value="Connexion">
			</form>
			<a class="card-title" href="/goToRegister">Nouveau client?
				S'inscrire ici</a>
		</div>
	</section>

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