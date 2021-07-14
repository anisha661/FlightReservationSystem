<%@include file="common/header.jsp"%>
<%@include file="common/navbar.jsp"%>

<body>

		<div class="wrapper">
                <div class="container">
		            <h2>Welcome ${pageContext.request.userPrincipal.name}</h2>
                    <div class="blk-wrap">
                        <div class="blk-wrap__head">
                            <h5>Search for Flights</h5>
                        </div>
                        <div class="blk-wrap__body">
                            <form action="/displayFlight" method="POST">
                                <div class="form-row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="source">Source</label>
                                            <select class="form-control" name="from" id="source">
                                                <option value="" selected disabled>---Choose option---</option>
                                                <option value="Kathmandu">Kathmandu</option>
                                                <option value="Pokhara">Pokhara</option>
                                                <option value="Nepalgunj">Nepalgunj</option>
                                                <option value="Bhairawa">Bhairawa</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="destination">Destination</label>
                                            <select class="form-control" name="to" id="destination">
                                                <option value="" selected disabled>---Choose option---</option>
                                                <option value="Kathmandu">Kathmandu</option>
                                                <option value="Pokhara">Pokhara</option>
                                                <option value="Nepalgunj">Nepalgunj</option>
                                                <option value="Bhairawa">Bhairawa</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="departureDate">Departure Date</label>
                                    <input type="date" id="departureDate" name="departureDate" class="form-control mb-4" placeholder="Departure date">
                                </div>
                                <div class="form-group">
                                    <label for="defaultContactFormEmail">No. of Passenger</label>
                                    <input type="text" id="defaultContactFormEmail" name="no_of_passenger" class="form-control mb-4" placeholder="No of passenger">
                                </div>
                                <button class="btn btn-primary" type="submit">Send</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
	<script>
	
	$( function() {
	    $( "#departureDate" ).datepicker({
	    	format: 'dd/mm/yyyy'
	    });
	  } );
	 
	</script>
	
	<%@include file="common/footer.jsp"%>