package by.bsuir.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	User findById(long id);
}
