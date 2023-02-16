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
			<%
		request.setAttribute("home_active", "active");
		%>
		<jsp:include page="templates/header.jsp" />

		<div class="site-blocks-cover"
			style="background-image: url(images/logos/bulldog_banner.jpg);"
			data-aos="fade">
			<div class="container">
				<div
					class="row align-items-start align-items-md-center justify-content-end">
					<div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
						<h1 class="mb-2">Trouvez votre animal de compagnie idéal</h1>

						<div class="intro-text text-center text-md-left">
							<p class="mb-4">Notre équipe de professionnels passionnés veille à ce que
							tous nos animaux soient en bonne santé et heureux avant d'être
							mis en vente. Nous nous efforçons également de fournir des
							informations détaillées sur chaque espèce, afin que vous puissiez
							prendre une décision éclairée quant à l'animal qui conviendra le
							mieux à votre mode de vie et à votre foyer.</p>

							<p>
								<a href="shop" class="btn btn-sm btn-primary">Animalerie</a>
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

		<jsp:include page="templates/collections-section.jsp" />

		<jsp:include page="templates/featured-products.jsp" />

		<div class="site-section block-8">
			<div class="container">
				<div class="row justify-content-center  mb-5">
					<div class="col-md-7 site-section-heading text-center pt-4">
						<h2>Big Sale!</h2>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col-md-12 col-lg-7 mb-5">
						<a href="#"><img
							src="images/animaux/chats/cat-2536662_640.jpg"
							alt="Image placeholder" class="img-fluid rounded"></a>
					</div>
					<div class="col-md-12 col-lg-5 text-center pl-md-5">
						<h2>
							<a href="#">-50% sur tous les animaux</a>
						</h2>
						<p class="post-meta mb-4">
							By <a href="#">Carl Smith</a> <span class="block-8-sep">&bullet;</span>
							September 3, 2018
						</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Quisquam iste dolor accusantium facere corporis ipsum animi
							deleniti fugiat. Ex, veniam?</p>
						<p>
							<a href="shop" class="btn btn-primary btn-sm">Shop Now</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="templates/footer.jsp" />
	</div>

	<jsp:include page="templates/scripts.jsp" />
</body>
</html>
