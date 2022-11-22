package by.bsuir.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import by.bsuir.domain.BookingVisit;

@Repository
public interface BookingVisitRepository extends JpaRepository<BookingVisit, Long> {
	
}
