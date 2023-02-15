package fr.greta.domes.entity;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Categorie {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idCategorie;
	@Column(length = 30, nullable = false)
	@NotNull
	@Size(min = 1, max = 30)
	private String nomCategorie;

	public static final String FIND_BY_nomcategory = "Category.findByNomCategory";
	public static final String FIND_ALL = "Category.findAll";

	public Categorie() {
	}

	public Categorie(String nomCategorie) {
		this.nomCategorie = nomCategorie;
	}

	public Long getIdCategorie() {
		return idCategorie;
	}

	public void setIdCategorie(Long idCategorie) {
		this.idCategorie = idCategorie;
	}

	public String getNomCategorie() {
		return nomCategorie;
	}

	public void setNomCategorie(String nomCategorie) {
		this.nomCategorie = nomCategorie;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o)
			return true;
		if (o == null || getClass() != o.getClass())
			return false;
		Categorie categorie = (Categorie) o;
		return nomCategorie.equals(categorie.nomCategorie);
	}

	@Override
	public int hashCode() {
		return Objects.hash(nomCategorie);
	}

	@Override
	public String toString() {
		return "Categorie [idCategorie=" + idCategorie + ", nomCategorie=" + nomCategorie + "]";
	}

}
