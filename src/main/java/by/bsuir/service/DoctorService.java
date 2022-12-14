package by.bsuir.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.Doctor;
import by.bsuir.domain.Person;
import by.bsuir.repository.DoctorRepository;

@Service
public class DoctorService {
	@Autowired
	DoctorRepository doctorRepository;
	
	public List<Doctor> getDoctorsForShow(){
		boolean showOnHome = true;
		
		return doctorRepository.findByShowOnHome(showOnHome);
	}
	
	public List<Doctor> getActual(){
		boolean actual = true;
		
		return doctorRepository.findByActual(actual);
	}
	
	public Doctor getDoctorByPerson(Person person) {
		List<Doctor> doctor = doctorRepository.findByPerson(person);
		
		if (doctor.size()>0) {
			return doctor.get(0);
		}
		
		return null;
	}
	
	
}
