package com.project.flightreservation.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.flightreservation.entities.Role;
import com.project.flightreservation.entities.User;
import com.project.flightreservation.repos.FlightRepository;
import com.project.flightreservation.repos.RoleRepository;
import com.project.flightreservation.repos.UserRepository;
import com.project.flightreservation.service.SecurityService;
import com.project.flightreservation.validation.UserValidator;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPassword;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private FlightRepository flightRepository;
	
	@Autowired
	private UserValidator userValidate;
	
	
	@GetMapping({ "/"})
    public String welcome() {
    	
        return "findFlight";
    }
	
	@RequestMapping("/register")
	public String showRegistration(Model model) {
        model.addAttribute("userForm", new User());

		return "registerUser";
	}
	
	@RequestMapping(value="/register" ,method=RequestMethod.POST)
	public String registerUser(@ModelAttribute("userForm") User user ,BindingResult result) {
		userValidate.validate(user, result);
		if(result.hasErrors()) {
			return "registerUser";
		}
		 Set<Role> roles=new HashSet<>();
	        roles.add(roleRepository.getOne(2L));
	        user.setRoles(roles);
		
		user.setPassword(bCryptPassword.encode(user.getPassword()));
		userRepository.save(user);
		return "login";
		
	}
	
	
	@GetMapping("/login")
	public String loginUser(Model m ,String error ,String logout) {
	if(error!=null) {
		m.addAttribute("error", "Your username and password is invalid!!");
	}
	if(logout!=null)
		m.addAttribute("msg", "Logged out successfully!!!");
		return "login";
	}
}
