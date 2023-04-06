<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<body style="background-color: white;">
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
<!--                         	<li class="nav-item">
								<a class="nav-link active" style="color: black" href="/employee/create">Create Employee</a>
							</li>
							<li class="nav-item">
								<a class="nav-link active" style="color: black" href="/logout">Log Out</a>
							</li> -->
						</ul>
                    </div>
				</span>
			</div>
			
		</nav>
		<div style="border-bottom: 2px solid black;"></div>
    <div class="container my-5">
        <center><h4 class="">Add Employee</h4></center>
        <!-- <a href="/" class="btn btn-light">Back</a>
        <a href="/logout" class="btn btn-light">Logout</a> -->
        <hr />
        
        <div class="col-5 my-3 container">
            <form:form action="/employee/process"  method="post" modelAttribute="employeeName">
                <form:input type="hidden" path="user" value="${user_id}"/>
                
                <div class="form-group">
                    	<label>Hire Date:</label>
                        <form:input path="hireDate" class="form-control mt-3" type="date" placeholder="Hire Date"/>
                        <form:errors path="hireDate" class="text-danger"/>			
                </div>
               
               
               <div class="form-group">
                    <!-- <label>Name</label> -->
                        <form:input path="name" class="form-control" type="text" placeholder="Enter first and last name"/>
                        <form:errors path="name" class="text-danger"/>			
                </div>
            
                <div class="form-group">
                    <!-- <label>Quantity</label> -->
                        <form:input path="email" class="form-control mt-3" type="text" placeholder="Email"/>
                        <form:errors path="email" class="text-danger"/>			
                </div>
            
                <div class="form-group">
                    <!-- <label>Price</label> -->
                        <form:input path="phoneNumber" class="form-control mt-3" type="number" placeholder="Phone Number"/>
                        <form:errors path="phoneNumber" class="text-danger"/>			
                </div>
                
                <div class="form-group">
                    <!-- <label>Description</label> -->
                        <form:input path="jobTitle" class="form-control mt-3" type="text" placeholder="Job Title"/>
                        <form:errors path="jobTitle" class="text-danger"/>			
                </div>

                <div class="form-group">
                    <!-- <label>Description</label> -->
                        <form:input path="salary" class="form-control mt-3" type="number" placeholder="Salary"/>
                        <form:errors path="salary" class="text-danger"/>			
                </div>
 
 
                <div class="form-group">
                    <!-- <label>Description</label> -->
                        <form:input path="notes" class="form-control mt-3" type="text" placeholder="Any additonal notes?"/>
                </div>
                                
                <input type="submit" value="Add Employee" class="btn btn-outline-success"/>
            </form:form>
        </div>
    </div>
    <div style="display:inline-block">
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
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
		   integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
		   crossorigin="anonymous">
		</script>
</body>
</html>