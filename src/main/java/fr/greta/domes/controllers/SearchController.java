package fr.greta.domes.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.greta.domes.entity.Animal;
import fr.greta.domes.repository.AnimalRepository;

@Controller
public class SearchController {

	@Autowired
	private AnimalRepository animalRepository;

	@GetMapping("/search")
	public String search(@RequestParam("search") String search, Model model) {
		System.out.println("Le controller search");
		System.out.println("Le paramètre est égal à : " + search);
		List<Animal> animals = new ArrayList<Animal>();
		animals = animalRepository.searchAnimals(search);
		model.addAttribute("animals", animals);
		return "search";
	}
}
