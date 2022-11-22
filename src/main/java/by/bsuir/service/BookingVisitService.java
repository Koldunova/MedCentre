package by.bsuir.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import by.bsuir.domain.BookingVisit;
import by.bsuir.repository.BookingVisitRepository;

@Service
public class BookingVisitService {
	@Autowired
	BookingVisitRepository bookingVisitRepository;
	
	public boolean saveBooking(BookingVisit visit) {
	    BookingVisit savedBV = bookingVisitRepository.save(visit);

	    return savedBV != null;
	}
}
