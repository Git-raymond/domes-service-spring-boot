package fr.greta.domes.spring.security.web.dto;

import fr.greta.domes.spring.security.constraint.FieldMatch;

import javax.validation.constraints.NotEmpty;

@FieldMatch(first = "password", second = "confirmPassword", message = "Les mots de passe doivent correspondre")
public class PasswordResetDto {

	@NotEmpty
	private String password;

	@NotEmpty
	private String confirmPassword;

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

}