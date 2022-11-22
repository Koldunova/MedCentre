package by.bsuir.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import by.bsuir.domain.Subdivision;
import by.bsuir.service.SubdivisionService;

@Controller
public class SubdivisionController {
	@Autowired
	SubdivisionService subdivisionService;
	
	@GetMapping("/subdivision")
	public String getSubdivision(Model model) {
		List<Subdivision> subList = subdivisionService.getActual();

		model.addAttribute("subList", subList);
		
		return "departmentsPage";
	}
}
