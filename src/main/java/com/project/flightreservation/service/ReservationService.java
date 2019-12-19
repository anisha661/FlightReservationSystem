package com.project.flightreservation.service;

import java.util.Optional;

import com.project.flightreservation.dto.ReservationRequest;
import com.project.flightreservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest request);
	
	Optional<Reservation> getReservationById(Long id);

	void deleteReservation(long id);

}
