<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<link rel="icon" href="images/logo.jpg" type="image/gif" sizes="16x16">
 <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="poscss\reset.css"> 
	<link rel="stylesheet" href="poscss\style.css">
	<link rel="stylesheet" href="poscss\style1.css">
	<link rel="stylesheet" href="poscss\table.css">
	<script src="posjs\modernizr.js"></script> 
	<script src="posjs\validation.js"></script> 
  	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<title>Online Taxi</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <script src="posjs\jquery.menu-aim.js"></script>
   <script src="posjs\main.js"></script> <!-- Resource jQuery -->
    <script type="TJTYRECOMPANY20-12-18\src\main\webapp\js\Ajax.js"> </script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.min.js"></script>   
        
	<style>
.table{
width:120px;

}

</style>
<script type="text/javascript">
function successMessage(message) {
  
	swal(message," ","success")
}
</script>
	
</head>
<body>

         <header class="cd-main-header">
        
       
            <a href="#0" class="cd-nav-trigger"><span></span></a>
            <nav class="cd-nav">
                <ul class="cd-top-nav">
                    <li><a  href="logout" style=" text-decoration: none;"><i class="fa fa-power-off"></i>Logout</a>
                       
                    </li>
                    <img src="images/logo.jpg" width="200" height="100" style="margin-left:-1250px;margin-top:-100px"  />
                </ul>
            </nav>
        </header> 


	<main class="cd-main-content">
	
		<nav class="cd-side-nav">
			
				<br>
					<ul>
					
					
					<li><a href="viewall" style=" text-decoration: none;">All Booking</a></li>
					<li><a href="newbooking" style=" text-decoration: none;">POS Booking</a></li>
					<c:choose>
			<c:when test="${not empty book}">
			<script>successMessage("${book}")
				</script>
			</c:when>
			</c:choose>
						
					</ul>
				

				</nav>
			
				
				 
				 <div class="content-wrapper"  >
				 <div class="container" > 
				  
               
            <br>
            <br>
            
	
                        
                            
		
                    
<table  border="1" class="table"  width="50" >
		
<tr  id="heder">
<th ><b>Ref_Id</b></th>
<th ><b>Name</b></th>
<th ><b>Pickup Location</b></th>
<th><b>Drop Location</b></th>
<th><b>Pickup Date</b></th>
<th><b>Pickup Time</b></th>
<th><b>Number of Vehicle</b></th>
<th><b>Driver Name</b></th>
<th>DriverContact Number</th>
<th><b>Vehicle Number</b></th>
<th><b>Status</b></th>
<th><b>AssignVehicle</b></th>
</tr>
<c:forEach var="book" items="${books}">
<tr style="color:black;text-align: center;">
<td>${book.refid}</td>
<td>${book.customerName}</td>
<td>${book.pickuplocation}</td>
<td>${book.destination}</td>
<td>${book.bookingDate}</td>
<td>${book.bookingTime}</td>
<td>${book.numberOfVehicle}</td>
<td>${book.drivername}</td>
<td >${book.driverno}</td>
<td>${book.vehicleno}</td>
<td>${book.status}</td>
<td><a href="findone?id=${book.tripId}"><i class="fa fa-edit"></i></a></td>
</tr>
</c:forEach>

</table>
		</div> 
		</div> <!-- .content-wrapper -->
	</main> <!-- .cd-main-content -->
      
       
     
            
</body>
</html>