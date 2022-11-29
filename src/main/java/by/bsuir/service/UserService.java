package by.bsuir.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.User;
import by.bsuir.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;
	
	
	public User getUserById(long id) {
		User user = new User();
		
		user = userRepository.findById(id);
		
		return user;
	}

	public User getUserByEmail(String email){
		User user = new User();

		user = userRepository.findByEmailAddress(email);

		return user;
	}
}
