package fr.greta.domes.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Commande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(updatable = false, nullable = false)
	private Long idCommande;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Column(nullable = false)
	private Date dateCreationCommande;
	
	@PrePersist
	private void onCreate() {
		dateCreationCommande = new Date();
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

}
