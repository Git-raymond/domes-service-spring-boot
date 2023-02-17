package fr.greta.domes.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import fr.greta.domes.entity.Categorie;


public interface CategorieRepository extends JpaRepository<Categorie, Long> {
	 List<Categorie> findByNomCategorie(String nomCategorie);
}
