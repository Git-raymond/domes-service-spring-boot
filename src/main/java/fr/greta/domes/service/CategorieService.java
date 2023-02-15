package fr.greta.domes.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import fr.greta.domes.entity.Categorie;
import fr.greta.domes.repository.CategorieRepository;

@Service
public class CategorieService {
	private final CategorieRepository repository;

	public CategorieService(CategorieRepository repository) {
		this.repository = repository;
	}

	public List<Categorie> findAllCategories() {
		List<Categorie> Categories = new ArrayList<>();
		Iterable<Categorie> liste = repository.findAll();
		liste.forEach(x -> Categories.add(x));
		return Categories;
	}

	public Categorie findCategoryById(Long id) {
		return repository.findById(id).orElse(null);
	}

	public Collection<Categorie> findCategoryByNom(String nomCategorie) {
		return repository.findByNomCategorie(nomCategorie);
	}

	public void addCategorie(Categorie Categorie) {
		repository.save(Categorie);
	}

	public void deleteCategoryById(Long id) {
		repository.deleteById(id);
	}

	public void updateCategory(Categorie Categorie) {
		Optional<Categorie> oldCategorie = repository.findById(Categorie.getIdCategorie());
		if (null != oldCategorie) {
			repository.save(Categorie);
		}

	}
}
