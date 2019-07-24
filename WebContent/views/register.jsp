<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>
.divider-text {
	position: relative;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 15px;
}

.divider-text span {
	padding: 7px;
	font-size: 12px;
	position: relative;
	z-index: 2;
}

.divider-text:after {
	content: "";
	position: absolute;
	width: 100%;
	border-bottom: 1px solid #ddd;
	top: 55%;
	left: 0;
	z-index: 1;
}

.btn-facebook {
	background-color: #405D9D;
	color: #fff;
}

.btn-twitter {
	background-color: #42AEEC;
	color: #fff;
}
</style>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">


<div class="container">
	<c:if test="${status}">
		<div class="alert alert-info" role="alert">
			<strong>${message}</strong>
		</div>
	</c:if>
	<c:if test="${update}">
		<c:set var="url" value="upserve" />
	</c:if>
	<c:if test="${!update}">
		<c:set var="url" value="register" />
	</c:if>

	<hr>

	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">REGISTER</h4>
			<p class="text-center">Get started with your free account</p>
			<p>
				<a href="" class="btn btn-block btn-twitter"> <i
					class="fab fa-twitter"></i>   Login via Twitter
				</a> <a href="" class="btn btn-block btn-facebook"> <i
					class="fab fa-facebook-f"></i>   Login via facebook
				</a>
			</p>
			<p class="divider-text">
				<span class="bg-light">OR</span>
			</p>
			<form action="${url}" method="post">
				<c:if test="${update}">
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input name="userid" class="form-control" id="userid"
							placeholder="Full name" type="text" value="${det.stuid}" readonly="readonly">
					</div>
				</c:if>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-user"></i>
						</span>
					</div>
					<input name="username" class="form-control" id="username"
						placeholder="Full name" type="text" value="${det.stuname}">
				</div>

				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-envelope"></i>
						</span>
					</div>
					<input name="email" class="form-control" id="email"
						placeholder="Email address" type="email" value="${det.email}">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-phone"></i>
						</span>
					</div>
					<input name="phno" class="form-control" id="phno"
						placeholder="Phone number" type="text" value="${det.phno}">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-building"></i>
						</span>
					</div>
					<input name="jobtype" class="form-control" id="jobtype"
						placeholder="job type" type="text" value="${det.jobtype}">
				</div>
				<!-- form-group end.// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i>
						</span>
					</div>
					<input class="form-control" placeholder="Create password"
						name="userpass" id="userpass" type="password">
				</div>
				<!-- form-group// -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i>
						</span>
					</div>
					<input class="form-control" placeholder="Repeat password"
						name="resetpass" id="resetpass" type="password">
				</div>
				<!-- form-group// -->
				<div class="form-group">
					<input type="submit"
						class="btn btn-primary btn-lg btn-block login-button"
						value="Register">
				</div>
				<!-- form-group// -->
				<p class="text-center">
					Have an account? <a href="">Log In</a>
				</p>
			</form>
		</article>
	</div>
	<!-- card.// -->

</div>
