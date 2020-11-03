package com.design4green.greenitim.model;

import lombok.Data;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Data
@ToString
@Table(name="user", schema = "public")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_id")
	private long userid;

	@Column(name="email_id")
	private String emailId;
	
	private String password;
		
	@Column(name="first_name")
	private String firstName;

	@Column(name="last_name")
	private String lastName;

	@Column(name="is_enabled")
	private boolean isEnabled;

}
