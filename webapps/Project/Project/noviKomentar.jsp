<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unos komentara</title>
</head>
<body>
		<div >
					<form action="./CreateControllerKomentar" method="post" accept-charset="ISO-8859-1">
				    	 <table id="LogInTable">
				        	<tr>
				        		<c:if test="${sessionScope.admin ==null}">
				                	<td> <input type="text" style="height:20px" id="username" name= "username" placeholder=" username" > </td>
				                	<td> <input type="password" style="height:20px" id="pass" name="pass" placeholder=" pass" > </td>
				                	<td id="submit"> <button id="submit" type="submit" style="width:90px">Uloguj se</button></td>
				                	
				                </c:if>
				            </tr>
				        </table>
			        </form>
			        
				</div>



</body>
</html>