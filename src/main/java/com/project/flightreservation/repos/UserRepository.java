package com.project.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.flightreservation.entities.User;

public interface UserRepository extends JpaRepository<User, Long >{
	
	User findByUsername(String username);

}
