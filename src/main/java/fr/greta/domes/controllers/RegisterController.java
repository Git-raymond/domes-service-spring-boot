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
import fr.greta.domes.service.ClientService;

@Controller
public class RegisterController {

	@Autowired
	ClientService clientService;
	
	@GetMapping("/inscription")
	public String goRegister(Model model) {
		model.addAttribute("newuser", new Client());
		System.out.println("page d'inscription");
		return "register";
	}

	@PostMapping("/registerUser")
	public String registerUser(@Valid @ModelAttribute("newuser") Client client, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println("client non enregistré dans la bdd");
			return "register";
		}
		if (!client.getPassword().equals(client.getConfirmPassword())) {
			System.out.println("Les mots de passe ne sont pas identiques !");
			result.addError(
					new FieldError("client", "confirmPassword", "* Les mots de passe ne sont pas identiques !"));
			return "register";
		} else if (clientService.checkEmailExists(client.getEmail())) {
			System.out.println("Email déjà existant !");
			result.addError(new FieldError("client", "email", "* Email déjà existant !"));
			return "register";
		} else {
			this.clientService.addClient(client);
			model.addAttribute("message", "Le client est sauvegardé");
			System.out.println("Client enregistré dans la bdd avec succès !");
			return "loginsucces";
		}
	}
}
