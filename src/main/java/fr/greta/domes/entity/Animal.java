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
public class Animal {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idAnimal;
	
	@Column(length = 30, nullable = false)
	@NotNull
	@Size(min = 1, max = 30)
	private String surnom;
	
	private String imageAnimal;
	
	private String descriptionAnimal;
	
	private double prixUnitaire;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "race_espece_id", nullable = false)
	@NotNull
	private RaceEspece raceEspece;

	public Long getIdAnimal() {
		return idAnimal;
	}

	public void setIdAnimal(Long idAnimal) {
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

	public RaceEspece getRaceEspece() {
		return raceEspece;
	}

	public void setRaceEspece(RaceEspece raceEspece) {
		this.raceEspece = raceEspece;
	}

	@Override
	public String toString() {
		return "Animal [idAnimal=" + idAnimal + ", surnom=" + surnom + ", imageAnimal=" + imageAnimal
				+ ", descriptionAnimal=" + descriptionAnimal + ", prixUnitaire=" + prixUnitaire + ", raceEspece="
				+ raceEspece + "]";
	}
	

}
