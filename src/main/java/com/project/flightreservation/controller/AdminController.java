package com.project.flightreservation.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.flightreservation.entities.Flight;
import com.project.flightreservation.service.FlightService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	private static final Logger logger =LoggerFactory.getLogger(FlightController.class);

	
	@Autowired
	FlightService flightService;
	
	@RequestMapping(value="/showFlight" ,method=RequestMethod.GET)
	public String showFlight(ModelMap m) {
		m.put("flights", flightService.getAllFlight());
		return "showFlight";
	}
	
	@RequestMapping(value ="/addflight", method=RequestMethod.GET)
	public String showAddFlight(Model m)
	{
		Flight flight =new Flight();
		m.addAttribute("flight", flight);
		return "addFlight";
		
	}
	
	@RequestMapping(value="/addflight" ,method=RequestMethod.POST)
	public String addFlight(@ModelAttribute("flight") Flight flight) {
		flightService.saveFlight(flight);
		logger.info("Flight added succesfully!!");
		return "redirect:/showFlight";
		
	}
	
	@RequestMapping(value="/editFlight" , method=RequestMethod.GET)
	public String showEditFlight(ModelMap m ,@RequestParam long id) {
		Flight flight=flightService.getFlightById(id).get();
		m.addAttribute("flight", flight);
		return "addFlight";
		
		
	}
	
	@RequestMapping(value="/editFlight" ,method=RequestMethod.POST)
	public String  EditFlight(@Valid Flight flight ) {
		
		
		flightService.saveFlight(flight);
		return "redirect:/showFlight";
		
	}

}
