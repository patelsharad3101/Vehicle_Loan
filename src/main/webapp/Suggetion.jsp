<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <style>
body {
   font-family: Arial, Helvetica, sans-serif;
    background-color: teal;
    width:80%;
    padding:100px;
    margin: auto;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style> -->
</head>
<body>

<h2 style="color: white">Suggetion Form</h2>

<div class="container">
  <form action="suggetion" method="post">
   <label><i class="fa fa-user" aria-hidden="true"></i> Name:</label>
   <input type="text" id="name" name="name" placeholder="Enter Full Name" required><br>

   <!--  <label for="email">Email Id</label>
        <input type="email" id="email" name="email" placeholder="Your email id..">
    
    <label for="mobile">Mobile No</label>
    <input type="number" id="mobile" name="mobile" placeholder="Your lMobile Number..">
     -->
<label><i class="fa fa-phone" aria-hidden="true"></i> Mobile No</label><br>
    <input type="text" pattern="[6-9]{1}[0-9]{9}" title="Please enter a valid mobile number"maxlength="10" id="mobile" name="mobile" placeholder="Enter Mobile No:" required><br><br>

<label><i class="fa fa-envelope" aria-hidden="true"></i> Email ID</label>
    <input type="text" id="email" name="email" placeholder="Enter Email ID" pattern="[a-zA-Z]{1}[a-zA-Z0-9._%+-]+@[a-z.-]+\.[a-z]{2,3}$" required><br>
<hr>
    <label for="suggetion">Suggetion</label>
    <textarea id="suggetion" name="suggetion" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>