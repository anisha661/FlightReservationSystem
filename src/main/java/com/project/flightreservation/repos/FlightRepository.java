package com.project.flightreservation.repos;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.flightreservation.entities.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long >{
	
	@Query("SELECT f From Flight f WHERE f.departure_city= :departure_city"
			+ " and f.arrival_city= :arrival_city and f.date_of_departure= :date_of_departure"
			+ " and f.no_of_seats> :no_of_seats ")
	List<Flight> findFlight(@Param("departure_city")String from,@Param("arrival_city")String to ,
			@Param("date_of_departure")Date departureDate,@Param("no_of_seats")String no_of_passenger);

}
