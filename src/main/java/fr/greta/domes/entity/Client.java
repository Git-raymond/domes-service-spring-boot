package fr.greta.domes.entity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Client {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long IdClient;

	// @Size(min = 6, message = "la taille doit etre inferieure a six")
	@NotEmpty(message = "Le champ nom ne peut pas être vide")
//	@Pattern(regexp = "^([a-zA-Z]{2,}\\s[a-zA-Z]{1,}'?-?[a-zA-Z]{2,}\\s?([a-zA-Z]{1,})?)", message = "Format de caractère non autorisé")
	private String nom;

	@NotEmpty(message = "Le champ prénom ne peut pas être vide")
	private String prenom;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull(message = "Le champ date de naissance ne peut pas être vide")
	private Date dateNaissance;

	@NotEmpty(message = "Le champ email ne peut pas être vide")
	private String email;

	@Pattern(regexp = "((?=.*[A-Z]).{6,10})", message = "Le mot de passe doit avoir une majuscule, une minuscule et doit comporter entre 6 et 10 caractères")
	private String password;

	@NotEmpty(message = "Le champ numéro de tél. ne peut pas être vide")
	private String telephone;

	@NotEmpty(message = "Le champ adresse ne peut pas être vide")
	private String adresse;

	@NotEmpty(message = "Le champ ville ne peut pas être vide")
	private String ville;

	@NotEmpty(message = "Le champ code postal ne peut pas être vide")
	private String codePostal;

	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "client_id")
	private List<AdresseLivraisonClient> adresseLivraisonClient = new ArrayList<AdresseLivraisonClient>(Arrays.asList(new AdresseLivraisonClient()));

	public Client() {

	}

	public Client(String nom, String prenom, Date dateNaissance, String email, String password, String telephone,
			String adresse, String ville, String codePostal) {
		this.nom = nom;
		this.prenom = prenom;
		this.dateNaissance = dateNaissance;
		this.email = email;
		this.password = password;
		this.telephone = telephone;
		this.adresse = adresse;
		this.ville = ville;
		this.codePostal = codePostal;
	}

	public Long getIdClient() {
		return IdClient;
	}

	public void setIdClient(Long idClient) {
		IdClient = idClient;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public List<AdresseLivraisonClient> getAdresseLivraisonClient() {
		return adresseLivraisonClient;
	}

	public void setAdresseLivraisonClient(List<AdresseLivraisonClient> adresseLivraisonClient) {
		this.adresseLivraisonClient = adresseLivraisonClient;
	}



}
