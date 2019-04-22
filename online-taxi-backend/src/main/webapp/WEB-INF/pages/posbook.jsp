
     <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
 <meta charset="UTF-8">
 <link rel="icon" href="images/logo.jpg" type="image/gif" sizes="16x16">
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

#errmsg1 {
	color: red;
}
#errmsg2 {
	color: red;
}
#errmsg3{
	color: red;
}
#errmsg23{
color:red;
}
</style>
	
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
					
						
                </ul>
            </nav>
            <div class="content-wrapper">
            <div class="container">
           <c:choose>
<c:when test="${mode=='NEW_BOOK'}">
			 <form action="possave" method="POST"  name="CITYregistration" enctype="multipart/form-data"  onSubmit="return cityvalidateForm()"">
	            
               
                    <br>
                    <br>
                    
                    
                        
                            <div class="card-header" style="background-color:blue">
                              <font size="5px" color="white">
                                    Customer Support Booking
                                </font>
                            </div>
                            
                               
                                    <div class="row">
                                        <div class="col-md-4">
                                          <div class="form-group">
                                                <b><label for="address">Drop Address</label></b>
                                                <textarea class="form-control" id="address" placeholder="Address" name="address"></textarea>
												
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-md-4">
                                    <div class="form-group">
                                                <b> <label for="Area">Area</label></b> 
								<select class="form-control" name="area" id="area" onmousedown="if(this.options.length>8){this.size=8;}"  onchange='this.size=0;' onblur="this.size=0;">
									<option value="">Select Area Inside Bhubaneswar</option>
									<c:forEach var="area" items="${area}">
										<option value="${area.area}">${area.area}</option>
									</c:forEach>
								</select>
								
								<div class="col-md-4">
							
						</div>
                                            </div>
                                            
                                        </div>
                                        <div class="col-md-4">
                                    <div class="form-group">
                                                  <b> <label for="other cities">Other Cities</label></b>  <select class="form-control" name="outarea" id="outarea" onmousedown="if(this.options.length>8){this.size=8;}"  onchange='this.size=0;' onblur="this.size=0;">
									<option value="">Select Area Outside BBSR</option>
									<c:forEach var="outarea" items="${outarea}">
										<option value="${outarea.outarea}">${outarea.outarea}</option>
									</c:forEach>
								</select>
                                            </div>
                                        </div>
										
										<input
									type="time" name="bookingTime" class="form-control"
									placeholder="Enter time" name="bookingTime" id="bookingTime"
									value="now" hidden="hidden">
									
									<input
									type="date" name="bookingDate" class="form-control"
									placeholder="Booking Date" id="txtdate" hidden="hidden">
										
                                    </div>
									<div class="row">
									<div class="col-md-4">
									<div class="form-group">
                                                <b> <label for="contact">Contact</label></b> <input type="text"
									name="mobileNumber" class="form-control"
									placeholder="Enter mobile no" id="mobileNumber" maxlength="10">
								<span id="errmsg1"></span>
                               
                           
                                            </div>
									
									</div>
									
									<div class="col-md-4">
                                    <div class="form-group">
                                             <b><label for="customerName">Customer Name</label></b>
                           <input type="text" name="customerName" class="form-control" placeholder="Enter name" id="customerName">
                                            </div>
                                        </div>
									<div class="col-md-4">
									<div class="form-group">
                                                <b><label for="vehicletype">Vehicle Type</label></b>
                            <select class="form-control" name="vehicletype" id="vehicletype">
                            <option value="">Select Type</option>
                               
                            </select>
                                            </div>
									
									</div>
									</div>
									<div class="row">
									<div class="col-md-4">
									<div class="form-group">
                                                <b><label for="no.ofvehicle">No.of Vehicle</label></b>
                            <input type="text" value="1" class="form-control" name="numberOfVehicle" id="numberOfVehicle" onchange="return test()">
                            <span id="errmsg1"></span>
                               
                           
                                            </div>
									
									</div>
									
									
									<div class="col-md-4">
									<div class="form-group">
                                                <b><label for="Vehicleno">Vehicle No.</label></b>
                            <input type="text" class="form-control"  name="vehicleno" placeholder="Enter vehicleno." id="vehicleno" >
                           
                            <span id="errmsg2"></span>
                               
                           
                                            </div>
									</div>
									<div class="col-md-4">
									<div class="form-group">
                                                <b><label for="price">Amount to be paid</label></b>
                            <input type="text" class="form-control price" name="pricea" placeholder="--" id="price1" readonly="readonly">
                              <input type="hidden" class="form-control price" name="pricea" placeholder="Enter price" id="price3" >
                               
                           
                                            </div>
									</div>
									</div>
									<div class="row">
									<div class="col-md-4">
									<div class="form-group">
                                                <b><label for="price">Amount Collected</label></b>
                           <input type="text" class="form-control price" name="price" placeholder="--" id="price" >
                           <input type="hidden" class="form-control price" name="aprice" placeholder="Enter price" id="price2" >
                            <span id="errmsg3"></span>
                               
                           
                                            </div>
									</div>
									</div>
									
                                    <br>
									
                                         <input type="submit" class="btn btn-primary" value="Confirm">
                                        
                                        
									<a href="viewall"><input type="button" value="Cancel" class="btn btn-primary"></a>
                                         
                                        
                            
                       </form>
          
									
                      
									
                                    
									
                      
              
                        <br>
                         </c:when>                 
                       </c:choose>
                   
                 
             </div>   
             
            </div><!-- .content-wrapper -->
        </main> <!-- .cd-main-content -->

