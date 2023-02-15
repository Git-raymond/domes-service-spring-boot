package fr.greta.domes.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import fr.greta.domes.entity.Categorie;


public interface CategorieRepository extends CrudRepository<Categorie, Long> {
	 List<Categorie> findByNomCategorie(String nomCategorie);
}
