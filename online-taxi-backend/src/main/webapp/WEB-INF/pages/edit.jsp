<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="updated" method="POST">

<input type="hidden" class="form-control" value="${books.tripId}" id="tripId" name="tripId">
    <label for="bookname">driver no.</label>
    <input type="text" class="form-control" value="${books.driverno}" id="bookname" name="driverno">
    <label for="author">vehicle no</label>
    <input type="text" class="form-control" value="${books.vehicleno}" id="author" name="vehicleno">
    <label for="purchaseDate">status</label>
    <input type="text" class="form-control" value="${books.status}" id="purchaseDate" name="status">
    
  <button type="submit" class="btn btn-default">Submit</button>
</form>

</body>
</html>