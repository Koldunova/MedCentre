package by.bsuir.domain;

import java.sql.Date;

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
public class DoctorEducation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@ManyToOne
	private Doctor doctor;
	@ManyToOne
	private EducationInst inst;
	@ManyToOne
	private Speciality speciality;
	private String docNumber;
	private Date docDate;
}
