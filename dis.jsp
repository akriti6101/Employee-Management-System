<%@ page import="Employee.Bean.*" %>
<%@ page import="Employee.Demo.*" %>

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

<% Employee e=new Employee();
   EmployeeDemo demo=new EmployeeDemo();
   e.setName(request.getParameter("Name"));
   e.setAge(request.getParameter("Age"));
   e.setAddress(request.getParameter("Address"));
   e.setEmail_id(request.getParameter("Email"));
   e.setJob_post(request.getParameter("Job"));
   e.setEmployee_id(request.getParameter("id"));
   e.setFather_Name(request.getParameter("father"));
   e.setDob(request.getParameter("dob"));
   e.setPhoneNumber(request.getParameter("phone"));
   e.setEducation(request.getParameter("edu"));
   e.setAadhar_No(request.getParameter("aadhar"));
   
   int r=demo.setData(e);
  if(r==1){ 
%>
<script type="text/javascript">

	    alert("Employee data registered Successfully!!!!");
	    window.location.replace("home.jsp");




<%} else{%>
 alert("Employee not added!!");
<%} %>
</script>
</body>
</html>