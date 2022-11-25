package by.bsuir.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.Appeal;
import by.bsuir.repository.AppealRepository;

@Service
public class AppealService {
	@Autowired
	AppealRepository appealRepository;
	
	public void save(Appeal appeal) {
		appealRepository.save(appeal);
	}
}
