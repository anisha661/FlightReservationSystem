<%@include file="common/header.jsp"%>
<%@include file="common/navbar.jsp"%>

<body>

	<div class="container">
		<h2>Welcome ${pageContext.request.userPrincipal.name}</h2>


		<form class="text-center border border-light p-5"
			action="/displayFlight" method="post">

			<p class="h4 mb-4">Search flights</p>

			<div class="row">

				<div class="col-lg-6 col-md-6 col-sm-12">
					<label>Source</label> <select
						class="browser-default custom-select mb-4" name="from">
						<option value="" selected disabled>---Choose option---</option>
						<option value="Kathmandu">Kathmandu</option>
						<option value="Pokhara">Pokhara</option>
						<option value="Nepalgunj">Nepalgunj</option>
						<option value="Bhairawa">Bhairawa</option>
					</select>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">

					<label>Destination</label> <select
						class="browser-default custom-select mb-4" name="to">
						<option value="" selected disabled>---Choose option---</option>
						<option value="Kathmandu">Kathmandu</option>
						<option value="Pokhara">Pokhara</option>
						<option value="Nepalgunj">Nepalgunj</option>
						<option value="Bhairawa">Bhairawa</option>
					</select>
				</div>


			</div>



			<input type="text" id="departureDate" name="departureDate"
				class="form-control mb-4" placeholder="Departure date"> 
				<input type="text" id="defaultContactFormEmail" name="no_of_passenger"
				class="form-control mb-4" placeholder="No of passenger">



			<!-- Send button -->
			<button class="btn btn-info btn-block" type="submit">Send</button>

		</form>

	</div>
	<script>
	
	$( function() {
	    $( "#departureDate" ).datepicker({
	    	format: 'dd/mm/yyyy'
	    });
	  } );
	 
	</script>
	
	<%@include file="common/footer.jsp"%>