</body>
<script>
			 $(function(){
             	$('#area').on('change', function(){
             		var  area = $('#area option:selected').val();
             	
             		
             		 $.ajax({
             	            type: "GET",
             	            contentType: "application/json; charset=utf-8",
             	         	  datatype: "json",
             	            url: "${pageContext.request.contextPath}/vehicleAndArea/"+area+"",
             	            
             	            success: function (result) {
             	            
             	            	var vehicle="";
             	            	vehicle+="<option value="+result[i]+">Select Vehicle</option>"
           	                  for(var i=0;i<result.length;i++){ 
           	                	vehicle+="<option value="+result[i]+">"+result[i]+"</option>"
           	                	 $('#vehicletype').html(vehicle);
           	                	
           	                }
           	                  
             	              
             	            	
             	            },
             	            });
             	            })
             	            })
             	            
             	            
             	            
             	            
             	            
             	            
             		 
			 $(function(){
             	$('#vehicletype').on('change', function(){
             		var  area = $('#area option:selected').val();
             		var  vehicletype = $('#vehicletype option:selected').val();
             	
             		
             		 $.ajax({
             	            type: "GET",
             	            contentType: "application/json; charset=utf-8",
             	         	  datatype: "json",
             	            url: "${pageContext.request.contextPath}/vehicleAndAreaPrice/"+area+","+vehicletype+"",
             	            
             	            success: function (result) {
             	             
             	            	
             	            	
             	                 $('.price').val(result);
             	            },
             	           });
      	            })
      	            }) 
      	            
      	           
			</script>
			
			
			<script>
			 $(function(){
             	$('#outarea').on('change', function(){
             		var  area = $('#outarea option:selected').val();
             	
             		
             		 $.ajax({
             	            type: "GET",
             	            contentType: "application/json; charset=utf-8",
             	         	  datatype: "json",
             	            url: "${pageContext.request.contextPath}/outvehicleAndArea/"+area+"",
             	            
             	            success: function (result) {
             	            
             	            	var vehicle="";
             	            	vehicle+="<option value="+result[i]+">Select Vehicle Type</option>"
           	                  for(var i=0;i<result.length;i++){ 
           	                	vehicle+="<option value="+result[i]+">"+result[i]+"</option>"
           	                	 $('#vehicletype').html(vehicle);
           	                	
           	                }
           	                  
             	              
             	            	
             	            },
             	            });
             	            })
             	            })
             		 
			$(function(){
             	$('#vehicletype').on('change', function(){
             		var  area = $('#outarea option:selected').val();
             		var  vehicletype = $('#vehicletype option:selected').val();
             	
             		
             		 $.ajax({
             	            type: "GET",
             	            contentType: "application/json; charset=utf-8",
             	         	  datatype: "json",
             	            url: "${pageContext.request.contextPath}/outvehicleAndAreaPrice/"+area+","+vehicletype+"",
             	            
             	            success: function (result) {
             	             
             	            	
             	            	
             	                 $('.price').val(result);
             	            },
             	           });
      	            })
      	            }) 
      	            
      	            
      	            
      	            
			</script>
			
			
			
			<script>
