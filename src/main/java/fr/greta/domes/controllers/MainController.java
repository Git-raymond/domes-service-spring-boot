package fr.greta.domes.controllers;

import org.springframework.stereotype.Controller;
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
	
	@GetMapping("/succesModification")
	public String goUpdateSucces() {
		System.out.println("page succès modifications client");
		return "loginsucces";
	}
	
	@GetMapping("/succesSuppression")
	public String goDeleteSucces() {
		System.out.println("page succès suppression client");
		return "loginsucces";
	}
	
	@GetMapping("/succesConnexion")
	public String goLoginSucces() {
		System.out.println("page succès connexion");
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
