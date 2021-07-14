<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>


<div class="container">
<div class="col-lg-12 col-md-9 col-sm-12">
<div class="card ">
<div class="card-header">Enter your Reservation id for cancelation</div>
<form action="/cancelReservation" method="post" class="card-body">

<div class="form-group">

<label>Reservation id:</label>
<input type="text" name="id" class="form-control" style="display:flex;"/>
</div>
<input type="submit" class="btn btn-success" value="Cancel Reservation"/>
</form>
</div>
</div>

</div>


<%@ include file="common/footer.jsp" %>