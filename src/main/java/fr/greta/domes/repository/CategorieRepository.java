package fr.greta.domes.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.greta.domes.beans.Categorie;


public interface CategorieRepository extends CrudRepository<Categorie, String> {

}
