package fr.greta.domes.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.greta.domes.beans.Client;

@Repository
public interface ClientRepository extends CrudRepository<Client, Integer> {

}
