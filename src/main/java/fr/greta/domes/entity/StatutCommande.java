package fr.greta.domes.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class StatutCommande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idStatutCommande;
	@Column(length = 30, nullable = false)
	@NotNull
	@Size(min = 1, max = 30)
	private String statutCommande;

	public StatutCommande() {
	}

	public StatutCommande(String statutCommande) {
		this.statutCommande = statutCommande;
	}

	public Long getIdStatutCommande() {
		return idStatutCommande;
	}

	public void setIdStatutCommande(Long idStatutCommande) {
		this.idStatutCommande = idStatutCommande;
	}

	public String getStatutCommande() {
		return statutCommande;
	}

	public void setStatutCommande(String statutCommande) {
		this.statutCommande = statutCommande;
	}

	@Override
	public String toString() {
		return "StatutCommande [idStatutCommande=" + idStatutCommande + ", statutCommande=" + statutCommande + "]";
	}
	

}
