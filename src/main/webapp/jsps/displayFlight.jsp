<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>

<body>

<div class="container">


<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 style="text-align:center;">Flight Details</h3>
		</div>
		
	<c:if test="${size==0}">
 <p> ${msg}</p>
</c:if> 
   
<c:if test="${size!=0 }">
       <div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
					<th width="20%">Operating airlines</th>
						<th width="20%">Departure city</th>
						<th width="20%">Arrival City</th>
						<th width="20%">Departure date</th>
						<th width="20%">Departure time</th>

						

						<th width="30%">Price (in Rs)</th>
						
						<th width="30%"></th>




					</tr>
				</thead>
				<tbody>
					<c:forEach items="${flights}" var="f">
						<tr>
						<td>${f.operating_airline}</td>
							<td>${f.departure_city}</td>
							<td>${f.arrival_city}</td>
							<td><fmt:formatDate value="${f.date_of_departure}" pattern="dd/MM/yyyy" /></td>
							<td>${f.departure_time }</td>		
							
							<td>${f.price}</td>
							

							<td><a type="button" class="btn btn-success"
								href="showCompleteReservation?flightId=${f.id}">Select</a> 
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</c:if>
	</div>
</div>
<%@include file="common/footer.jsp" %>

