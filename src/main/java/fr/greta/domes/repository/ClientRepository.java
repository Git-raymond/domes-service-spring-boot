package fr.greta.domes.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.greta.domes.entity.Client;

public interface ClientRepository extends JpaRepository<Client, Long> {
	List<Client> findByNom(String nom);
	List<Client> findByEmail(String email);
}
