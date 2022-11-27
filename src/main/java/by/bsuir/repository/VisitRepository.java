package by.bsuir.repository;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.Patient;
import by.bsuir.domain.Visit;

@Repository
public interface VisitRepository extends JpaRepository<Visit, Long>{

	@Query("Select v FROM Visit v "
			+ "WHERE v.medDocument.patient = :patient"
			+ " AND "
			+ "v.visitDate >= :currentDate")
	List<Visit> findFutureVisitForPatient(@Param("patient") Patient patient, @Param("currentDate") Date currentDate);

	Visit findById(long id);
}
