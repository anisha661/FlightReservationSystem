<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

       <nav class="navbar navbar-expand-lg navbar-dark  fixed-top" role="navigation">
	<a class="navbar-brand" href="/" style="color: white;padding: 5px 7px; border: solid 2px white;">ReserveNepal </a>

		<button type="button" class="navbar-toggler" data-toggle="collapse"
			data-target="#navbarResponsive" aria-expanded="false" aria-controls="navbarResponsive">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="navbar-collapse collapse " id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/"><span
					class="sr-only">(current)</span></a>
				</li>
				
				<li class="nav-item"><a class="nav-link" href="/cancelReservation">Cancel reservation</a>
				</li>
				
				<!-- 			Only admin can view this link -->
				<sec:authorize access="hasAuthority('ADMIN')">
				
				<li class="nav-item"><a class="nav-link" href="/admin/addflight">AddFlight</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/admin/showFlight">ShowFlight</a>
				</li>
				
				</sec:authorize>
				
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a>
				</li>
		  </ul>
		</div>
	</nav>

</body>
</html>