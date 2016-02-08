<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="modeli" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./listaProizvodjaca.css" rel="stylesheet" type="text/css" />
<title>Lista Modela Automobila</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<h1>Lista modela</h1>
		</div>
		<!-- header -->
		
		<div id="body">
			<table id="listaProizvodjaca">
					
					<tr>		
						<td>Proizvodjac</td>
						<td>Model</td>
						
					</tr>
					<c:forEach items ="${modeli}" var = "model">
						<tr>
						
							<td>${model.proizvodjac.nazivProizvodjaca}</td>
							<td>${model.naziv}</td>
						</tr>
					</c:forEach>
						
					
				</table>
			<!-- listaVozila -->
		</div>
		<!-- body -->
	</div>
	<!-- container -->
</body>
</html>