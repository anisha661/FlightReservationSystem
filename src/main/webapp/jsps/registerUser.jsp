<%@include file="common/header.jsp" %>

    <div class="container">
    
    <div class="row">

		<div id="login" class="col-lg-9 col-md-8 col-sm-9 mx-auto">
			<div class="card ">
				<div class="card-header" style="text-align:center;">Create your account</div>
				<div class="card-body">

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
           
            <spring:bind path="fullname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="fullname" class="form-control" placeholder="Enter your fullname"
                                autofocus="true"></form:input>
                    <form:errors path="fullname"></form:errors>
                </div>
            </spring:bind>

            

            <spring:bind path="email">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="email" class="form-control"
                                placeholder="Confirm your email.."></form:input>
                    <form:errors path="email"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control"
                                placeholder="Confirm your username"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>
            
              <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            <div class="form-group">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
            
            </div>
            
            <h4 class="text-center">
							Already have an account?<a href="${contextPath}/login">Login</a>
							</h4>
        </form:form>

    </div>
    </div>
    </div>
    </div>
    </div>
    

  
  
  <%@include file="common/footer.jsp" %>
  
