package fr.greta.domes.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import fr.greta.domes.beans.Client;
import fr.greta.domes.repository.ClientRepository;

@Controller
public class RegisterController {

	@Autowired
	private ClientRepository clientRepository;

	@PostMapping("/registerUser")
	public String registerUser(@Valid @ModelAttribute("newuser") Client client, BindingResult result, Model model) {
		System.out.println("on enregistre le client");
		if (result.hasErrors()) {
			System.out.println("client non enregistré dans la bdd");
			return "register";
		}
		clientRepository.save(client);
		model.addAttribute("message", "Le client est sauvegardé");
		System.out.println("client enregistré dans la bdd");
		return "login";
	}
}
