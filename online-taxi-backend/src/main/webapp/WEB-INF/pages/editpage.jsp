<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="images/logo.jpg" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="poscss\reset.css">
<link rel="stylesheet" href="poscss\style.css">
<link rel="stylesheet" href="poscss\style1.css">
<link rel="stylesheet" href="poscss\table.css">
<script src="posjs\modernizr.js"></script>
<script src="posjs\validation.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<title>Online Taxi</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="posjs\jquery.menu-aim.js"></script>
<script src="posjs\main.js"></script>
<!-- Resource jQuery -->
<script type="TJTYRECOMPANY20-12-18\src\main\webapp\js\Ajax.js"> </script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.min.js"></script>
<style>
.error {
	color: #ff0000;;
}

#errmsg {
	color: red;
}
</style>




</head>
<body>

	<header class="cd-main-header">


		<a href="#0" class="cd-nav-trigger"><span></span></a>
		<nav class="cd-nav">
			<ul class="cd-top-nav">
				<li><a href="logout" style="text-decoration: none;"><i
						class="fa fa-power-off"></i>Logout</a></li>
				<img src="images/logo.jpg" width="200" height="100"
					style="margin-left: -1250px; margin-top: -100px" />
			</ul>
		</nav>
	</header>
	<main class="cd-main-content">
	<nav class="cd-side-nav">
		<br>
		<ul>
			<li><a href="viewall" style="text-decoration: none;">All
					Booking</a></li>
			<li><a href="newbooking" style="text-decoration: none;">POS
					Booking</a></li>


		</ul>
	</nav>
	<div class="content-wrapper">
		<div class="container">



			<br> <br>



			<div class="card-header" style="background-color: blue">
				<font size="5px" color="white"> Assign Vehicle </font>
			</div>

			<form method="POST" name="editvehicle" id="editvehicle"
				action="updated">



				

					<!-- <div class="row">
						<div class="col-md-4">
							<div class="form-group"> -->
								<input type="hidden" class="form-control"
									value="${books.tripId}" id="tripId" name="tripId"> 
									<input type="hidden" class="form-control"
									value="${books.refid}" id="refid" name="refid">
									<input type="hidden" class="form-control"
									value="${books.address}" id="address" name="address">
									<input
									type="hidden" class="form-control" value="${books.destination}"
									id="destination" name="destination"> <input
									type="hidden" class="form-control" value="${books.airport}"
									id="airport" name="airport"> <input type="hidden"
									class="form-control" value="${books.customerName}"
									id="customerName" name="customerName"> <input
									type="hidden" class="form-control" value="${books.bookingDate}"
									id="bookingDate" name="bookingDate"> <input
									type="hidden" class="form-control" value="${books.bookingTime}"
									id="bookingTime" name="bookingTime"> <input
									type="hidden" class="form-control"
									value="${books.pickuplocation}" id="pickuplocation"
									name="pickuplocation"> <input type="hidden"
									class="form-control" value="${books.numberOfPax}"
									id="numberOfPax" name="numberOfPax"> <input
									type="hidden" class="form-control" value="${books.numberOfBag}"
									id="numberOfBag" name="numberOfBag"> <input
									type="hidden" class="form-control"
									value="${books.numberOfVehicle}" id="numberOfVehicle"
									name="numberOfVehicle"> <input type="hidden"
									class="form-control" value="${books.price}" id="price"
									name="price"> <input type="hidden" class="form-control"
									value="${books.flightNo}" id="flightNo" name="flightNo">
								<input type="hidden" class="form-control"
									value="${books.flightTime}" id="flightTime" name="flightTime">
								<input type="hidden" class="form-control"
									value="${books.flightDate}" id="flightDate" name="flightDate">



								<c:forEach begin="1" end="${books.numberOfVehicle}">

						<div class="row">
						<div class="col-md-4">
							<div class="form-group">
							
									<b><label for="vehicleno">Vehicle No.</label></b>
									<input type="text" class="form-control"
										value="${books.vehicleno}" id="vehicleno" name="vehicleno">
							</div>
						</div>


						<div class="col-md-4">
							<div class="form-group">
								<b><label for="driverno">Driver Contact Number</label></b> <input
									type="text" class="form-control" value="${books.driverno}"
									id="driverno" name="driverno" maxlength="10"> <span id="errmsg" ></span>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b><label for="status">Status</label></b> <select
									class="form-control" id="status" name="status">
									<option value="">Select Status</option>
									<option value="Trip Complete">Trip Complete</option>
									<option value="Assign">Assign</option>
									<option value="On Process">On Process</option>
									<option value="Not Assign">Not Assign</option>

								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b><label for="drivername">Driver Name</label></b> <input
									type="text" class="form-control" value="${books.drivername}" id="drivername" name="drivername">
								<span id="errmsg"></span>
							</div>
							</div>
							</div>
						
						
						</c:forEach>




					

				<div class="row">
<div class="col-md-4"></div>
                  <div class="col-md-4">
							<div class="form-group">
				
					<input type="submit" value="Submit" class="btn btn-primary">
				
               </div>
               </div>
               </div>
			</form>
			
			<br>


		</div>
	</div>
	<!-- .content-wrapper --> </main>
	<!-- .cd-main-content -->
	<script>
$(function() {
  
  $("form[name='editvehicle']").validate({
   
    rules: {
      
     /*  vehicleno: "required",
	  driverno:"required" */
       status: "required"
	 
	 
     
	  
    },
   
    messages: {
    /*   vehicleno: "Please enter vehicleno",
	   driverno: "Please enter  driverno" */
	     status: "Please enter status"
		
     
      
    },
    
    submitHandler: function(form) {
      form.submit();
    }
  });
});

</script>
	<script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#driverno").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script>

</body>
</html>