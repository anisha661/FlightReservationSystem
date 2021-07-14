<%@include file="common/header.jsp"%>
 <div class="full-page overflow">
        <div class="row h-100">
            <div class="col-4">
                <div class="lt-left">
                    <div class="form-wrapper">
                        <h5 class="form-head">
                            Login to Continue
                        </h5>
                        <form action="${contextPath}/login" method="POST" class="form-auth">
                            <div class="${error != null ? 'has-error' : ''}">
                                <span style="text-align:center;">${msg}</span>
                                <div class="form-group">
                                    <label for="username">Email</label>
                                    <input type="text" name="username" id="username" class="form-control" placeholder="Your username">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" id="password" class="form-control" placeholder="*********">
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <button type="submit" class="btn btn-primary" value="Login">Login</button>
                                <span style="text-align:center;">${error}</span>
                            </div>
                        </form>
                        <div class="form-redirect">
                            <p>Dont have an account?<a href="${contextPath}/register">Signup</a> to continue</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-8">
                <div class="lt-right bg-primary">

                </div>
            </div>
        </div>
    </div>

