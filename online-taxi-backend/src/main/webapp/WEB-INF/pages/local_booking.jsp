<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="images/logo.jpg" type="image/gif" sizes="16x16">
<title>Online Taxi</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script
	src="http://cdn.jsdelivr.net/timepicker.js/latest/timepicker.min.js"></script>
<link
	href="http://cdn.jsdelivr.net/timepicker.js/latest/timepicker.min.css"
	rel="stylesheet" />

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="jsvalidation/jquery.validate.js"></script>
<script type="text/javascript" src="jsvalidation/jquery.validate.min.js"></script>

<style>
#errmsg1 {
	color: red;
}

#errmsg2 {
	color: red;
}

#errmsg3 {
	color: red;
}

#errmsg4 {
	color: red;
}

.error {
	color: #ff0000;;
}

.card {
	border-radius: 1rem;
}

:root { -
	-input-padding-x: 1.5rem; -
	-input-padding-y: .75rem;
}

body {
	background: #007bff;
	background: linear-gradient(to right, #0062E6, #33AEFF);
}

.card-signin {
	border: 0;
	border-radius: 1rem;
	box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
	height: 90%;
}

.card-signin .card-title {
	margin-bottom: 2rem;
	font-weight: 300;
	font-size: 1.5rem;
}

.card-signin .card-body {
	padding: 2rem;
}

.form-signin {
	width: 100%;
	height: 100%;
}

.form-signin .btn {
	font-size: 15px;
	font-weight: bold;
	border-radius: 50px;
	padding: 10px;
	margin: 0px 25px 25px 0px;
	float: right;
	transition: all 0.2s;
}

.form-label-group {
	position: relative;
	margin-bottom: 1rem;
}

.form-label-group input {
	height: auto;
	border-radius: 2rem;
}

.form-label-group>input, .form-label-group>label {
	padding: var(- -input-padding-y) var(- -input-padding-x);
}

.form-label-group>label {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 100%;
	margin-bottom: 0;
	/* Override default `<label>` margin */
	line-height: 1.5;
	color: #495057;
	border: 1px solid transparent;
	border-radius: .25rem;
	transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
	color: transparent;
}

.form-label-group input:-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-moz-placeholder {
	color: transparent;
}

.form-label-group input::placeholder {
	color: transparent;
}

.form-label-group



 



input






:not



 



(
:placeholder-shown



 



)
{
padding-top






:



 



calc






(
var




(-
-input-padding-y






)
+
var






(-
-input-padding-y






)
*



 



(2/3));
padding-bottom






:



 



calc






(
var




(-
-input-padding-y






)/3);
}
.form-label-group input:not (:placeholder-shown )~label {
	padding-top: calc(var(- -input-padding-y)/3);
	padding-bottom: calc(var(- -input-padding-y)/3);
	font-size: 12px;
	color: #777;
}

body {
	width: 100%
}

a {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
}

.btn2 {
	background-color: blue; /* Green */
	border: none;
	color: white;
	padding: 19px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 20px;
	margin: 4px 2px;
	border-radius: 50%;
}
</style>
</head>
<body>
	<form class="form-signin" action="save" method="POST" name="myform"
		id="myform">
		<div class="container">

			<div class="card card-signin my-5">
				<div class="card-body">
					<div class="row">
						<div class="col-md-4">
							<img src="images/logo.jpg" width="200" height="100" />
						</div>
						<div class="col-md-4">

							<div class="btn2">Bhubaneswar Online Taxi</div>



						</div>
						<div class="col-md-4"></div>
					</div>

					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="fromairport">Airport</label></b> <select
									class="form-control" name="airport">
									<option value="">Airport</option>
									<option value="from">From Bhubaneswar Airport</option>
									<option value="to">To Bhubaneswar Airport</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b><label for="Name">Name</label></b> <input type="text"
									name="customerName" class="form-control"
									placeholder="Enter Name" id="customerName">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b><label for="Emailid">Email Id</label></b> <input type="email"
									name="emailId" class="form-control"
									placeholder="Enter Email Id">
							</div>
						</div>
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

								<b> <label for="datepicker">Pickup Date</label></b> <input
									type="date" id="bookingDate" class="form-control"
									placeholder="Booking Date" name="bookingDate">
							</div>
						</div>

						<input type="hidden" class="form-control" value="Not Assign"
							id="status" name="status">
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="Pickup time">Pickup Time</label></b> <input
									type="text" name="bookingTime" class="form-control"
									placeholder="Enter time" id="bookingTime">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="address">(Pickup/Drop)Address</label></b> <input
									type="text" name="address" class="form-control"
									placeholder="(Pickup/Drop)Address" id="address">
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="Area">Area</label></b> 
								<select
                                 class="form-control" name="area" id="area"
									  onchange="demo();">
									<option value="">Select Area inside BBSR</option>
									<c:forEach var="area" items="${area}">
										<option value="${area.area}">${area.area}</option>
									</c:forEach>
									<option value="Small(price not Available),Big(price not Available)">--Don't Know--</option>
								</select>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="other cities">Other Cities</label></b> <select
									class="form-control" name="outarea" id="outarea"
									onmousedown="if(this.options.length>8){this.size=8;}"
									onclick='this.size=0;' onblur="this.size=0;" onchange="disableDrop2()">
									<option value="">Select Area Outside BBSR</option>
									<c:forEach var="outarea" items="${outarea}">
										<option value="${outarea.outarea}">${outarea.outarea}</option>
									</c:forEach>
								</select>
							</div>
						</div>


					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="numberofpax">No. of Passengers</label></b> <input
									type="text" name="numberOfPax" class="form-control"
									placeholder="Enter no. of passengers" id="numberOfPax"
									value="1">
							</div>
							<span id="errmsg2"></span>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="numberofbaggage">Baggage Count</label></b> <input
									type="text" name="numberOfBag" class="form-control"
									placeholder="Enter no. of baggages" id="numberOfBag" value="1">
							</div>
							<span id="errmsg4"></span>

						</div>
						<div class="col-md-4">
							<div class="form-group">
								<b> <label for="Vehicle">Vehicle Type</label></b> <select
									class="form-control" name="vehicletype" id="vehicletype">
									<option value="">Select Vehicle Type</option>
								</select>
							</div>

						</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">

								<b> <label for="numberofvehicle">Number of Vehicle</label></b> <input
									type="text" name="numberOfVehicle" class="form-control"
									placeholder="Enter no.of vehicles" id="numberOfVehicle"
									onchange="return test()" value="1">
							</div>
							<span id="errmsg3"></span>
						</div>



						<div class="col-md-4">
							<div class="form-group">
								<b><label for="price">Amount to be paid</label></b> <input
									type="text" class="form-control price" name="price"
									placeholder="--" id="price1" readonly="readonly"> <input
									type="hidden" class="form-control price" name="pricecol"
									placeholder="Enter price" id="price3">


							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">

								<input type="hidden" class="form-control price" name="pricecol"
									placeholder="Enter price" id="price"> <input
									type="hidden" class="form-control price" name="pricecol"
									placeholder="Enter price" id="price2"> <span
									id="errmsg3"></span>


							</div>


						</div>
					</div>

				</div>

				<div>
					<div>
						<div class="card-header">

							<font size="5px" color="blue"> Optional</font>

						</div>
						<!-- <div id="collapseOne" class="collapse " data-parent="#accordion">-->
						<div class="card-body">
							<div class="cardpanel">
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<b><label for="flightdetails">Flight Details</label></b> <input
												type="text" class="form-control" id=""
												placeholder="Enter Flight Details">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<b><label for="Flight date">Flight Date</label></b> <input
												type="date" name="Flight date" class="form-control"
												placeholder="Enter Flight Date">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<b><label for="Flight time">Flight Time</label></b> <input
												type="time" name="Flight time" class="form-control"
												placeholder="Enter Flight time">
										</div>
									</div>

								</div>

							</div>

						</div>

						<!--</div>-->
					</div>
					<br>
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
						<div class="col-md-3">
							<Button type="submit" id="btnn" class="btn btn-primary"
								id="submit">Confirm</Button>

						</div>
					</div>

				</div>



			</div>

		</div>

	</form>
	<script>
	$(function() {
  $(document).ready(function () {

   var todaysDate = new Date(); // Gets today's date

    var year = todaysDate.getFullYear();                        // YYYY
    var month = ("0" + (todaysDate.getMonth() + 1)).slice(-2);  // MM

    var day = ("0" + todaysDate.getDate()).slice(-2);           // DD

    var minDate = (year +"-"+ month +"-"+ day); // Results in "YYYY-MM-DD" for today's date 

    // Now to set the max date value for the calendar to be today's date

    $('#bookingDate').attr('min',minDate);

  });
});
</script>

	<script>
  $(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var minDate= year + '-' + month + '-' + day;
    
    $('#BookingDate').attr('min', minDate);
});
	</script>
	<script>
  var timepicker = new TimePicker('bookingTime', {
  lang: 'en',
  theme: 'dark'
});
timepicker.on('change', function(evt) {
  
  var value = (evt.hour || '00') + ':' + (evt.minute || '00');
  evt.element.value = value;

});
</script>
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
  
  $("form[name='myform']").validate({
   
    rules: {
	  name:"required",
	  pickdrop:"required",
      airport:"required",
      BookingDate: "required",
	  fromairport:"required",
      tocity: "required",
      mobileNumber: "required",
      emailId: "required",
	  bookingTime: "required",
	  bookingDate: "required",
	  customerName: "required",
	  address: "required",
	  /* area: "required",
	  othercities: "required", */
	  numberOfPax: "required",
	  vehicletype: "required",
	  numberOfVehicle: "required",
	  price1: "required",
	  flightdetails: "required",
	  flightdate: "required",
	  flighttime: "required",
	  bgcount: "required",
	  emailId: {
        required: true,
        
        
      },
	  fromairport:{
	  required:true,
	  },
      password: {
        required: true,
        minlength: 5
      }
    },
   
    messages: {
      BookingDate: "Please enter your PickUpDate",
	   tocity: "Please enter  city",
	   mobileNumber: "Please enter your mobileNumber",
	    emailId: "Please enter valid emailid",
		  bookingTime: "Please enter your PickupTime",
		  customerName: "Please enter your Name",
		    address: "Please enter your address",
			 area: "Please enter your area",
			  othercities: "Please enter othercities",
			   numberOfPax: "Please enter no.of passengers",
			   vehicletype: "Please enter vehicletype",
			    numberOfVehicle: "Please enter number of vehicle",
				  price1: "Please enter price",
				   flightdetails: "Please enter your flightdetails",
				    flighttime: "Please enter your flighttime",
					flightdate: "Please enter flightDate",
					bgcount:"Please enter your bgcount",
					airport:"Please enter your airport details",
					name:"Please enter your name",
					pickdrop:"Please enter Pickup/Drop Location",
      
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      
    },
    
    submitHandler: function(form) {
      form.submit();
    }
  });
});

 </script>
	<!--<script>
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
</script>   -->
	<script type="text/javascript">
        function populateDropDown() {

            /* Clear the entire subjects drop down*/
            document.getElementById("vehicletype").options.length = 0;

            /* adding a Default "Select" option in Subjects Menu*/
            var optn = document.createElement("OPTION");
            optn.text = "Select";
            vehicletype.options.add(optn);

            /* This can be changed according to the rest of the code instead of hard coded values*/
            var selectedIndexVal = document.getElementById("area").selectedIndex;
            var subjectValList = document.getElementById("area").options[selectedIndexVal].value;
            
            var subjectValArray = subjectValList.split(",");
            for (var j = 0; j < subjectValArray.length; j++) {
                var optn = document.createElement("OPTION");
                optn.text = subjectValArray[j];
                optn.value = subjectValArray[j];
                vehicletype.options.add(optn);
            }

        }
    </script>

	<!-- <script type="text/javascript">
