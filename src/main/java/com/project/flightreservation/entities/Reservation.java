package com.project.flightreservation.entities;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

@Entity
public class Reservation extends AbstractEntity{
	

	private boolean checked_in;
	@OneToOne
	private Passenger passenger;
	@OneToOne
	private Flight flight;
	private Timestamp created;


	public boolean isChecked_in() {
		return checked_in;
	}
	public void setChecked_in(boolean checked_in) {
		this.checked_in = checked_in;
	}
	public Passenger getPassenger() {
		return passenger;
	}
	public void setPassenger(Passenger passenger) {
		this.passenger = passenger;
	}
	
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	public Timestamp getCreated() {
		return created;
	}
	public void setCreated(Timestamp created) {
		this.created = created;
	}
	
	

}
