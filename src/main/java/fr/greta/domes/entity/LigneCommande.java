package fr.greta.domes.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
//@IdClass(LigneCommandePk.class)
public class LigneCommande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(updatable = false, nullable = false)
	private Long idLigneCommande;

	@Column(length = 1, nullable = false)
	@Size(max = 1)
	private Integer quantite;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "commande_id", nullable = false)
	@NotNull
	protected Commande commande;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "animal_id", nullable = false)
	@NotNull
	protected Animal animal;

	public LigneCommande() {
	}

	public LigneCommande(Commande commande, Animal animal, Integer quantite) {
		this.commande = commande;
		this.animal = animal;
		this.quantite = quantite;
	}

	public Long getIdLigneCommande() {
		return idLigneCommande;
	}

	public void setIdLigneCommande(Long idLigneCommande) {
		this.idLigneCommande = idLigneCommande;
	}

	public Integer getQuantite() {
		return quantite;
	}

	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	@Override
	public String toString() {
		return "LigneCommande [idLigneCommande=" + idLigneCommande + ", quantite=" + quantite + ", commande=" + commande
				+ ", animal=" + animal + "]";
	}
	

}
