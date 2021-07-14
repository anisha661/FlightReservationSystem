
<%@include file="common/header.jsp"%>
<%@include file="common/sidebar.jsp"%>
<div class="container">
	<div>
		<a type="button" class="btn btn-primary btn-md " href="/addflight">Add Flight</a>

	</div>
	<br>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3>List of Flight's</h3>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th width="40%">Source</th>
						<th width="40%">Destination</th>
						<th width="20%">Departure date</th>
						<th width="20%">Departure time</th>

						<th width="20%">Operating airlines</th>

						<th width="20%">Price</th>
						<th width="20%">Flight Number</th>
						<th width="20%"></th>




					</tr>
				</thead>
				<tbody>
					<c:forEach items="${flights}" var="f">
						<tr>
							<td>${f.departure_city}</td>
							<td>${f.arrival_city}</td>
							<td><fmt:formatDate value="${f.date_of_departure}" pattern="dd/MM/yyyy" /></td>
							<td>${f.departure_time }</td>		
							<td>${f.operating_airline}</td>
							<td>${f.price}</td>
							<td>${f.flight_no}</td>

							<td><a type="button" class="btn btn-success"
								href="/editFlight?id=${f.id}">Update</a> <a type="button"
								class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<%@include file="common/footer.jsp"%>
