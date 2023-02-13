<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>

<!DOCTYPE html>
<html lang="en">
   <title>Accueil</title>
<jsp:include page="templates/head.jsp" />

<body>
	<div class="site-wrap">
		<jsp:include page="templates/header.jsp" />

		<div class="site-blocks-cover"
			style="background-image: url(images/logos/bulldog_banner.jpg);
			data-aos="fade">
			<div class="container">
				<div
					class="row align-items-start align-items-md-center justify-content-end">
					<div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
						<h1 class="mb-2">DOMES SERVICE, qui sommes nous.</h1>

						<div class="intro-text text-center text-md-left">
							<p class="mb-4">
							Notre équipe de professionnels passionnés veille à ce que tous nos animaux soient en bonne santé et heureux avant d'être mis en vente. Nous nous efforçons
							 également de fournir des informations détaillées sur chaque espèce, afin que vous puissiez prendre une décision éclairée quant à l'animal qui conviendra
							  le mieux à votre 
							mode de vie et à votre foyer.

							Nous livrons nos animaux en toute sécurité et en temps 
							opportun, afin que vous puissiez commencer à profiter de votre nouvel ami le plus tôt possible.

							N'hésitez pas à nous contacter si vous avez des questions ou si vous avez besoin de conseils pour faire le bon choix. Nous sommes là pour vous aider à 
							trouver le compagnon idéal 
							pour vous et votre foyer. Alors, parcourez notre sélection d'animaux en vente dès maintenant et trouvez celui qui vous convient le mieux!</p>

							<p>
								L'équipe DOMES SERVICE.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section site-section-sm site-blocks-1">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4"
						data-aos="fade-up" data-aos-delay="">
						<div class="icon mr-4 align-self-start">
							<span class="icon-truck"></span>
						</div>

						<div class="text">
							<h2 class="text-uppercase">Free Shipping</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Phasellus at iaculis quam. Integer accumsan tincidunt fringilla.</p>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4"
						data-aos="fade-up" data-aos-delay="100">
						<div class="icon mr-4 align-self-start">
							<span class="icon-refresh2"></span>
						</div>
						<div class="text">
							<h2 class="text-uppercase">Free Returns</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Phasellus at iaculis quam. Integer accumsan tincidunt fringilla.</p>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4"
						data-aos="fade-up" data-aos-delay="200">
						<div class="icon mr-4 align-self-start">
							<span class="icon-help"></span>
						</div>
						<div class="text">
							<h2 class="text-uppercase">Customer Support</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Phasellus at iaculis quam. Integer accumsan tincidunt fringilla.</p>
						</div>
					</div>
				</div>
			</div>
		</div>


		<jsp:include page="templates/footer.jsp" />
	</div>

	<jsp:include page="templates/scripts.jsp" />
</body>
</html>
