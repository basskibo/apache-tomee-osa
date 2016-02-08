<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./izmenaLicnihPodataka.css" rel="stylesheet" type="text/css" />
<title>Izmena podataka</title>
</head>
<body>
	<a href="./LogoutController" id="odjava">Odjava</a>
	<div id="container">
	<form action="./UpdateControllerKorisnik" method="post" accept-charset="ISO-8859-1">
		<table id="promenaPodatakaTabela">
				<tr>
					<td> <p> Ime: </p> </td>
					<td> <input type="text" name="ime" value="${sessionScope.admin.imeKorisnika}" maxlength="10"></td>
				</tr>
				<tr>
					<td> <p> Prezime: </p> </td>
					<td> <input type="text" name="prezime" value="${sessionScope.admin.prezimeKorisnika}"></td>
				</tr>
				<tr>
					<td> <p> Korisnicko ime: </p> </td>
					<td> <input type="text" name="korIme" value="${sessionScope.admin.korisnickoImeKorisnika}"></td>
				</tr>
				<tr>
					<td><a href="./PrepareUpdateKorisnikLozinka">Izmeni lozinku</a></td>
				</tr>
				<tr>
					<td><button type="submit" id="potvrdi">Potvrdi</button></td>
					<td><input type="hidden" name="id" value="${sessionScope.admin.id}"></td>
				</tr>
		</table>
		</form>
	</div>
	

</body>
</html>