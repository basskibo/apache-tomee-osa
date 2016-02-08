<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in HERE</title>
	<link href="./login.css" rel="stylesheet" type="text/css" />
	<link href="./bootstrap.css" rel="stylesheet" type="text/css" />

</head>
<body>

	
			<c:if test="true">
				<nav class="navbar navbar-inverse navbar-fixed-top">
			
					<form class="navbar-form navbar-right" action="./LoginController" method="post" accept-charset="ISO-8859-1">
				        		<c:if test="${sessionScope.admin ==null}">
				        			<h2>Please Sign in</h2>
				        		
				                	<div class="input-group">
					    				<span class="input-group-addon">Username</span>
					    				<input type="text" class="form-control" id="username" name="username">
				  					</div>
				  					<div class="input-group">
					    				<span  class="input-group-addon">Password</span>
					    				<input type="password"  id="userPassword" name= "userPassword"  class="form-control" >
				  					</div>
				  
								                	<button id="submit" type="submit" class="btn-success" style="width:90px">Submit</button>
				                	
				                	
				                	
				                	
				                </c:if>
			        </form>
			    </nav>
			</c:if>
			        
		
				
				
				
				
</body>
</html>