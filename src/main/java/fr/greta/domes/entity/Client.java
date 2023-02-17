package fr.greta.domes.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "client")
public class Client {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long IdClient;

	// @Size(min = 6, message = "la taille doit etre inferieure a six")
	@NotEmpty(message = "Le champ nom ne peut pas être vide.")
	@Pattern(regexp = "^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$", message = "Format de caractère non autorisé")
	private String nom;

	@NotEmpty(message = "Le champ prénom ne peut pas être vide.")
	@Pattern(regexp = "^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$", message = "Format de caractère non autorisé")
	private String prenom;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull(message = "Le champ date de naissance ne peut pas être vide.")
	private Date dateNaissance;

	@Column(unique = true)
	@NotEmpty(message = "Le champ email ne peut pas être vide.")
	private String email;

	@Column(nullable = false)
	@Pattern(regexp = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$", message = "Le mot de passe doit contenir au moins une majuscule, une minuscule, un chiffre, un caractère spécial et comporter au moins 8 caractères")
	private String password;

	@NotEmpty(message = "Le champ numéro de tél. ne peut pas être vide")
	private String telephone;

	public enum Statut {
		ACTIVE, DESACTIVE
	}

	@Enumerated(EnumType.STRING)
	private Statut statut = Statut.ACTIVE;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(nullable = false)
	private Date dateCreation;

	@PrePersist
	private void onCreate() {
		dateCreation = new Date();
	}

	@Embedded
	private AdresseLivraison adresseLivraison;
	
	@Transient
	@Pattern(regexp = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$", message = "Le mot de passe doit contenir au moins une majuscule, une minuscule, un chiffre, un caractère spécial et comporter au moins 8 caractères")
	private String confirmPassword;

	public Client() {

	}

	public Client(String nom, String prenom, Date dateNaissance, String email, String password, String telephone,
			AdresseLivraison adresseLivraison, Date dateCreation) {
		this.nom = nom;
		this.prenom = prenom;
		this.dateNaissance = dateNaissance;
		this.email = email;
		this.password = password;
		this.telephone = telephone;
		this.adresseLivraison = adresseLivraison;
		this.dateCreation = dateCreation;
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

	public Statut getStatut() {
		return statut;
	}

	public void setStatut(Statut statut) {
		this.statut = statut;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	public AdresseLivraison getAdresseLivraison() {
		return adresseLivraison;
	}

	public void setAdresseLivraison(AdresseLivraison adresseLivraison) {
		this.adresseLivraison = adresseLivraison;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public String toString() {
		return "Client [IdClient=" + IdClient + ", nom=" + nom + ", prenom=" + prenom + ", dateNaissance="
				+ dateNaissance + ", email=" + email + ", password=" + password + ", telephone=" + telephone
				+ ", statut=" + statut + ", dateCreation=" + dateCreation + ", adresseLivraison=" + adresseLivraison
				+ "]";
	}

}
