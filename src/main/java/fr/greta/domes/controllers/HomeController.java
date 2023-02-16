package fr.greta.domes.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import fr.greta.domes.entity.Client;

@Controller
public class HomeController {

	@GetMapping("/home")
	public String goHome() {
		System.out.println("page d'accueil");
		return "index";
	}
	
	@GetMapping("/AboutUs")
	public String goAboutUs() {
		System.out.println("page d'accueil");
		return "aboutus";
	}
	
	@GetMapping("/contact")
	public String goContact() {
		System.out.println("page contact");
		return "contact";
	}
	
	@GetMapping("/shop")
	public String shop() {
		System.out.println("page animalerie");
		return "shop";
	}
	
	@GetMapping("/GoSearch")
	public String goSearch() {
		System.out.println("page de recherche");
		return "search";
	}

	@GetMapping("/GoLogin")
	public String goLogin() {
		System.out.println("page de connexion");
		return "login";
	}

	@GetMapping("/goToRegister")
	public String goRegister() {
		System.out.println("page d'inscription");
		return "register";
	}

	@ModelAttribute("newuser")
	public Client getDefaultUser() {
		return new Client();
	}

}
