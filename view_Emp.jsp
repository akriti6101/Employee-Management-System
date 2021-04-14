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
<script type="text/javascript">
function check()
{
	if(document.getElementById('emp8_id').value=='')
		{alert("Enter Employee ID");
		window.location.replace("view_Emp.jsp");
		 return false;
		}
		
		}
</script>
</head>
<body>
<div style="position :absolute;top:100px;left:200px;width:300px;height:200px;background-color:#150e56;border-color:black;
	border-radius:16px;
	border-width:2px;">
	<br/><br/>
	<div style="margin-left:25px;color:white;">
	<form action="show.jsp" onsubmit="return check()" method="post">
 Employee ID:<input type="text" id="emp8_id" name="emp_id"  placeholder="Enter Employee ID" style="margin-left:15px;"></div>
 <br/>
 <button type="submit" class="login" style="margin-left:55px;">SEARCH</button>  </form>
 <form action="home.jsp" style="position:absolute;top:114px;left:170px;">
   <button type="submit" class="cancel">CANCEL</button> </form>
 
 
</div>

</body>
</html>