package by.bsuir.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.Appeal;

@Repository
public interface AppealRepository extends JpaRepository<Appeal, Long>{
	
}
