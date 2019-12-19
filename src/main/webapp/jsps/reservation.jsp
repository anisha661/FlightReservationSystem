<%@include file="common/header.jsp"%>
<%@include file="common/navbar.jsp"%>

<div class="container">
	<h2>Complete Reservation</h2>
	
	<div class="card" >
  <div class="card-body">
    <h5 class="card-title">Flight details</h5>

    <p class="card-text">Operating Airline :${flight.operating_airline }</p>
    <p class="card-text"> Departure City:${flight.departure_city } </p>
    <p class="card-text"> Arrival City:${flight.arrival_city }</p>
    <p class="card-text">Date of Departure:${flight.date_of_departure }</p>
    
  </div>
</div>

	<form class="text-center border border-light p-5"
		action="/completeReservation" method="post">

		<p class="h4 mb-4">Passenger Details</p>

       <div class="row">
       <div class="col-lg-4 col-md-4 col-sm-12">
       <input type="text" id="passengerFirstname" name="passengerFirstname"
			class="form-control mb-4" placeholder="Passenger firstname">
       </div>
       
       <div class="col-lg-4 col-md-4 col-sm-12">
       <input type="text" id="passengerLastname" name="passengerMiddlename"
			class="form-control mb-4" placeholder="Passenger middlename">
       </div>
       
       <div class="col-lg-4 col-md-4 col-sm-12">
       <input type="text" id="passengerLastname" name="passengerLastname"
			class="form-control mb-4" placeholder="Passenger lastname">
       </div>
       </div>
		
		<input type="text" id="passengerEmail" name="passengerEmail"
			class="form-control mb-4" placeholder="Passenger email"> 
			
		<input type="text" id="passengerPhone" name="passengerPhone"
			class="form-control mb-4" placeholder="Passenger phone"> 
			
			<input type="hidden" name="flightId" value="${flight.id}" />

		<button class="btn btn-info btn-block" type="submit">Send</button>

	</form>



</div>

<%@include file="common/footer.jsp"%>