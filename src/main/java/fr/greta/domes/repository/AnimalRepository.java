package fr.greta.domes.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.greta.domes.entity.Animal;

public interface AnimalRepository extends JpaRepository<Animal, Long> {
	@Query("Select a from Animal a where a.surnom like %:surnom%")
	public List<Animal> searchAnimals(@Param("surnom") String surnom);
}