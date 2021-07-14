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
       <nav class="navbar fixed">
	        <a class="navbar-brand" href="/">Reserve</a>
            <div class="navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="/"><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/cancelReservation">Cancel reservation</a>
                    </li>
                    <!--Only admin can view this link -->
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
            <div class="navbar-account">
                <figure class="user-img"></figure>
                <div class="user-info">
                    <span>${pageContext.request.userPrincipal.name}</span>
                    <span>User</span>
                </div>
            </div>
	   </nav>
</body>
</html>