package fr.mumumu.client.spring.mvc.command;

import java.io.Serializable;

public class UserCommand implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5078594015508359075L;

	/**
	 * User's id
	 */
	private Long id;

	/**
	 * User's last name
	 */
	private String lastName;

	/**
	 * Users's first name
	 */
	private String firstName;

	/**
	 * USer's password
	 */
	private String password;

	/**
	 * Users's login
	 */
	private String login;

	/**
	 * Users's email
	 */
	private String email;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
