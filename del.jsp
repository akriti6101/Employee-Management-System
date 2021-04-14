<%@page import="Employee.Bean.*" %>
<%@ page import="Employee.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management System</title>
</head>
<body>
<%
int t=0;EmployeeDemo demo=new EmployeeDemo();
String id=request.getParameter("emp2_id");
 t=demo.DelList(id);
if(t==1){

%>
<script type="text/javascript">

	alert("Employee Data Deleted!!!");
	window.location.replace("home.jsp");
</script>
<%} else{%>
<script type="text/javascript">
alert("Invalid Employee ID");
window.location.replace("home.jsp");
</script>
<% }%>

</body>
</html>