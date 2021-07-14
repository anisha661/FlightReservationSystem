<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>


<div class="container">
 <div class="row">
  <div class="col-md-6 col-md-offset-3  ">
   <div class="card">
    <div class="card-header">Add Flight</div>
    <div class=" card-body">
     <form:form method="post" modelAttribute="flight">
      <form:hidden path="id" />
      <fieldset class="form-group">
       <form:label path="departure_city">Source</form:label>
       <form:select path="departure_city"  class="form-control"
        required="required" >
        <form:option value="" selected="true" disabled="true">---Choose option---</form:option>
    
		<form:option value="Kathmandu">Kathmandu</form:option>
		<form:option value="Pokhara">Pokhara</form:option>
		<form:option value="Nepalgunj">Nepalgunj</form:option>
		<form:option value="Bhairawa">Bhairawa</form:option>
		</form:select>
       <form:errors path="departure_city" cssClass="text-warning" />
      </fieldset>

      <fieldset class="form-group">
       <form:label path="arrival_city">Destination</form:label>
       <form:select path="arrival_city" type="text" class="form-control"
        required="required" >
        <form:option value="" selected="true" disabled="true">---Choose option---</form:option>
		<form:option value="Kathmandu">Kathmandu</form:option>
		<form:option value="Pokhara">Pokhara</form:option>
		<form:option value="Nepalgunj">Nepalgunj</form:option>
		<form:option value="Bhairawa">Bhairawa</form:option>
        </form:select>
       <form:errors path="arrival_city" cssClass="text-warning" />
      </fieldset>
      
       <fieldset class="form-group">
       <form:label path="date_of_departure">Departure date</form:label>
       <form:input path="date_of_departure" type="text" class="form-control"
        required="required" />
       <form:errors path="date_of_departure" cssClass="text-warning" />
      </fieldset>
      
       <fieldset class="form-group">
       <form:label path="departure_time">Departure time</form:label>
       <form:input path="departure_time" type="text" class="form-control"
        required="required" />
       <form:errors path="departure_time" cssClass="text-warning" />
      </fieldset>
      
       <fieldset class="form-group">
       <form:label path="flight_no">Flight number:</form:label>
       <form:input path="flight_no" type="text" class="form-control"
        required="required" />
       <form:errors path="flight_no" cssClass="text-warning" />
      </fieldset>
   
      
       <fieldset class="form-group">
       <form:label path="operating_airline">Operating airlines</form:label>
       <form:input path="operating_airline" type="text" class="form-control"
        required="required" />
       <form:errors path="operating_airline" cssClass="text-warning" />
      </fieldset>
      
      <fieldset class="form-group">
       <form:label path="price">Price</form:label>
       <form:input path="price" type="text" class="form-control"
        required="required" />
       <form:errors path="price" cssClass="text-warning" />
      </fieldset>
      
       <fieldset class="form-group">
       <form:label path="no_of_seats">Number of seats</form:label>
       <form:input path="no_of_seats" type="text" class="form-control"
        required="required" />
       <form:errors path="no_of_seats" cssClass="text-warning" />
      </fieldset>

      <button type="submit" class="btn btn-success">Save</button>
     </form:form>
    </div>
</div>
  </div>
 </div>
</div>

<script>


$('#date_of_departure').datepicker({
    format: 'dd/mm/yyyy' ,
    orientation: "bottom left" ,
    showAnim: "fold",
    todayHighlight: true
});
</script>

<%@include file="common/footer.jsp" %>