package fr.greta.domes.beans;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Client {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int IdClient;
	// @Size(min = 6, message = "la taille doit etre inferieure a six")
	@NotEmpty(message = "Le champ nom ne peut pas être vide")
	private String nom;
	@NotEmpty(message = "Le champ prénom ne peut pas être vide")
	private String prenom;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateNaissance;
	@NotEmpty(message = "Le champ email ne peut pas être vide")
	private String email;
	@Pattern(regexp = "((?=.*[A-Z]).{6,10})", message = "Le mot de passe doit avoir une majuscule, une minuscule et doit comporter entre 6 et 10 caractères")
	private String password;
	@NotEmpty(message = "Le champ numéro de tél. ne peut pas être vide")
	private String telephone;
	@NotEmpty(message = "Le champ adresse ne peut pas être vide")
	private String adresse;
	private String adresseLivraison;
	@NotEmpty(message = "Le champ ville ne peut pas être vide")
	private String ville;
	private String villeLivraison;
	@NotEmpty(message = "Le champ code postal ne peut pas être vide")
	private String codePostal;
	private String codePostalLivraison;

	public int getIdClient() {
		return IdClient;
	}

	public void setIdClient(int idClient) {
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

	public String getAdresseLivraison() {
		return adresseLivraison;
	}

	public void setAdresseLivraison(String adresseLivraison) {
		this.adresseLivraison = adresseLivraison;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getVilleLivraison() {
		return villeLivraison;
	}

	public void setVilleLivraison(String villeLivraison) {
		this.villeLivraison = villeLivraison;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getCodePostalLivraison() {
		return codePostalLivraison;
	}

	public void setCodePostalLivraison(String codePostalLivraison) {
		this.codePostalLivraison = codePostalLivraison;
	}

}
