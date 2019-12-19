package com.project.flightreservation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.project.flightreservation.entities.Flight;
import com.project.flightreservation.repos.FlightRepository;

@Service
public class FlightServiceImpl implements FlightService {

	@Autowired
	FlightRepository flightRepository;

	@Override
	public void addFlight(Flight flight) {
		flightRepository.save(new Flight());
	}

	@Override
	public void updateFlight(Flight flight) {
         flightRepository.save(flight);
	}

	@Override
	public void saveFlight(Flight flight) {
		flightRepository.save(flight);
	}

	@Override
	public void deleteFlight(long id) {
		Optional<Flight> flight=flightRepository.findById(id);
		if(flight.isPresent()) {
			flightRepository.delete(flight.get());
		}
	}

	@Override
	public Optional<Flight> getFlightById(long id) {
		return flightRepository.findById(id);
	}

	@Override
	public List<Flight> getAllFlight() {
		return flightRepository.findAll();
	}


}
