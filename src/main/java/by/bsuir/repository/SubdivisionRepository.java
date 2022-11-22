package by.bsuir.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.Subdivision;

@Repository
public interface SubdivisionRepository extends JpaRepository<Subdivision, Long> {
	List<Subdivision> findByShowOnHome(boolean showOnHome);
	List<Subdivision> findByActual(boolean actual);
}
