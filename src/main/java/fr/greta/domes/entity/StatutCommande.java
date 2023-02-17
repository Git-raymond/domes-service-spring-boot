package fr.greta.domes.entity;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StatutCommande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idStatutCommande;
	
	
	public enum Statut {
		EN_PREPARATION, EN_COURS_DE_LIVRAISON, ANIMAL_LIVRE
	}

	@Enumerated(EnumType.STRING)
	private Statut statut = Statut.EN_PREPARATION;

	public StatutCommande() {
	}

	public StatutCommande(Statut statut) {
		this.statut= statut;
	}

	public Long getIdStatutCommande() {
		return idStatutCommande;
	}

	public void setIdStatutCommande(Long idStatutCommande) {
		this.idStatutCommande = idStatutCommande;
	}

	public Statut getStatut() {
		return statut;
	}

	public void setStatut(Statut statut) {
		this.statut = statut;
	}

	@Override
	public String toString() {
		return "StatutCommande [idStatutCommande=" + idStatutCommande + ", statut=" + statut + "]";
	}



}
