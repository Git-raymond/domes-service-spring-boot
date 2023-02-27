package fr.greta.domes.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.greta.domes.entity.Client;

@Repository
public class ClientDao {

	private Client client;

	@PersistenceContext
	EntityManager entityManager;

	public Client loginClient(String email, String password) {
		try {
			return (Client) entityManager
					.createQuery("SELECT c FROM Client c WHERE c.email=:email and c.password=:password")
					.setParameter("email", email).setParameter("password", password).getSingleResult();
		} catch (NoResultException e) {
			System.out.println("Echec du login");
		}
		return client;
	}
}
