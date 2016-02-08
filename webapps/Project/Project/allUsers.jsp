<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="korisnici" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./allUsers.css" rel="stylesheet" type="text/css" />
	<title>Register</title>
</head>
<body>
	<a href="./LogoutController" id="odjava">Odjava</a>
	<div id="listaKorisnika">
		<table id="listaTable">
			<c:set var="count" value="0" scope="page"/>	
					<tr>		
						<td></td>
						<td style="color: teal">Ime</td>
						<td style="color: teal">Prezime</td>
						
						<td style="color: teal">Tip korisnika</td>
					</tr>
					<c:forEach items = "${korisnici}" var = "korisnik">
					<tr>
						<c:set var="count" value="${count + 1}" scope="page"/>
						<td><c:out value="${count}" />.</td>
						<td>${korisnik.imeKorisnika}</td>
						<td>${korisnik.prezimeKorisnika}</td>
						
						<td>${korisnik.tipKorisnika}</td>
						<td><a href="./DeleteControllerKorisnik?korisnikId=${korisnik.id}">Ukloni</a></td>
					</tr>
				</c:forEach>
		</table>
	</div>
	<!-- listaKorisnika -->
</body>
</html>