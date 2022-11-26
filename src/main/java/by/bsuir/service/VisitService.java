package by.bsuir.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.Patient;
import by.bsuir.domain.Visit;
import by.bsuir.repository.VisitRepository;

@Service
public class VisitService {
	@Autowired
	VisitRepository visitRepository;
	
	@SuppressWarnings("deprecation")
	public List<Visit> findFutureVisitForPatient(Patient patient){
		java.util.Date d = new java.util.Date();
		
		Date currentDate = new Date(d.getYear(), d.getMonth(), d.getDay());
		
		List<Visit> visits = visitRepository.findFutureVisitForPatient(patient, currentDate);
		
		return visits;
	}
}
