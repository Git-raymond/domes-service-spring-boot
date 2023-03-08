package fr.greta.domes.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.greta.domes.entity.Client;

public interface ClientRepository extends JpaRepository<Client, Long> {

	public Client findByNom(String nom);

	public Client findByEmail(String email);

	public Client findByPassword(String password);

}
