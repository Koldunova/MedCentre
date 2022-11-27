package by.bsuir.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import by.bsuir.domain.Patient;
import by.bsuir.domain.User;
import by.bsuir.domain.Visit;
import by.bsuir.service.PatientService;
import by.bsuir.service.UserService;
import by.bsuir.service.VisitService;

@Controller
public class CabinetController {
	
	@Autowired
	UserService userService;
	@Autowired
	PatientService patientService;
	@Autowired
	VisitService visitService;
	
	@GetMapping("/account")
	public String pacientCabinet(Model model) {
		//Костыль
		long id= 1;
		User user =  userService.getUserById(id);
		
		Patient patient = patientService.findPatientForUser(user);
		List<Visit> visits = visitService.findFutureVisitForPatient(patient);
		
		model.addAttribute("userFIO", patient.getPerson().getFio());
		model.addAttribute("visitList", visits);
		
		return "userPage";
	}
	
	@GetMapping("/deleteVisit")
	public String deleteVisit(Model model, @RequestParam String id){
		try {
			long idVisit = Long.parseLong(id);
			visitService.deleteVisit(idVisit);
		} catch (Exception e) {
		}
		return "redirect:/account";
	}
}
