package by.bsuir.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table
public class EducationInst {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String edName;
	@ManyToOne
	private City city;
	private String address;
	@ManyToOne
	private TypeEducationInst type;
}
