package fr.greta.domes.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class RaceEspece {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idRaceEspece;
	@NotNull
	private String nomRaceEspece;
//	@ManyToOne
//	private Categorie categorie;

	public int getIdRaceEspece() {
		return idRaceEspece;
	}

	public void setIdRaceEspece(int idRaceEspece) {
		this.idRaceEspece = idRaceEspece;
	}

	public String getNomRaceEspece() {
		return nomRaceEspece;
	}

	public void setNomRaceEspece(String nomRaceEspece) {
		this.nomRaceEspece = nomRaceEspece;
	}

//	public Categorie getCategorie() {
//		return categorie;
//	}
//
//	public void setCategorie(Categorie categorie) {
//		this.categorie = categorie;
//	}

}
