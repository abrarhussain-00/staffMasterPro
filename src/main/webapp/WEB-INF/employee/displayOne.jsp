<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<!-- ============================Bootstrap============================ -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
	<!-- ============================Google Fonts API============================ -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Indie+Flower&display=swap" rel="stylesheet">
	<!-- ============================CSS File============================ -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	<script src="https://kit.fontawesome.com/5492dab26b.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/main.css">
	<!-- ============================Application Info============================ -->
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>StaffMaster Pro</title>
</head>
<body>
	<!-- ============================Navbar============================ -->
		<!-- ============================Main Header============================ -->
		<nav class="navbar na navbar-expand-md bg-body-tertiary navbar-dark" style="background-image: linear-gradient(to bottom, #dedede, #c7c7c7);">
			<div class="container-fluid">
                <div class="collapse navbar-collapse" id="navlinks">
                    <ul class="navbar-nav align-items-start">
                        <li class="nav-item">
                            <a class="nav-link active" href="/"><div style="font-weight: 100; font-size: 24px; text-shadow: rgba(0, 0, 0, 0.2) 5px 3px 14px; text-align: left; color:black;"><b style="font-weight:bold;">Staff</b>Master Pro</div></a>
                        </li>
                    </ul>

                </div>
				<span>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navlinks"
						aria-controls="navlinks" aria-expanded="false" aria-label="Toggle navigation" style="color: black">
						<i class="fa-solid fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navlinks">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 align-items-end">
                        	<li class="nav-item">
								<a class="nav-link active" style="color: black" href="/employee/create">Create Employee</a>
							</li>
<!-- 							<li class="nav-item">
								<a class="nav-link active" style="color: black" href="/logout">Log Out</a>
							</li> -->
						</ul>
                    </div>
				</span>
			</div>
			
		</nav>
		<div style="border-bottom: 2px solid black;"></div>
	
	
	<div class="employee-info-container mt-5">
		<h1>Currently viewing: <i>"${employeeName.name}"</i></h1>
		<h4>Hire Date: ${employeeName.hireDate }</h4>
		<h4>Job Title: ${employeeName.jobTitle }</h4>
		<h4>Email on file: ${employeeName.email }</h4>
		<h4>Phone Number: ${employeeName.phoneNumber}</h4>
		<h4>Salary: $${employeeName.salary }</h4>
		<h4>Additional Notes: ${employeeName.notes}</h4>
		<a href="/">Back to dashboard</a>
	</div>
	
	<div class="">
		<footer class="footer-dark mt-5">
		    <div class="container">
		        <div class="row">
		            <div class="col-sm-3 item">
		                <h3>About</h3>
		                <ul>
		                    <li><a href="#">Learn More</a></li>
		                    <li><a href="#">FAQ</a></li>
		                </ul>
		            </div>
		            <div class="col-sm-4 item">
		                <h3>Meet the Developer</h3>
		                <ul>
		                    <li><a href="https://abrarbiz.net">Abrar Hussain</a></li>
		                </ul>
		            </div>
		            <div class="col-sm-5 item">
		                <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a
		                        href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i
		                            class="icon ion-social-snapchat"></i></a><a href="#"><i
		                            class="icon ion-social-instagram"></i></a></div>
		            </div>
		        </div>
		        <p class="copyright">StaffMasterPro © 2023</p>
		    </div>
		</footer>
	</div>
		<script type="text/javascript">
		window.onload = function() {
			setTimeout(function(){
				document.getElementById("loading-screen").style.display = "none";
				document.getElementById("content").style.display = "block";
			}, 3000);
		};
	</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
		   integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
		   crossorigin="anonymous">
		</script>
</body>
</html>