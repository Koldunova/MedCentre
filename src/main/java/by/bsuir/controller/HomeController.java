package by.bsuir.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import by.bsuir.App;
import by.bsuir.domain.Appeal;
import by.bsuir.domain.BookingVisit;
import by.bsuir.domain.Doctor;
import by.bsuir.domain.Subdivision;
import by.bsuir.service.AppealService;
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
	@Autowired
	AppealService appealService;
	
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
	
	@GetMapping("/contacts")
	public String getContacts(Model model) {
		Appeal appealForm = new Appeal();
		BookingVisit bookingVisit = new BookingVisit();
		List<Subdivision> subListForForm = subdivisionService.getActual();
		
		model.addAttribute("bookingForm", bookingVisit);
		model.addAttribute("appealForm", appealForm);
		model.addAttribute("subListForForm", subListForForm);
		return "contactPage";
	}
	
	
	@PostMapping("/addAppeal")
	public String addAppeal(@ModelAttribute ("appealForm") Appeal appeal) {
		
		appealService.save(appeal);
		return "redirect:/contacts";
	}
}
