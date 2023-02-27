package fr.greta.domes.controllers;

import java.security.Principal;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MainController {

	@GetMapping("/accueil")
	public String goHome() {
		System.out.println("page d'accueil");
		return "index";
	}

	@GetMapping("/aPropos")
	public String goAboutUs() {
		System.out.println("page d'accueil");
		return "aboutus";
	}

	@GetMapping("/contact")
	public String goContact() {
		System.out.println("page contact");
		return "contact";
	}

	@GetMapping("/animalerie")
	public String shop() {
		System.out.println("page animalerie");
		return "shop";
	}
	
	@GetMapping("/succes")
	public String goLoginSucces() {
		System.out.println("page succès enregistrement");
		return "loginsucces";
	}

	@GetMapping("/recherche")
	public String goSearch() {
		System.out.println("page de recherche");
		return "search";
	}
	
	@GetMapping("/espaceClient/{id}")
	public String espaceClient(@PathVariable Long id) {
		System.out.println("page espace client");
		return "espaceclient";
	}

}
