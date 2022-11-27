package by.bsuir.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import by.bsuir.domain.Doctor;
import by.bsuir.domain.User;
import by.bsuir.domain.Visit;
import by.bsuir.service.DoctorService;
import by.bsuir.service.UserService;
import by.bsuir.service.VisitService;

@Controller
public class DoctorController {
	@Autowired
	DoctorService doctorService;
	@Autowired
	UserService userService;
	@Autowired
	VisitService visitService;
	
	@GetMapping("/doctor")
	public String getDoctorPage(Model model) {
		List<Doctor> docList = doctorService.getActual();
		
		model.addAttribute("docList", docList);
		
		return "doctorPage";
	}
	
	@GetMapping("/doctorVisits")
	public String getDoctorVisitsPage(Model model) {
		//Костыль
		long id= 2;
		User user =  userService.getUserById(id);
		
		Doctor doctor = doctorService.getDoctorByPerson(user.getPerson());
		
		List<Visit> visits = visitService.findCurrentVisitForDoctor(doctor);
		
		model.addAttribute("docList", visits);
		model.addAttribute("fio", doctor.getPerson().getFio());
		model.addAttribute("post", doctor.getPost().getPostName());
		
		return "doctorVisitPage";
	}
	
	@GetMapping("/deleteVisitByDoctor")
	public String deleteVisitByDoctor(Model model, @RequestParam String id){
		try {
			long idVisit = Long.parseLong(id);
			visitService.deleteVisit(idVisit);
		} catch (Exception e) {
		}
		return "redirect:/doctorVisits";
	}
}
