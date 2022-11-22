package by.bsuir.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import by.bsuir.domain.Doctor;
import by.bsuir.service.DoctorService;

@Controller
public class DoctorController {
	@Autowired
	DoctorService doctorService;
	
	@GetMapping("/doctor")
	public String getDoctorPage(Model model) {
		List<Doctor> docList = doctorService.getActual();
		
		model.addAttribute("docList", docList);
		
		return "doctorPage";
	}
}
