package com.project.flightreservation.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.flightreservation.entities.Flight;
import com.project.flightreservation.repos.FlightRepository;
import com.project.flightreservation.service.FlightService;

@Controller
public class FlightController {
	
	
	private static final Logger logger =LoggerFactory.getLogger(FlightController.class);
	
	@Autowired
	FlightService flightService;
	
	@Autowired
	FlightRepository flightRepository;
	
	
	
	@org.springframework.web.bind.annotation.InitBinder
	public void InitBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat= new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@RequestMapping(value="/displayFlight" ,method=RequestMethod.POST)
	public String findFlight(@RequestParam("from")String from,@RequestParam("to")String to,
			@RequestParam("departureDate") @DateTimeFormat(pattern="dd/MM/yyyy")Date departureDate,@RequestParam("no_of_passenger")String no_of_passenger,ModelMap modelMap) {
		
		logger.info("Inside findFlights() From:" + from + " TO:" + to + "Departure Date: " + departureDate +no_of_passenger +"no. of passenger");
		List<Flight> flights=flightRepository.findFlight(from, to, departureDate,no_of_passenger);
		System.out.println(flights.size());
		modelMap.addAttribute("size", flights.size());
		modelMap.addAttribute("msg", "There is no flight scheduled for that particular date !!");
	    modelMap.addAttribute("flights", flights);
  
		logger.info("Flights found are"+flights.toString());
		return "displayFlight";
		
	}
	
	
	
	

}
