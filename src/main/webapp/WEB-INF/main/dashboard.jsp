<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<body style="background-color: white">
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
							<li class="nav-item">
								<a class="nav-link active" style="color: black" href="/logout">Log Out</a>
							</li>
						</ul>
                    </div>
				</span>
			</div>
			
		</nav>
		<div style="border-bottom: 2px solid black;"></div>
		


<%-- 	<div id="loading-screen" style="display: flex; flex-direction: column; align-items: center;">
		  <div class="loading-icon"></div>
		  <h1 style="margin-bottom: 10px; color:white">Welcome, <c:out value="${loggedInUser.companyName}"/>&copy;</h1>
		  <p style="color: dedede">Fetching all current employees...</p>
	</div>	 --%>
	
	<div id="loading-screen" style="display: flex; flex-direction: column; align-items: center;">
	  <h1 style="margin-bottom: 10px; color:white">Welcome, <c:out value="${loggedInUser.companyName}"/>&copy;</h1>
	  <p style="color: dedede">Fetching all current employees...</p>
	  <div class="loading-icon"></div>
	</div>
	<!-- put hire date salary and actions inside of view one by pressing employee name -->
	
	<div class="d-flex justify-content-center mt-5">
	
		<table class="table table-hover border-dark w-auto tableScroll">
			<thead>
				<tr>
					<th>Full Name</th>
					<th>Email</th>
<!-- 					<th>Phone Number</th>
					<th>Hire Date</th> -->
					<th>Job Title</th>
<!-- 					<th>Salary</th>
 -->					<th>Actions</th> 
				</tr>
			</thead>
			
			<tbody>
 		      <c:forEach items="${allEmployees}" var="employee">
					<c:if test="${employee.user.id == loggedInUser.id}">
						<tr>						
						    <td><a href="/employee/${employee.id}/view">${employee.name}</a></td>
						    <td>${employee.email}</td>
<%-- 						    <td>${employee.phoneNumber}</td>
						    <td>${employee.hireDate}</td> --%>
						    <td>${employee.jobTitle}</td>
<!-- 						    <td>$${employee.salary}</td>
 -->						<td>
 							<div style="display: flex; justify-content: space-between;"> 
							    <a href="/employee/${employee.id}/edit" class="btn btn-sm btn-info mr-3">Edit</a>
								<form action="/employee/${employee.id}" method="post">
									<input type="hidden" name="_method" value="delete" />
									<input
									type="submit"
									value="Fire"
									class="btn btn-outline-danger btn-sm"/>
								</form>
							</div>
						    </td>
						</tr>						
					</c:if>
				</c:forEach>
		    </tbody>
		</table>
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
			}, 1000);
		};
	</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
		   integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
		   crossorigin="anonymous">
		</script>
</body>
</html>