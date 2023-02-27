<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<title>Espace client</title>
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
     <jsp:include page="templates/header.jsp"/>

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0">
                    <a href="accueil">Accueil</a> <span class="mx-2 mb-0">/</span>
                    <strong class="text-black">Espace client</strong></div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <form:form class="row" action="/updateUser" method="post" modelAttribute="loginuser">
             
                <div class="col-md-12 mb-5 mb-md-0">
                    <h2 class="h3 mb-3 text-black">Information du compte client</h2>

                    <div class="p-3 p-lg-5 border">
                    <form:hidden path="IdClient" />
                        <div class="form-group row">
                            <div class="col-md-6">
                                <label for="nom" class="text-black">
                                    Nom<span class="text-danger">*</span>
                                </label>

                                <form:input type="text" class="form-control" id="nom" path="nom"/>
                            </div>

                            <div class="col-md-6">
                                <label for="prenom" class="text-black">
                                    Prénom<span class="text-danger">*</span>
                                </label>

                                <form:input type="text" class="form-control" id="prenom" path="prenom"/>
                            </div>
                        </div>
                            <div class="form-group row">
                            <div class="col-md-6">
                                <label for="dateNaissance" class="text-black">
                                    Date de naissance<span class="text-danger">*</span>
                                </label>

                                <form:input type="date" class="form-control" id="dateNaissance" path="dateNaissance"/>
                            </div>

                            <div class="col-md-6">
                                <label for="telephone" class="text-black">
                                    Téléphone<span class="text-danger">*</span>
                                </label>

                                <form:input type="text" class="form-control" id="telephone" path="telephone"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <label for="email" class="text-black">
                                    Email <span class="text-danger">*</span>
                                </label>

                                <form:input type="email" class="form-control" id="email" path="email"/>
                            </div>
                        </div>

                        <div class="form-group row mb-5">
                            <div class="col-md-6">
                                <label for="password" class="text-black">
                                    Mot de passe <span class="text-danger">*</span>
                                </label>

                                <form:input type="password" class="form-control" id="password" path="password"/>
                            </div>
                            <div class="col-md-6">
                                <label for="confirmPassword" class="text-black">
                                    Confirmer Mot de passe <span class="text-danger">*</span>
                                </label>

                                <form:input type="password" class="form-control" id="confirmPassword" path="confirmPassword"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="summary" class="text-black">
                                Adresses de livraison
                            </label>

                            <textarea name="summary" id="summary" cols="30" rows="5" class="form-control"
                                      placeholder="Liste des adresses de livraison"></textarea>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-lg py-3 btn-block">Mettre à jour</button>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>

    <jsp:include page="templates/footer.jsp"/>
</div>


<script>
    imgInp.onchange = evt => {
        const [file] = imgInp.files
        if (file) {
            blah.src = URL.createObjectURL(file)
        }
    }
</script>
<jsp:include page="templates/scripts.jsp"/>
</body>
</html>