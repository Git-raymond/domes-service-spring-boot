package fr.greta.domes.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fr.greta.domes.entity.Client;
import fr.greta.domes.entity.Client.Statut;
import fr.greta.domes.service.ClientService;

@Controller
public class LoginController {

	@Autowired
	ClientService clientService;
	
	@GetMapping("/connexion")
	public String goLogin(Model model) {
		model.addAttribute("loginuser", new Client());
		System.out.println("page de connexion");
		return "login";
	}

	@PostMapping("/loginUser")
	public String loginUser(@Valid @ModelAttribute("loginuser") Client client, BindingResult result, Model model) {
		if ((clientService.checkLoginClient(client.getEmail(), client.getPassword()) != null)
				&& (client.getStatut().equals(Statut.ACTIVE))) {
			System.out.println("Succès du login");
			return "espaceclient";
		} else if ((clientService.checkLoginClient(client.getEmail(), client.getPassword()) != null)
				&& (client.getStatut().equals(Statut.DESACTIVE))) {
			System.out.println("Statut désactivé");
			result.addError(new FieldError("client", "email", "* Votre compte a été suspendu !"));
			return "login";
		} else {
			System.out.println("Echec du login");
			result.addError(new FieldError("client", "email", "* Email et mot de passe invalides !"));
			result.addError(new FieldError("client", "password", "* Email et mot de passe invalides !"));
			return "login";
		}

	}
}