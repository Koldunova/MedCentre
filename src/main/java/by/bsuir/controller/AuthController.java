package by.bsuir.controller;

import by.bsuir.domain.Person;
import by.bsuir.domain.Sex;
import by.bsuir.domain.User;
import by.bsuir.domain.UserDto;
import by.bsuir.repository.PersoneRepo;
import by.bsuir.repository.UserRepository;
import by.bsuir.service.UserService;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Controller
public class AuthController {


    @Autowired
    UserService userService;

    @Autowired
    PersoneRepo personeRepo;

    @Autowired
    UserRepository userRepository;

    @PostMapping("/registration")
    public String registration(@ModelAttribute("formRegistration") UserDto userDto, Model model){
        User user = userService.getUserByEmail(userDto.getEmail());
        if(user != null){
            model.addAttribute("userExists", true);
            return "loginForm";
        }else {
            Person person = new Person();
            person.setAddress(userDto.getAddress());
            person.setFio(userDto.getFio());
            person.setPersonalNumber(userDto.getIndef_number());
            person.setDocNumber(userDto.getNumber_pasport());
            person.setSex(Sex.valueOf(userDto.getSex ()));
            person.setDateBirth(Date.valueOf(userDto.getDate_birth ()));
            person = personeRepo.save(person);
            user = new User();
            user.setPerson(person);
            user.setPassword(userDto.getPassword());
            user.setEmailAddress(userDto.getEmail());
            userRepository.save(user);
        }
        return "redirect:/";
    }

//    @PostMapping("/login")
//    public String registration(@ModelAttribute("formRegistration") UserDto userDto, Model model){
//
//        return "redirect:/";
//    }

}
