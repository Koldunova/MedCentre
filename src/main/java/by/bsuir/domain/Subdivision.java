package by.bsuir.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table
public class Subdivision {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String subName;
	private boolean actual;
	private String description;
	private String logo;
	private boolean showOnHome;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public boolean isActual() {
		return actual;
	}
	public void setActual(boolean actual) {
		this.actual = actual;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public boolean isShowOnHome() {
		return showOnHome;
	}
	public void setShowOnHome(boolean showOnHome) {
		this.showOnHome = showOnHome;
	}
	@Override
	public String toString() {
		return subName;
	}
	
	
	
	
}
