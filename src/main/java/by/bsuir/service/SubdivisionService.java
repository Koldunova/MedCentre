package by.bsuir.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.Subdivision;
import by.bsuir.repository.SubdivisionRepository;

@Service
public class SubdivisionService {

	@Autowired
	public SubdivisionRepository subdivisionRepository;
	
	public List<Subdivision> getSubForShow() {
		boolean showOnHome = true;
		
		return subdivisionRepository.findByShowOnHome(showOnHome);
		
	}
	
	public List<Subdivision> getActual(){
		boolean actual = true;
		
		return subdivisionRepository.findByActual(actual);
	}
	
}
