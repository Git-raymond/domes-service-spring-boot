package fr.greta.domes.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
	public String loginUser(@ModelAttribute("client") Client client, HttpSession session, BindingResult result, ModelMap modelMap) {
		if (clientService.checkLoginClient(client.getEmail(), client.getPassword()) && client.isActive() == true) {
			System.out.println("Succès du login");
			System.out.println(client.isActive());
			return "espaceclient";
		} else if (clientService.checkLoginClient(client.getEmail(), client.getPassword())
				&& client.isActive() == false) {
			System.out.println("Statut désactivé");
			modelMap.put("erreur", "* Votre compte a été suspendu !");
			return "login";
		} else {
			System.out.println("Echec du login");
			System.out.println(client.isActive());
			System.out.println(client.getPassword());
			modelMap.put("erreur", "* Email et mot de passe invalides !");
			return "login";
		}

	}
}