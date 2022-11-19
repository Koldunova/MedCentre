package by.bsuir.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userID;

	@Column( nullable = false, unique = true)
	private String emailAddress;

	private String password;
	
	@OneToOne
	private Person person;

	@Column(name = "role", nullable = false)
	@Enumerated(EnumType.STRING)
	private Role role;
}
