<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>

<!DOCTYPE html>
<html lang="en">
<title>A Propos</title>
<jsp:include page="templates/head.jsp" />

<body>
	<div class="site-wrap">
		<%
		request.setAttribute("about_active", "active");
		%>
		<jsp:include page="templates/header.jsp" />



		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="home">Accueil</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">A Propos</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section border-bottom" data-aos="fade">
			<div class="container">
				<div class="row mb-5">
					<div class="col-md-6">
						<div class="block-16">
							<figure>
								<img src="images/dove-aboutus.jpg" alt="Image placeholder"
									class="img-fluid rounded">
								<!-- 								<a href="https://vimeo.com/channels/staffpicks/93951774" -->
								<!-- 									class="play-button popup-vimeo"> <span class="ion-md-play"></span> -->
								<!-- 								</a> -->
							</figure>
							<p>Nous livrons nos animaux en toute sécurité et en temps
								opportun, afin que vous puissiez commencer à profiter de votre
								nouvel ami le plus tôt possible.</p>
						</div>
					</div>

					<div class="col-md-1"></div>

					<div class="col-md-5">
						<div class="site-section-heading pt-3 mb-4">
							<h2 class="text-black">DOMES SERVICE, qui sommes-nous ?</h2>
						</div>
						<p>Notre équipe de professionnels passionnés veille à ce que
							tous nos animaux soient en bonne santé et heureux avant d'être
							mis en vente. Nous nous efforçons également de fournir des
							informations détaillées sur chaque espèce, afin que vous puissiez
							prendre une décision éclairée quant à l'animal qui conviendra le
							mieux à votre mode de vie et à votre foyer.</p>
						<p>N'hésitez pas à nous contacter si vous avez des questions
							ou si vous avez besoin de conseils pour faire le bon choix. Nous
							sommes là pour vous aider à trouver le compagnon idéal pour vous
							et votre foyer. Alors, parcourez notre sélection d'animaux en
							vente dès maintenant et trouvez celui qui vous convient le mieux !</p>
						<p>L'équipe DOMES SERVICE.</p>

					</div>
				</div>
			</div>
		</div>

		<div class="site-section border-bottom" data-aos="fade">
			<div class="container pl-0">
				<div class="row justify-content-center mb-5">
					<div class="col-md-7 site-section-heading text-center pt-4">
						<h2>L'équipe DOMES SERVICE</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-lg-4">
						<div class="text-center">
							<div class="">
								<div class="">
									<img src="images/person_1.jpg" alt="Image placeholder"
										class="mb-4">
									<h3 class="">Raymond SARAY</h3>
									<p class="">CEO/Co-Founder</p>
								</div>
								<div class="mb-4">
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
										Vitae aut minima nihil sit distinctio recusandae doloribus ut
										fugit officia voluptate soluta.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4">
						<div class="text-center">
							<div class="">
								<div class="">
									<img src="images/person_2.jpg" alt="Image placeholder"
										class="mb-4">
									<h3 class="">Jade TERNIER</h3>
									<p class="">Co-Founder</p>
								</div>
								<div class="mb-4">
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
										Vitae aut minima nihil sit distinctio recusandae doloribus ut
										fugit officia voluptate soluta.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4">
						<div class="text-center">
							<div class="">
								<div class="">
									<img src="images/person_3.jpg" alt="Image placeholder"
										class="mb-4">
									<h3 class="">???</h3>
									<p class="">Marketing</p>
								</div>
								<div class="mb-4">
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
										Vitae aut minima nihil sit distinctio recusandae doloribus ut
										fugit officia voluptate soluta.</p>
								</div>
							</div>
						</div>
					</div>
					<!-- 					<div class="col-md-6 col-lg-3"> -->
					<!-- 						<div class="block-38 text-center"> -->
					<!-- 							<div class="block-38-img"> -->
					<!-- 								<div class="block-38-header"> -->
					<!-- 									<img src="images/person_4.jpg" alt="Image placeholder" -->
					<!-- 										class="mb-4"> -->
					<!-- 									<h3 class="block-38-heading h4">Mike Coolbert</h3> -->
					<!-- 									<p class="block-38-subheading">Sales Manager</p> -->
					<!-- 								</div> -->
					<!-- 								<div class="block-38-body"> -->
					<!-- 									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. -->
					<!-- 										Vitae aut minima nihil sit distinctio recusandae doloribus ut -->
					<!-- 										fugit officia voluptate soluta.</p> -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->
				</div>
			</div>
		</div>

		<div class="site-section site-section-sm site-blocks-1 border-0"
			data-aos="fade">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4"
						data-aos="fade-up" data-aos-delay="">
						<div class="icon mr-4 align-self-start">
							<span class="icon-truck"></span>
						</div>
						<div class="text">
							<h2 class="text-uppercase">Frais de livraison</h2>
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
							<h2 class="text-uppercase">Frais de retour</h2>
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
							<h2 class="text-uppercase">Service Client</h2>
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
