package fr.greta.domes.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fr.greta.domes.entity.Categorie;
import fr.greta.domes.service.CategorieService;

@Controller
public class CategorieController {

	private final CategorieService CategorieService;

	public CategorieController(CategorieService categorieService) {
		this.CategorieService = categorieService;
	}

	@GetMapping("/Categories")
	public String getCategorys(Model model) {

		List<Categorie> categories = CategorieService.findAllCategories();
		System.out.println(categories.toString());
		model.addAttribute("categories", categories);
		return "CategorieView";
	}

}
