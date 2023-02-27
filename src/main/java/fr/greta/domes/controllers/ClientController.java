package fr.greta.domes.controllers;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import fr.greta.domes.entity.Client;
import fr.greta.domes.repository.ClientRepository;
import fr.greta.domes.service.ClientService;

//@CrossOrigin(origins = "http://localhost:8081")
//@RestController
@RequestMapping("/api")
public class ClientController {
	@Autowired
	private ClientService clientService;
	@Autowired
	private ClientRepository clientRepository;

//	  @PutMapping("/updateUser/{id}")
//	  public ResponseEntity<Client> updateClient(@PathVariable("id") long id, @RequestBody Client client) {
//	    Optional<Client> clientData = clientRepository.findById(id);
//
//	    if (clientData.isPresent()) {
//	      Client _client = clientData.get();
//	      _client.setNom(client.getNom());
//	      _client.setPrenom(client.getPrenom());
//	      _client.setDateNaissance(client.getDateNaissance());
//	      _client.setTelephone(client.getTelephone());
//	      _client.setEmail(client.getEmail());
//	      _client.setPassword(client.getPassword());
//	      return new ResponseEntity<>(clientRepository.save(_client), HttpStatus.OK);
//	    } else {
//	      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
//	    }
//	  }

//	@DeleteMapping("/deleteUser/{id}")
//	public ResponseEntity<HttpStatus> deleteTutorial(@PathVariable("id") long id) {
//		try {
//			clientRepository.deleteById(id);
//			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//		} catch (Exception e) {
//			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//		}
//	}

	@GetMapping("/espaceClient/{id}")
	public String espaceClient(@PathVariable Long id, Model model) {
		Client client = clientService.findClientById(id);
		model.addAttribute("client", client);
		System.out.println("page espace client");
		return "espaceclient";
	}

	@PostMapping("/updateUser/{id}")
	public String updateUser(@PathVariable Long id, @Valid @ModelAttribute("client") Client client,
			BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("message", "Echec des modifications !");
			System.out.println("client non modifié dans la bdd");
		}
		if (!client.getPassword().equals(client.getConfirmPassword())) {
			System.out.println("Les mots de passe ne sont pas identiques !");
			result.addError(
					new FieldError("client", "confirmPassword", "* Les mots de passe ne sont pas identiques !"));
			return "espaceclient";
		} else if (clientService.checkEmailExists(client.getEmail())) {
			System.out.println("Email déjà existant !");
			result.addError(new FieldError("client", "email", "* Email déjà existant !"));
			return "espaceclient";
		} else {
			this.clientService.findClientById(id);
			this.clientService.addClient(client);
			model.addAttribute("message", "Les modifications");
			System.out.println("Client enregistré dans la bdd avec succès !");
			return "updatesucces";
		}
	}

	@PostMapping("/delete/{id}")
	public String deleteBook(@PathVariable Long id, Model model) {
		clientService.findClientById(id);
		clientService.deleteClientById(id);
		model.addAttribute("client", clientService.findAllClients());
		return "deletesucces";
	}

}
