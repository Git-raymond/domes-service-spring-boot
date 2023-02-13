<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="css/style.css">
</head>


   <title>Accueil</title>
<jsp:include page="templates/head.jsp" />

<body>
	<div class="site-wrap">
		<jsp:include page="templates/header.jsp" />

		<div class="site-blocks-cover"
			style="background-image: url(images/logos/bulldog_banner.jpg);
			data-aos="fade">
			<div class="cont">
			 
			  <div class="box" id = "map">
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2622.066105334269!2d2.2438140159683235!3d48.914132779293006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e665b73af7d3d9%3A0xddf064acad6b6826!2sLyc%C3%A9e%20
Polyvalent%20Claude%20Garamont!5e0!3m2!1sfr!2sfr!4v1676294189316!5m2!1sfr!2sfr" 
width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
   
        <p><ul>
  <li>Adresse : 69 rue de l'industrie 92700 Colombes</li>
  <li>Numéro : (123) 456-7890</li>
  <li>Adresse e-mail : info@example.com</li>
  <li>Heures d'ouverture : Du lundi au vendredi, de 9h à 17h</li>
</ul>
         </p>
      </div>
				
				
						<div class = "box" id = "form_contact">
						<h1 class="mb-2">Nous contacter:</h1>

						<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Email address</label>
  <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
</div>
<div class = "mb-3">
	<label for="exampleFormControlInput1" class="form-label">Choix objet message</label>
	<select class="form-select" aria-label="Default select example">
  	<option selected>Sujet</option>
  	<option value="1">Service client</option>
  	<option value="2">Reclamation</option>
  	<option value="3">Informations produit</option>
  	<option value="4">Autre</option>
	</select>
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Veuillez saisir votre message</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
</div>

<div class="mb-3">
  
<input class="submit_contact" type="submit" value="Submit">
</div>
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