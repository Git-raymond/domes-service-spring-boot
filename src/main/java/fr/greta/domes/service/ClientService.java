package fr.greta.domes.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import fr.greta.domes.entity.Client;
import fr.greta.domes.repository.ClientRepository;

@Service
public class ClientService {

	@Autowired
	private ClientRepository clientRepository;

	private PasswordEncoder passwordEncoder;

	private Client client;

	public ClientService(ClientRepository repository) {
		this.clientRepository = repository;
		this.passwordEncoder = new BCryptPasswordEncoder();
	}

	public Client findClientByPassword(String password) {
		return clientRepository.findByPassword(password);
	}

	public Client findClientByEmail(String email) {
		return clientRepository.findByEmail(email);
	}

	public boolean checkLoginClient(String email, String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		Client temp = clientRepository.findByEmail(email);
		if (temp != null) {
			if (passwordEncoder.matches(password, temp.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
		return false;
	}

	public boolean checkEmailExists(String email) {
		return findClientByEmail(email) != null;
	}

	public List<Client> findAllClients() {
		List<Client> Clients = new ArrayList<>();
		Iterable<Client> liste = clientRepository.findAll();
		liste.forEach(x -> Clients.add(x));
		return Clients;
	}

	public Client findClientById(Long id) {
		return clientRepository.findById(id).orElse(null);
	}

	public Client findClientByNom(String nom) {
		return clientRepository.findByNom(nom);
	}

	public void addClient(Client client) {
		String encodedPassword = this.passwordEncoder.encode(client.getPassword());
		client.setPassword(encodedPassword);
		clientRepository.save(client);
	}

	public void deleteClientById(Long id) {
		clientRepository.deleteById(id);
	}

	public void updateClient(Client client) {
		Optional<Client> oldClient = clientRepository.findById(client.getIdClient());
		if (null != oldClient) {
			clientRepository.save(client);
		}

	}

}
