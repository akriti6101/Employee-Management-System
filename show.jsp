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
<form action="home.jsp">
<button type="submit">BACK</button></form>
<%
EmployeeDemo demo =new EmployeeDemo();
String id=request.getParameter("emp_id");
Employee e=demo.getList(id);
if(e.getName()!=null){%>

<div style="position:absolute;top:50px;left:100px;">
<table>
<tr>

<th>Name</th>
<td><%=e.getName() %></td>
</tr>
<tr>

<th>Age</th>
<td><%=e.getAge() %></td>
</tr>
<tr>

<th>Address</th>
<td><%=e.getAddress() %></td>
</tr>
<th>Email ID</th>
<td><%=e.getEmail_id() %></td>
</tr>
<th>Job Post</th>
<td><%=e.getJob_post() %></td>
</tr>
<th>Employee ID</th>
<td><%=e.getEmployee_id() %></td>
</tr>
<th>Father's Name</th>
<td><%=e.getFather_Name() %></td>
</tr>
<th>Date Of Birth</th>
<td><%=e.getDob() %></td>
</tr>
<th>Phone Number</th>
<td><%=e.getPhoneNumber() %></td>
</tr>
<th>Education</th>
<td><%=e.getEducation() %></td>
</tr>
<th>Aadhar No</th>
<td><%=e.getAadhar_No() %></td>
</tr>

</table>
</div>
<%} else{%>
 <script type="text/javascript">
 alert("Employee with this id does not exist!!");
 window.location.replace("home.jsp");</script>
 <% }%>


</body>
</html>