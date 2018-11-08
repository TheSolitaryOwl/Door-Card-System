<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String error = (String) request.getAttribute("error");	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<title>Door Cards</title>
		<link rel="icon" type="image/png" href="icon.jpg"/>
	</head>
	<style>
		body, html {
    		height: 100%;
    		margin: 0;
		}
		
		div.bg{
			background-image: url("background.jpg");
			height: 100%; 

    		/* Center and scale the image nicely */
    		background-position: center;
    		background-repeat: no-repeat;
    		background-size: cover;
			font-family: "Walter Turncoat", cursive;
		}
		
		nav {
			background-color: black;
		}
		
		img{
			height : 30px;
		}
		
		select{
			min-width: 40%;
			border-radius: 20px;
			text-align-last : center;
		}
		
		a, span{
			color: #b9f6ca;
		}
		
		a:hover{
			color: #00e676;
		}
		
		#con{
			margin-top: 10%;
		}
		
		#submit{
			border-radius: 20px;
			color: #b9f6ca;
		}
		
		footer{
			background-color: black;
			color : #b9f6ca;
			position : fixed; 
			bottom   : 0; 
			width    : 100%
		}
	</style>
	<body>
		<div class="bg">
		
		<!--Start of Navbar-->
        <nav class="navbar">
    		<a class="navbar-brand" href="index.jsp"><img src="icon.jpg" alt="site-logo"></a>
		</nav>
		<!--End of Navbar-->
			
		<!--Start of Container-->
			<div class="container-fluid text-center" id="con">
				<h1 class="display-2 lead"><strong>UAFS Door Tag</strong></h1>
				<h2 class="display-5 lead"><strong>Select A Term</strong></h2>
				
				<form action="doorCard.jsp" method="post">
					<div class="col">	
						<select class="lead" name="type">
							<option value="0" selected>Term</option>
							<option value="Spring 2019">Spring 2019</option>
							<option value="Fall 2018">Fall 2018</option>
						</select>
					</div>	

					<h2 class="display-5 lead text-center">
				<% 
					if(error != null)
						out.println("<p class='lead' style='color: #ff4444'><strong>" + error + "</strong></p>");
				%>
			</h2>
								
					<div class="col pt-1">
						<input type="submit" value="Search" class="btn btn-dark pr-4 pl-4" id="submit">
					</div>
				</form>
				</div>
			</div>
			<!--End of Container-->
			
			<!--Start of Footer-->
			<footer>
				<h6 class="text-center">Thanks For Using Our Platform</h6>
			</footer>
			<!--End of Footer-->
		</div>
	</body>
</html>