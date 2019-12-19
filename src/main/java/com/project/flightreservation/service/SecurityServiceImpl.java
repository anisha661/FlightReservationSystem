package com.project.flightreservation.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public class SecurityServiceImpl implements SecurityService {

	@Autowired
	UserDetailsService userDetails;
	
	@Autowired
	AuthenticationManager authenticationManager;
	
/**	@Override
	public boolean login(String username, String password) {

		UserDetails user =userDetails.loadUserByUsername(username);
		UsernamePasswordAuthenticationToken token =new UsernamePasswordAuthenticationToken(user, password,user.getAuthorities());
		authenticationManager.authenticate(token);
		boolean result = token.isAuthenticated();
		
		if(result) {
			SecurityContextHolder.getContext().setAuthentication(token);
		}
		
		return result;
	}*/

	@Override
	public String findLoggedInUsername() {

		Object userDetails =SecurityContextHolder.getContext().getAuthentication().getDetails();
		if(userDetails instanceof UserDetails) {
			return ((UserDetails)userDetails).getUsername();
		}
			
		return null;
	}

}