$(document).ready(function(){
    $("select").change(function(){
        $(this).find("option:selected").each(function(){
            var optionValue = $(this).attr("value");
            if(optionValue){
                $(".add").not("." + optionValue).hide();
                $("." + optionValue).show();
            } else{
                $(".add").hide();
            }
        });
    }).change();
});

</script> -->
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
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#numberOfPax").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg2").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script>

	<script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#numberOfBag").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg4").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
</script>


	<script>
$(document).ready(function () {
  //called when key is pressed in textbox
  $("#numberOfVehicle").keypress(function (e) {
     //if the letter is not digit then display error and don't type anything
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
        //display error message
        $("#errmsg3").html("Digits Only").show().fadeOut("slow");
               return false;
    }
   });
});
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
$(document).ready(function(){
    $("#customerName").keypress(function(event){
        var inputValue = event.charCode;
        if(!(inputValue >= 65 && inputValue <= 122) && (inputValue != 32 && inputValue != 0)){
            event.preventDefault();
        }
    });
});
</script>



<script type = "text/javascript">
function disableDrop1(){
     if(myform.area.options[0].selected){
    	 myform.outarea.disabled = false;
     }
     else{
    	 myform.outarea.disabled = true;
     }
}
</script>
<script type = "text/javascript">
function disableDrop2(){
     if(myform.outarea.options[0].selected){
    	 myform.area.disabled = false;
     }
     else{
    	 myform.area.disabled = true;
     }
}
</script>
<script type="text/javascript">
function demo()
{
	disableDrop1();
	javascript:populateDropDown(this);
	}

</script>


</body>
</html>