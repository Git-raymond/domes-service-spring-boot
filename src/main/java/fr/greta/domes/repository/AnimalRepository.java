package fr.greta.domes.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import fr.greta.domes.beans.Animal;

public interface AnimalRepository extends CrudRepository<Animal, Integer> {
	@Query("Select a from Animal a where a.surnom like %:surnom%")
	public List<Animal> searchAnimals(@Param("surnom") String surnom);
}