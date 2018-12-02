<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page isELIgnored="false" %>
    
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Clients</title>
</head>
<body>
<h1>Application List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Loan_Id</th><th>User_Id</th><th>Loan_Amount</th><th>Tenure</th><th>Interest_Rate</th><th>Status</th><th>Check</th></tr>  
   <c:forEach var="vc" items="${list}">   
   <tr>  
   <td>${vc.loanId}</td>  
   <td>${vc.userId}</td>  
   <td>${vc.loanAmount}</td>  
   <td>${vc.tenure}</td>  
   <td>${vc.interestRate}</td>  
   <td>${vc.status}</td> 
    <td><a href="editclient/${vc.userId}">View</a></td>
    <td><a href="clientupdate/${vc.userId}">Approve</a></td>    
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
  
</body>
</html>