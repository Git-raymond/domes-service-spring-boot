package fr.greta.domes.beans;

import javax.persistence.*;

@Entity
public class Animal {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idAnimal;
	private String surnom;
	private String imageAnimal;
	private String descriptionAnimal;
	private double prixUnitaire;
//	@ManyToOne
//	private RaceEspece raceEspece;

	public int getIdAnimal() {
		return idAnimal;
	}

	public void setIdAnimal(int idAnimal) {
		this.idAnimal = idAnimal;
	}

	public String getSurnom() {
		return surnom;
	}

	public void setSurnom(String surnom) {
		this.surnom = surnom;
	}

	public String getImageAnimal() {
		return imageAnimal;
	}

	public void setImageAnimal(String imageAnimal) {
		this.imageAnimal = imageAnimal;
	}

	public String getDescriptionAnimal() {
		return descriptionAnimal;
	}

	public void setDescriptionAnimal(String descriptionAnimal) {
		this.descriptionAnimal = descriptionAnimal;
	}

	public double getPrixUnitaire() {
		return prixUnitaire;
	}

	public void setPrixUnitaire(double prixUnitaire) {
		this.prixUnitaire = prixUnitaire;
	}

//	public RaceEspece getRaceEspece() {
//		return raceEspece;
//	}
//
//	public void setRaceEspece(RaceEspece raceEspece) {
//		this.raceEspece = raceEspece;
//	}

}
