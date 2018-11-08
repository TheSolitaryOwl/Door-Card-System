<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	String term = request.getParameter("type");

	if(term.equals("0")){
		request.setAttribute("error", "Please pick a term");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}else if(term.equals("Spring 2019")){
		
	}
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
		
		nav: first-child { 
			float: left; 
		}
		
		nav {
			background-color: black;
			width: 100%;
			height: 50px;
		}
		
		img{
			height : 30px;
		}
		
		select{
			min-width: 300px;
			border-radius: 20px;
			text-align-last : center;
		}
		
		a, span{
			color: #b9f6ca;
		}
		
		a:hover{
			color: #00e676;
		}
		
		div.card{
			background-color: black;
			border-radius : 20px;
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
        	<ul class="nav-item pt-3">
    			<li>
    				<a class="navbar-brand" href="index.jsp"><img src="icon.jpg" alt="site-logo"></a>
 				</li>
 			</ul>
   
   			<ul class="nav-items pt-3">
    			<li>
    				<a id="btn" class="btn" href="temp.jsp">My Class</a>
					<span><strong>|</strong></span>
					<a id="btn" class="btn" href="temp.jsp">My Professor</a>
				</li>
  			</ul>
		</nav>
		<!--End of Navbar-->
		
			<!--Start of Container-->
			<div class="container-fluid text-center">
				<h1 class="display-4 lead pt-1"><strong>Door Card</strong></h1>
				<h2 class="display-5 lead"><strong><% out.println(term);%></strong></h2>
				
				<!--Start of Card-->
				<div class="card">
					<!--Start of Card Body-->
					<div class="card-body">
							<ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
  								<!--Monday-->
  								<li class="nav-item">
    								<a class="nav-link active" id="mon-tab" data-toggle="tab" href="#mon" role="tab" aria-controls="mon" aria-selected="true">Mon</a>
  								</li>
  								
  								<!--Tuesday-->
  								<li class="nav-item">
    								<a class="nav-link" id="tue-tab" data-toggle="tab" href="#tue" role="tab" aria-controls="tue" aria-selected="false">Tue</a>
  								</li>
  								
  								<!--Wednesday-->
  								<li class="nav-item">
    								<a class="nav-link" id="wed-tab" data-toggle="tab" href="#wed" role="tab" aria-controls="wed" aria-selected="false">Wed</a>
  								</li>
  								
  								<!--Thursday-->
  								<li class="nav-item">
    								<a class="nav-link" id="thur-tab" data-toggle="tab" href="#thur" role="tab" aria-controls="thur" aria-selected="false">Thur</a>
  								</li>
  								
  								<!--Friday-->
  								<li class="nav-item">
    								<a class="nav-link" id="fri-tab" data-toggle="tab" href="#fri" role="tab" aria-controls="fri" aria-selected="false">Fri</a>
  								</li>
							</ul>
							
							<!--Start of Tab Content-->
							<div class="tab-content pt-1" id="myTabContent">
								<!--Monday-->
  								<div class="tab-pane fade text-white show active" id="mon" role="tabpanel" aria-labelledby="mon-tab">
  									<table class="table">
  											<thead class="thead-light">
  												<tr>
  													<th>Room</th>
  													<th colspan="7">Class</th>
  												</tr>
  											</thead>
  											<tbody>
  												<tr>
  													<td></td>
  													<td>11:00 am<br>11:50 am</td>
  													<td>1:00 pm<br>2:50 pm</td>
  													<td>2:00 pm<br>3:15 pm</td>
  													<td>4:00 pm<br>5:15 pm</td>
  													<td>5:25 pm<br>7:40 pm</td>
  													<td>6:50 pm<br>8:05 pm</td>
  													<td>6:50 pm<br>8:40 pm</td>
  												</tr>
  											</tbody>
  									</table>
  								</div>
  								
  								<!--Tuesday-->
  								<div class="tab-pane fade text-white" id="tue" role="tabpanel" aria-labelledby="tue-tab">
  									<table class="table">
  											<thead class="thead-light">
  												<tr>
  													<th>Period</th>
  													<th>Class</th>
  												</tr>
  											</thead>
  									</table>
  								</div>
  									
  								<!--Wednesday-->
  								<div class="tab-pane fade text-white" id="wed" role="tabpanel" aria-labelledby="wed-tab">
  									<table class="table">
  											<thead class="thead-light">
  												<tr>
  													<th>Period</th>
  													<th>Class</th>
  												</tr>
  											</thead>
  									</table>
  								</div>
  								
  								<!--Thursday-->
  								<div class="tab-pane fade text-white" id="thur" role="tabpanel" aria-labelledby="thur-tab">
									<table class="table">
  											<thead class="thead-light">
  												<tr>
  													<th>Period</th>
  													<th>Class</th>
  												</tr>
  											</thead>
  									</table>
								</div>
  								
  								<!--Friday-->
  								<div class="tab-pane fade text-white" id="fri" role="tabpanel" aria-labelledby="fri-tab">
  									<table class="table">
  											<thead class="thead-light">
  												<tr>
  													<th>Period</th>
  													<th>Class</th>
  												</tr>
  											</thead>
  									</table>
  								</div>
							</div>
							<!--End of Tab Content-->
					</div>
					<!--End of Card Body-->
				</div>
				<!--End of Card-->
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