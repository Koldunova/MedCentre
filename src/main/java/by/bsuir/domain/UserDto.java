package by.bsuir.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;


@Getter
@Setter
@NoArgsConstructor
public class UserDto {
    String fio;
    String address;
    String date_birth;
    String sex;
    String number_pasport;
    String indef_number;
    String email;
    String password;
	public String getFio() {
		return fio;
	}
	public void setFio(String fio) {
		this.fio = fio;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDate_birth() {
		return date_birth;
	}
	public void setDate_birth(String date_birth) {
		this.date_birth = date_birth;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getNumber_pasport() {
		return number_pasport;
	}
	public void setNumber_pasport(String number_pasport) {
		this.number_pasport = number_pasport;
	}
	public String getIndef_number() {
		return indef_number;
	}
	public void setIndef_number(String indef_number) {
		this.indef_number = indef_number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
    
}
