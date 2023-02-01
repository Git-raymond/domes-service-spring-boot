package fr.greta.domes.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fr.greta.domes.beans.RaceEspece;

@Repository
public interface RaceEspeceRepository extends CrudRepository<RaceEspece, String> {

}
