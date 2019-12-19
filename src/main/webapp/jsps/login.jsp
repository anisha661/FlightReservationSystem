<%@include file="common/header.jsp"%>



<div class="container">
	<div class="row">

		<div id="login" class="col-lg-9 col-md-8 col-sm-9 mx-auto">
			<div class="card ">
				<div class="card-header" style="text-align:center;">Login to continue</div>
				<div class="card-body">
					<form method="POST" action="${contextPath}/login"
						class="form-signin">
			

						<div class="form-group ${error != null ? 'has-error' : ''}">
							<div class="form-group">
							<span style="text-align:center;">${msg}</span> 
							</div>
							<div class="form-group">
							<input name="username" type="text" class="form-control" placeholder="Username" autofocus="true" />
							</div>
							 <div class="form-group">
							 <input name="password" type="password" class="form-control" placeholder="Password" />
							  </div>
							 <div class="form-group">
							 <span style="color: red;">${error}</span>
							 </div>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						 	<div class="form-group">
						 	<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
						 	</div>
							
							<h4 class="text-center">
								<a href="${contextPath}/register">Create an account</a>
							</h4>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>



<%@include file="common/footer.jsp"%>

