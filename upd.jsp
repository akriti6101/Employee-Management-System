<%@page import="Employee.Bean.*" %>
<%@ page import="Employee.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Employee Management System</title>
</head>
<body>
<%EmployeeDemo demo=new EmployeeDemo();
Employee e=demo.getList(request.getParameter("emp3_id"));
if(e.getName()==null)
{	 
%>
<script type="text/javascript">alert("Invalid Employee ID");
window.location.replace("update_emp.jsp");
</script>
<%} %>
<div class="data">

<form  action="upd_data.jsp" method="post">
<div class="add_left">
 <h4>Name :<input type="text" name="Name" id="name" pattern="[A-Z a-z \s]+" required/><h4/>
 <h4>Age :<input type="text" name="Age" id="age" pattern="[0-9]+" required/></h4>
  <h4>Address :<input type="text" name="Address" id="address" pattern="[A-Z a-z 0-9 \s]+" required/><h4/>
  <h4>Email :<input type="text" name="Email" id="email" pattern="[a-z - .0-9\s]+[@][a-z]+[.][a-z]+" required/><h4/>
  <h4> Job Post :<input type="text"name="Job" id="job"pattern="[A-Z a-z \s]+" required/><h4/>
    <h4>Employee ID :<input type="text"  id="emp4_id"name="id" pattern="[A-Z a-z 0-9\s]+" required/><h4/>
    </div>
    
    <div class="add_right">
    
     <h4>Father's Name :<input id="father"type="text" name="father" pattern="[A-Z a-z \s]+" required/><h4/>
     <h4> D.O.B :<input type="text" id="dob"name="dob" pattern="[0-9 '/']+" required/><h4/>
       <h4>Phone Number :<input id="phone" name="phone"type="text"  pattern="[7-9][0-9]{9}" required/><h4/>
        <h4>Education :<input id="edu" name="edu" type="text"  pattern="[A-Z a-z 0-9 \s]+" required/><h4/>
        <h4> Aadhar Number :<input id="aadhar" name="aadhar" type="text" pattern="[0-9]+" required/><h4/>

   </div>

  <button type="submit" class="add_btn">Update Employee</button></form></div>
  <form action="home.jsp">
    <button type="submit" class="cancel_btn" onsubmit="cancel()" >Cancel</button>
  </form>

<script type="text/javascript">


 document.getElementById("name").value="<%=e.getName()%>";
 document.getElementById("age").value="<%=e.getAge()%>";
 document.getElementById("address").value="<%=e.getAddress()%>";
 document.getElementById("email").value="<%=e.getEmail_id()%>";
 
 document.getElementById("job").value="<%=e.getJob_post()%>";
 document.getElementById("emp4_id").value="<%=e.getEmployee_id()%>";
 document.getElementById("father").value="<%=e.getFather_Name()%>";
 document.getElementById("dob").value="<%=e.getDob()%>";
 
 document.getElementById("phone").value="<%=e.getPhoneNumber()%>";
 document.getElementById("edu").value="<%=e.getEducation()%>";
 document.getElementById("aadhar").value="<%=e.getAadhar_No()%>";
</script>






















</body>
</html>