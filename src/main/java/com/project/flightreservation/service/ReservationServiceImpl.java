package com.project.flightreservation.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.flightreservation.dto.ReservationRequest;
import com.project.flightreservation.entities.Flight;
import com.project.flightreservation.entities.Passenger;
import com.project.flightreservation.entities.Reservation;
import com.project.flightreservation.repos.FlightRepository;
import com.project.flightreservation.repos.PassengerRepository;
import com.project.flightreservation.repos.ReservationRepository;
import com.project.flightreservation.util.EmailUtil;
import com.project.flightreservation.util.PDFGenerator;


@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	PassengerRepository passengerRepository;
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	PDFGenerator pdfGenerator;
	
	@Autowired
	EmailUtil emailUtil;
	
	
	@Override
	public Reservation bookFlight(ReservationRequest request) {
		
		
		Long flightId = request.getFlightId();
		Flight flight=flightRepository.findById(flightId).get();
		
		
		Passenger passenger=new Passenger();
		passenger.setFirst_name(request.getPassengerFirstname());
		passenger.setMiddle_name(request.getPassengerMiddlename());
		passenger.setLast_name(request.getPassengerLastname());
		passenger.setEmail(request.getPassengerEmail());
		passenger.setPhone(request.getPassengerPhone());
		
		Passenger savedPassenger=passengerRepository.save(passenger);
		
		
		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setChecked_in(false);
		
		Reservation savedReservation =reservationRepository.save(reservation);
		
		String filepath="/D:/reservations/reservation"+savedReservation.getId()+".pdf";
		pdfGenerator.generateItinerary(savedReservation, filepath);
		emailUtil.sendItinerary(passenger.getEmail(), filepath);
		return savedReservation;
	}

	@Override
	public void deleteReservation(long id) {
		Optional<Reservation> reservation =reservationRepository.findById(id);
		if(reservation.isPresent()) {
			reservationRepository.delete(reservation.get());
		}
		
		
		
	}

	@Override
	public Optional<Reservation> getReservationById(Long id) {
		return reservationRepository.findById(id);
	}
}
