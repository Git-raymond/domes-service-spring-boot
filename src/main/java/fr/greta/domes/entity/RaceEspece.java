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
public class RaceEspece {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(updatable = false, nullable = false)
	private Long idRaceEspece;

	@Column(length = 30, nullable = false)
	@NotNull
	@Size(min = 1, max = 30)
	private String nomRaceEspece;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "categorie_id", nullable = false)
	@NotNull
	private Categorie categorie;

	public static final String FIND_BY_CATEGORY_NOM = "RaceEspece.findByNomRaceEspece";
	public static final String FIND_ALL = "RaceEspece.findAll";

	public RaceEspece() {
	}

	public RaceEspece(String nomRaceEspece, String description, Categorie categorie) {
		this.nomRaceEspece = nomRaceEspece;
		this.categorie = categorie;
	}

	public Long getIdRaceEspece() {
		return idRaceEspece;
	}

	public void setIdRaceEspece(Long idRaceEspece) {
		this.idRaceEspece = idRaceEspece;
	}

	public String getNomRaceEspece() {
		return nomRaceEspece;
	}

	public void setNomRaceEspece(String nomRaceEspece) {
		this.nomRaceEspece = nomRaceEspece;
	}

	public Categorie getCategorie() {
		return categorie;
	}

	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}

	@Override
	public String toString() {
		return "RaceEspece [idRaceEspece=" + idRaceEspece + ", nomRaceEspece=" + nomRaceEspece + ", categorie="
				+ categorie + "]";
	}

}
