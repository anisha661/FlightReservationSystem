<%@include file="common/header.jsp" %>
<div class="full-page">
        <div class="row h-100">
            <div class="col-7">
                <div class="lt-left bg-primary">

                </div>
            </div>
            <div class="col-5">
                <div class="lt-right">
                    <div class="form-wrapper">
                        <h5 class="form-head">
                            Signup to Continue
                        </h5>
                        <form:form method="POST" modelAttribute="userForm" class="form-auth">
                            <spring:bind path="fullname">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <label for="fullname">Name</label>
                                    <form:input type="text" path="fullname" id="fullname" class="form-control" placeholder="John Doe"></form:input>
                                    <form:errors path="fullname"></form:errors>
                                </div>
                            </spring:bind>
                            <spring:bind path="email">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <label for="email">Email</label>
                                    <form:input type="email" id="email" path="email" class="form-control"
                                                placeholder="johndoe@domain.com"></form:input>
                                    <form:errors path="email"></form:errors>
                                </div>
                            </spring:bind>
                            <spring:bind path="username">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <label for="username">Username</label>
                                    <form:input type="text" path="username" id="username" class="form-control"
                                                placeholder="john213"></form:input>
                                    <form:errors path="username"></form:errors>
                                </div>
                            </spring:bind>
                            <spring:bind path="password">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <label for="password">Password</label>
                                    <form:input type="password" path="password" id="password" class="form-control"
                                                placeholder="********"></form:input>
                                    <form:errors path="password"></form:errors>
                                </div>
                            </spring:bind>
                             <spring:bind path="passwordConfirm">
                                <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <label for="passwordConfirm">Confirm Password</label>
                                    <form:input type="password" path="passwordConfirm" class="form-control"
                                                placeholder="*********" id="passwordConfirm"></form:input>
                                    <form:errors path="passwordConfirm"></form:errors>
                                </div>
                            </spring:bind>
                            <button type="submit" class="btn btn-primary" value="Signup">Signup</button>
                        </form:form>
                        <div class="form-redirect">
                            <p>Already an user?<a href="${contextPath}/login">Signin</a> to continue</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <%@include file="common/footer.jsp" %>
  
