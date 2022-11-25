package by.bsuir.domain;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table
public class Visit {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@ManyToOne
	private MedDocument medDocument;
	private Date visitDate;
	@ManyToOne
	private Doctor doctor;
	private Date nextVisitDate;
	private String complaints;
	private String purpose;
	private Time timeVisit;
	
	public Time getTimeVisit() {
		return timeVisit;
	}
	@SuppressWarnings("deprecation")
	public void setTimeVisit(String timeVisit) {
		String[] t = timeVisit.split(":");
		int h = Integer.parseInt(t[0])+3;
		int m = Integer.parseInt(t[1]);
		this.timeVisit = new Time(h, m, 0);
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public MedDocument getMedDocument() {
		return medDocument;
	}
	public void setMedDocument(MedDocument medDocument) {
		this.medDocument = medDocument;
	}
	public Date getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}
	public Doctor getDoctor() {
		return doctor;
	}
	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	public Date getNextVisitDate() {
		return nextVisitDate;
	}
	public void setNextVisitDate(Date nextVisitDate) {
		this.nextVisitDate = nextVisitDate;
	}
	public String getComplaints() {
		return complaints;
	}
	public void setComplaints(String complaints) {
		this.complaints = complaints;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public void setTimeVisit(Time timeVisit) {
		this.timeVisit = timeVisit;
	}
	
}
