package fr.greta.domes.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Commande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(updatable = false, nullable = false)
	private Long idCommande;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(updatable = false)
	private Date dateCreationCommande;

	@PrePersist
	private void onCreate() {
		dateCreationCommande = new Date();
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "client_id", nullable = false)
	private Client client;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "statut_commande_id", nullable = false)
	@NotNull
	protected StatutCommande statutCommande;

	public Commande() {
	}

	public Commande(Date dateCreationCommande, Client client, Set<LigneCommande> ligneCommande,
			AdresseLivraison adresseLivraison) {
		this.dateCreationCommande = dateCreationCommande;
		this.client = client;
	}

	public Long getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(Long idCommande) {
		this.idCommande = idCommande;
	}

	public Date getDateCreationCommande() {
		return dateCreationCommande;
	}

	public void setDateCreationCommande(Date dateCreationCommande) {
		this.dateCreationCommande = dateCreationCommande;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public StatutCommande getStatutCommande() {
		return statutCommande;
	}

	public void setStatutCommande(StatutCommande statutCommande) {
		this.statutCommande = statutCommande;
	}

	@Override
	public String toString() {
		return "Commande [idCommande=" + idCommande + ", dateCreationCommande=" + dateCreationCommande + ", client="
				+ client + ", statutCommande=" + statutCommande + "]";
	}


}
