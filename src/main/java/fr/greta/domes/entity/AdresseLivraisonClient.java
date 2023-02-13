package fr.greta.domes.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AdresseLivraisonClient {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(updatable = false, nullable = true)
	private Long idAdresseLivraison;

	@Column(length = 50, nullable = true)

	private String adresseLivraison;

	@Column(length = 50, nullable = true)

	private String villeLivraison;

	@Column(length = 10, nullable = true)

	private String codePostalLivraison;


	public AdresseLivraisonClient() {
	}

	public AdresseLivraisonClient(String adresseLivraison, String villeLivraison, String codePostalLivraison) {
		this.adresseLivraison = adresseLivraison;
		this.villeLivraison = villeLivraison;
		this.codePostalLivraison = codePostalLivraison;
	}

	public Long getIdAdresseLivraison() {
		return idAdresseLivraison;
	}

	public void setIdAdresseLivraison(Long idAdresseLivraison) {
		this.idAdresseLivraison = idAdresseLivraison;
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

	@Override
	public String toString() {
		return "AdresseLivraisonClient [idAdresseLivraison=" + idAdresseLivraison + ", adresseLivraison="
				+ adresseLivraison + ", villeLivraison=" + villeLivraison + ", codePostalLivraison="
				+ codePostalLivraison + "]";
	}

}
