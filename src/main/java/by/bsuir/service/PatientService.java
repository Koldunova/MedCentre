package by.bsuir.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.Patient;
import by.bsuir.domain.Person;
import by.bsuir.domain.User;
import by.bsuir.repository.PatientRepository;

@Service
public class PatientService {
	@Autowired
	PatientRepository patientRepository;
	
	public Patient findPatientForUser(User user) {
		Person person = user.getPerson();
		Patient patient = patientRepository.findByPerson(person);
		
		return patient;
	}
}
