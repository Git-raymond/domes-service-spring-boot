package fr.greta.domes.beans;

import javax.persistence.*;
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
