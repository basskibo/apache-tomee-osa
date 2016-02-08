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
		<form action="./UpdateKorisnikLozinka" method="post" accept-charset="ISO-8859-1">
		<table id="promenaPodatakaTabela">
				<tr>
					<td> <p> Unesite trenutnu lozinku: </p> </td>
					<td> <input type="password" name="lozinka"></td>
				</tr>
				<tr>
					<td> <p> Unesite novu lozinku: </p> </td>
					<td> <input type="password" name="novaLozinka"></td>
				</tr>
				<tr>
					<td> <p>  Ponovite novu lozinku: </p> </td>
					<td> <input type="password" name="novaLozinkaPonovo"></td>
				</tr>
				<tr>
					<td><button type="submit" id="potvrdi">Potvrdi</button></td>
					<td><input type="hidden" name="id" value="${sessionScope.admin.id}"></td>
					<td><input type="hidden" name="tLozinka" value="${sessionScope.admin.lozinkaKorisnika}"></td>
				</tr>
		</table>
		</form>
	</div>
	

</body>
</html>