package fr.greta.domes.entity;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.Size;

@Embeddable
public class AdresseLivraison {

	@Column(length = 100, nullable = true)
	@Size(max = 100)
	private String adresseLivraison;

	@Column(length = 50, nullable = true)
	@Size(max = 50)
	private String villeLivraison;

	@Column(length = 10, nullable = true)
	@Size(min = 10, max = 10)
	private String codePostalLivraison;

	public AdresseLivraison() {
	}

	public AdresseLivraison(String adresseLivraison, String villeLivraison, String codePostalLivraison) {
		this.adresseLivraison = adresseLivraison;
		this.villeLivraison = villeLivraison;
		this.codePostalLivraison = codePostalLivraison;
	}

	public String getAdresseLivraison() {
		return adresseLivraison;
	}

	public void setAdresseLivraison(String adresseLivraison) {
		this.adresseLivraison = adresseLivraison;
	}

	public String getVilleLivraison() {
		return villeLivraison;
	}

	public void setVilleLivraison(String villeLivraison) {
		this.villeLivraison = villeLivraison;
	}

	public String getCodePostalLivraison() {
		return codePostalLivraison;
	}

	public void setCodePostalLivraison(String codePostalLivraison) {
		this.codePostalLivraison = codePostalLivraison;
	}




}
