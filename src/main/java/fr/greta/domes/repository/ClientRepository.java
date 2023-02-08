package fr.greta.domes.repository;

import org.springframework.data.repository.CrudRepository;

import fr.greta.domes.beans.Client;

public interface ClientRepository extends CrudRepository<Client, Integer> {

}
