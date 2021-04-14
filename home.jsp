<%@ page import="java.lang.*" %>
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


<div class="home">
   <img src="emp.png">
<form class="form1" action="view_Emp.jsp"><button>View Employees</button>
</form>
<form class="form2" action="update_emp.jsp"><button>Update Employee</button>
</form>
<form class="form3" action="del_emp.jsp"><button>Delete Employee</button>
</form>
<form class="form4" action="add_emp.jsp"><button>Add Employee</button>
</form>
   
</div>

</body>
</html>