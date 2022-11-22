package by.bsuir.domain;

import java.sql.Date;
import java.sql.Time;

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
public class BookingVisit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String fio;
	private String telephone;
	private String email;
	@ManyToOne
	private Subdivision subdivision;
	private Date dateVisit;
	private Time timeVisit;
	
	public String getFio() {
		return fio;
	}
	public void setFio(String fio) {
		this.fio = fio;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Subdivision getSubdivision() {
		return subdivision;
	}
	public void setSubdivision(Subdivision subdivision) {
		this.subdivision = subdivision;
	}
	public Date getDateVisit() {
		return dateVisit;
	}
	public void setDateVisit(Date dateVisit) {
		this.dateVisit = dateVisit;
		System.out.println(dateVisit);
		System.out.println(this.dateVisit);
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
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
	

}
