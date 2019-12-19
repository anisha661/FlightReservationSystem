package com.project.flightreservation.entities;

import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Flight extends AbstractEntity {

	private String price;
	private String flight_no;
	private String operating_airline;
	private String departure_city;
	private String arrival_city;
	@Temporal(TemporalType.DATE)
	private Date date_of_departure;
	
	private LocalTime departure_time;
	private String no_of_seats;
	
	
	
	
	
	public String getNo_of_seats() {
		return no_of_seats;
	}
	public void setNo_of_seats(String no_of_seats) {
		this.no_of_seats = no_of_seats;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public LocalTime getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(LocalTime departure_time) {
		this.departure_time = departure_time;
	}
	public String getFlight_no() {
		return flight_no;
	}
	public void setFlight_no(String flight_no) {
		this.flight_no = flight_no;
	}
	public String getOperating_airline() {
		return operating_airline;
	}
	public void setOperating_airline(String operating_airline) {
		this.operating_airline = operating_airline;
	}
	public String getDeparture_city() {
		return departure_city;
	}
	public void setDeparture_city(String departure_city) {
		this.departure_city = departure_city;
	}
	public String getArrival_city() {
		return arrival_city;
	}
	public void setArrival_city(String arrival_city) {
		this.arrival_city = arrival_city;
	}
	public Date getDate_of_departure() {
		return date_of_departure;
	}
	public void setDate_of_departure(Date date_of_departure) {
		this.date_of_departure = date_of_departure;
	}
	/**public Timestamp getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(Timestamp departure_time) {
		this.departure_time = departure_time;
	}*/
	
	
}
