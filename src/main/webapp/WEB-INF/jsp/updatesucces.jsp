<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Modification réussie</title>
<jsp:include page="templates/head.jsp" />
<body>
	<jsp:include page="templates/header.jsp" />
	<div class="site-blocks-cover"
		style="background-image: url(images/logos/bulldog_banner.jpg);"
		data-aos="fade">
		<div class="container">
			<div
				class="row align-items-start align-items-md-center justify-content-end">
				<div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
					<h1 class="mb-2">DOMES SERVICE</h1>
					<br>
					<h1 class="mb-2 text-primary">Compte mis à jour avec succès !</h1>
					<br>
					<div class="intro-text text-center text-md-left">
						<a href="espaceclient" class="btn btn-sm btn-primary">Retour à votre espace client</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="templates/footer.jsp" />
	<jsp:include page="templates/scripts.jsp" />
</body>
</html>