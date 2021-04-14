<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function check()
{
	if(document.getElementById('emp3_id').value=='')
		{alert("Enter Employee ID");
		window.location.replace("update_emp.jsp");
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
	<form action="upd.jsp"  method="post" onsubmit="return check()">
 Employee ID:<input type="text" id="emp3_id" name="emp3_id"  placeholder="Enter Employee ID" style="margin-left:15px;"></div>
 <br/>
 <button type="submit" class="login" style="margin-top:40px;margin-left:55px;">UPDATE</button>  </form>
 <form action="home.jsp" style="position:absolute;top:114px;left:170px;">
   <button type="submit" class="cancel">CANCEL</button> </form>
 
 
</div>



</body>
</html>