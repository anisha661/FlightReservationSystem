package com.project.flightreservation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Sort;

import com.project.flightreservation.entities.Flight;

public interface FlightService {
	
	Optional<Flight> getFlightById(long id);
	
	void addFlight(Flight flight);
	
	void updateFlight(Flight flight);
	
	void saveFlight(Flight flight);
	
	void deleteFlight(long id);
	
	public List<Flight> getAllFlight();
	

}
