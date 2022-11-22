package by.bsuir.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import by.bsuir.domain.BookingVisit;
import by.bsuir.domain.Doctor;
import by.bsuir.domain.Subdivision;
import by.bsuir.service.BookingVisitService;
import by.bsuir.service.DoctorService;
import by.bsuir.service.SubdivisionService;

@Controller
public class HomeController {
	
	@Autowired
	SubdivisionService subdivisionService;
	@Autowired
	DoctorService doctorService;
	@Autowired
	BookingVisitService visitService;
	
	@GetMapping("/")
	public String getHome(Model model) {
		
		List<Subdivision> subList = subdivisionService.getSubForShow();
		List<Subdivision> subListForForm = subdivisionService.getActual();
		List<Doctor> docList = doctorService.getDoctorsForShow();
		BookingVisit bookingVisit = new BookingVisit();
		
		model.addAttribute("subList", subList);
		model.addAttribute("docList", docList);
		model.addAttribute("bookingForm", bookingVisit);
		model.addAttribute("subListForForm", subListForForm);
		
		return "homePage";
	}
	
	
	@PostMapping("/bookingVisit")
	public String bookingVisit(@ModelAttribute ("bookingForm") BookingVisit bookingVisitForm) {
		visitService.saveBooking(bookingVisitForm);
		
		return "redirect:/";
	}
	
}
