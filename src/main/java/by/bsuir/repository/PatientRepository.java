package by.bsuir.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.Patient;
import by.bsuir.domain.Person;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Long>{
	Patient findByPerson(Person person);
}