$(function() {
  
  $("form[name='customersupport']").validate({
   
    rules: {
      
      address: "required",
	  area:"required",
      outstation: "required",
	  otheroutstation: "required",
	  emailid: "required",
	  vehicletype: "required",
	  Noofvehicle: "required",
	  vehicleno: "required",
	  price: "required",
	  amount: "required",
	 
     
	  
    },
   
    messages: {
      address: "Please enter your Address",
	   area: "Please enter  area",
	    outstation: "Please enter your outstation",
		 otheroutstation: "Please enter otheroutstation",
		  vehicletype: "Please enter your vehicletype",
		   Noofvehicle: "Please enter your No.of vehicle",
		    vehicleno: "Please enter your vehicleno",
			 price: "Please enter your price",
			  amount: "Please enter amount",
			   
      
     
      
    },
    
    submitHandler: function(form) {
      form.submit();
    }
  });
});

</script>
<!-- <script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#vehicleno").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg2").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script> -->
<script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#numberOfVehicle").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg1").html("Digits Only").show().fadeOut("fast");
               return false;
    }
   });
});
</script>
<script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#price").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg3").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script>


</script>
	<script>
$(function(){     
  var d = new Date(),        
      h = d.getHours(),
      m = d.getMinutes();
  if(h < 10) h = '0' + h; 
  if(m < 10) m = '0' + m; 
  $('input[type="time"][value="now"]').each(function(){ 
    $(this).attr({'value': h + ':' + m});
  });
});
</script>
	<script>
function setInputDate(_id){
          var _dat = document.querySelector(_id);
          var hoy = new Date(),
              d = hoy.getDate(),
              m = hoy.getMonth() + 1,
              y = hoy.getFullYear(),
              data;

          if (d < 10) {
              d = "0" + d;
          };
          if (m < 10) {
              m = "0" + m;
          };

          data = y + "-" + m + "-" + d;
          //console.log(data);
          _dat.value = data;
      };

      setInputDate("#txtdate");
</script>

<script>
 function test()
{
	var noofvehicle=document.getElementById("numberOfVehicle").value;
	var pr =document.getElementById("price2").value;

	var ve =document.getElementById("price3").value;
	var totalve=noofvehicle*ve;
	var totalpr=noofvehicle*pr;
	document.getElementById("price").value=totalpr;
	document.getElementById("price1").value=totalve;
	 return total;
	} 
	
	$('#numberOfVehicle, #price').on('input',function() {
var numberOfVehicle = parseInt($('#numberOfVehicle').val());
var price = parseFloat($('#price').val());
$('#total').val((numberOfVehicle * price ? numberOfVehicle * price : 0).toFixed(2));
});
	</script>


<script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#mobileNumber").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg1").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script>

<script>
$(document).ready(function(){
    $("#customerName").keypress(function(event){
        var inputValue = event.charCode;
        if(!(inputValue >= 65 && inputValue <= 122) && (inputValue != 32 && inputValue != 0)){
            event.preventDefault();
        }
    });
});
</script>

			
			
</html>