package by.bsuir.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.Doctor;
import by.bsuir.domain.Person;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Long> {
	List<Doctor> findByActual(boolean actual);
	List<Doctor> findByShowOnHome(boolean showOnHome);
	List<Doctor> findByPerson(Person person);
}
