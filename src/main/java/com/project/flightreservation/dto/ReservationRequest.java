package com.project.flightreservation.dto;

public class ReservationRequest {
	
	private Long flightId;
	private String passengerFirstname;
	private String passengerMiddlename;
	private String passengerLastname;
	private String passengerEmail;
	private String passengerPhone;
	
	
	
	public Long getFlightId() {
		return flightId;
	}
	public void setFlightId(Long flightId) {
		this.flightId = flightId;
	}
	public String getPassengerFirstname() {
		return passengerFirstname;
	}
	public void setPassengerFirstname(String passengerFirstname) {
		this.passengerFirstname = passengerFirstname;
	}
	public String getPassengerMiddlename() {
		return passengerMiddlename;
	}
	public void setPassengerMiddlename(String passengerMiddlename) {
		this.passengerMiddlename = passengerMiddlename;
	}
	public String getPassengerLastname() {
		return passengerLastname;
	}
	public void setPassengerLastname(String passengerLastname) {
		this.passengerLastname = passengerLastname;
	}
	public String getPassengerEmail() {
		return passengerEmail;
	}
	public void setPassengerEmail(String passengerEmail) {
		this.passengerEmail = passengerEmail;
	}
	public String getPassengerPhone() {
		return passengerPhone;
	}
	public void setPassengerPhone(String passengerPhone) {
		this.passengerPhone = passengerPhone;
	}

	
	
}
