<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Details</title>
</head>
<body>
<h1>Client Details</h1>  
<table border="2" width="70%" cellpadding="2" align="left">
  <c:forEach var="emp" items="${list}">   
<tr>
<th>User Id</th><td>${emp.userId}</td>  </tr>
<tr>
<th>Name</th><td>${emp.name}</td>  </tr>
<tr>
<th>Gender</th><td>${emp.gender}</td>  </tr>
<tr>
<th>Age</th><td>${emp.age}</td>  </tr>
<tr>
<th>Mobile</th><td>${emp.mobile}</td>  </tr>
<tr>
<th>Email</th><td>${emp.email}</td>  </tr>
<tr>
<th>Password</th><td>${emp.password}</td>  </tr>
<tr>
<th>Address</th><td>${emp.address}</td>  </tr>
<tr>
<th>State</th><td>${emp.state}</td>  </tr>
<tr>
<th>City</th><td>${emp.city}</td>  </tr>
<tr>
<th>Pincode</th><td>${emp.pincode}</td>  </tr>
<tr>
<th>Car Make</th><td>${emp.carMake}</td>  </tr>
<tr>
<th>Car Model</th><td>${emp.carModel}</td>  </tr>
<tr>
<th>Ex Showroom Price</th><td>${emp.exShowroomPrice}</td>  </tr>
<tr>
<th> Type Of Employment</th><td>${emp.typeOfEmployment}</td>  </tr>
<tr>
<th>Annual Income</th><td>${emp.annualIncome}</td>  </tr>
<tr>
<th>Existing Emi</th><td>${emp.existingEmi}</td>  </tr>
<tr>
<th>LoanId</th><td>${emp.loanId}</td>  </tr>
<tr>
<th> Loan Amount</th><td>${emp.loanAmount}</td>  </tr>
<tr>
<th>Tenure</th><td>${emp.tenure}</td>  </tr>
<tr>
<th>Interest Rate</th><td>${emp.interestRate}</td>  </tr>
<tr>
<th>Status</th><td>${emp.status}</td>  </tr>

 <form method="POST" action="clientupdate">    

<tr>
<th>User Id</th><td><input type="number" id="userId" name="userId"></td>  </tr>
<tr>
<th>Set Status</th><td><input type="text" id="status" name="status"></td>  </tr>

 <tr>    
          <td> </td>    
          <td><input type="submit" value="Update Client" /></td>    
         </tr>  

   </c:forEach> 
      </form> 
   </table>  
   <br>  
<%--  
   <a href="approveApplication/${emp.userId }">Approve</a> --%>
</body>
</html>