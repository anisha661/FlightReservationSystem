package com.project.flightreservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.flightreservation.dto.ReservationRequest;
import com.project.flightreservation.entities.Flight;
import com.project.flightreservation.entities.Reservation;
import com.project.flightreservation.repos.FlightRepository;
import com.project.flightreservation.repos.ReservationRepository;
import com.project.flightreservation.service.ReservationService;

@Controller
public class ReservationController {
	
	
	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	ReservationService reservationService;
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@RequestMapping("/showCompleteReservation")
	public String showReservation(@RequestParam("flightId")Long flightId,ModelMap modelMap) {
		
		Flight flight=flightRepository.findById(flightId).get();
		modelMap.addAttribute("flight", flight);
		return "reservation";
		
	}
	
	@RequestMapping(value="/completeReservation" ,method=RequestMethod.POST)
	public String completeReservation(ReservationRequest request,ModelMap modelMap) {
		
		Reservation reservation = reservationService.bookFlight(request);
		modelMap.addAttribute("msg", "Reservation created succesfully and the id is:" +reservation.getId());
		return "reservationConfirmation" ;
		
	}
	
	@RequestMapping(value="/cancelReservation" ,method=RequestMethod.GET)
	public String showCancelReservation() {
		return "cancelReservation";
	}
	
	@RequestMapping(value ="/cancelReservation" ,method=RequestMethod.POST)
	public String cancelReservation(@RequestParam("id") Long id) {
		
		reservationService.deleteReservation(id);
		return null;
		
	}
}


