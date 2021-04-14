<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
<link rel="stylesheet" href="style.css">

</head>
<body>
<div class="data">

<form  action="dis.jsp" method="post">
<div class="add_left">
 <h4>Name :<input type="text" name="Name" placeholder="Enter name" pattern="[A-Z a-z \s]+" required/><h4/>
 <h4>Age :<input type="text" name="Age"placeholder="Enter age" pattern="[0-9]+" required/></h4>
  <h4>Address :<input type="text" name="Address" placeholder="Enter Address" pattern="[A-Z a-z 0-9 , - \s]+" required/><h4/>
  <h4>Email :<input type="text" name="Email" placeholder="Enter email" pattern="[a-z - .0-9\s]+[@][a-z]+[.][a-z]+" required/><h4/>
  <h4> Job Post :<input type="text"name="Job" placeholder="Enter Job post" pattern="[A-Z a-z \s]+" required/><h4/>
    <h4>Employee ID :<input type="text"  name="id"placeholder="Enter employee Id" pattern="[A-Z a-z 0-9\s]+" required/><h4/>
    </div>
    
    <div class="add_right">
    
     <h4>Father's Name :<input type="text" name="father"placeholder="Enter Father's name" pattern="[A-Z a-z \s]+" required/><h4/>
     <h4> D.O.B :<input type="text" name="dob"placeholder="Enter dob" pattern="[0-9 '/']+" required/><h4/>
       <h4>Phone Number :<input name="phone"type="text" placeholder="Enter Phone No." pattern="[7-9][0-9]{9}" required/><h4/>
        <h4>Education :<input name="edu" type="text" placeholder="Enter education" pattern="[A-Z a-z 0-9 \s]+" required/><h4/>
        <h4> Aadhar Number :<input name="aadhar" type="text" placeholder="Enter aadhar no." pattern="[0-9]+" required/><h4/>

   </div>

  <button type="submit" class="add_btn">Add Employee</button></form></div>
  <form action="home.jsp">
    <button type="submit" class="cancel_btn" onsubmit="cancel()" >Cancel</button>
  </form>
  

</body>
</html>