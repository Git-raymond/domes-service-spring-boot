package fr.greta.domes.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import fr.greta.domes.entity.Client;
import fr.greta.domes.service.ClientService;

@Controller
public class LoginController {

	@Autowired
	ClientService clientService;

	@GetMapping("/connexion")
	public String goLogin(ModelMap modelMap) {
		modelMap.put("client", new Client());
		System.out.println("page de connexion");
		return "login";
	}

	@PostMapping("/loginUser")
	public String loginUser(@ModelAttribute("client") Client client, HttpSession session, BindingResult result,
			ModelMap modelMap) {
		session.setAttribute("idClient", client.getIdClient());
		if (clientService.checkLoginClient(client.getEmail(), client.getPassword())
				&& client.getStatut().equals("actif")) {
			System.out.println("Succès du login");
			System.out.println(client.getStatut());
			return "espaceclient";
		} else if (clientService.checkLoginClient(client.getEmail(), client.getPassword())
				&& client.getStatut().equals("suspendu")) {
			System.out.println("Statut désactivé");
			System.out.println(client.getStatut());
			// modelMap.put("erreur", "* Votre comp.te a été suspendu !");
			result.addError(new FieldError("client", "email", "* Votre compte a été suspendu !"));
			return "login";
		} else if (clientService.checkLoginClient(client.getEmail(), client.getPassword())
				&& client.getStatut().equals("attente")) {
			System.out.println("Statut désactivé");
			System.out.println(client.getStatut());
			// modelMap.put("erreur", "* Votre comp.te a été suspendu !");
			result.addError(new FieldError("client", "email",
					"* Veuillez valider le lien de validation envoyé à votre adresse email !"));
			return "login";
		} else {
			System.out.println("Echec du login");
			System.out.println(client.getStatut());
			// System.out.println(client.getPassword());
			// modelMap.put("erreur", "* Email et mot de passe invalides !");
			result.addError(new FieldError("client", "email", "* Email et mot de passe invalides !"));
			result.addError(new FieldError("client", "password", "* Email et mot de passe invalides !"));
			return "login";
		}
	}
}