package by.bsuir.repository;

import by.bsuir.domain.Person;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersoneRepo extends JpaRepository<Person, Long> {
}
