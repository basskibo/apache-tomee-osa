<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>


<jsp:useBean id="automobil" type="rs.ac.uns.ftn.informatika.RS13.IspitniProjekat.server.entity.Automobil" scope="request"></jsp:useBean>
<jsp:useBean id="modeli" type="java.util.List" scope="request"/>
<jsp:useBean id="proizvodjaci" type="java.util.List" scope="request"/>

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
		<form action="./UpdateControllerAutomobili" method="post" accept-charset="ISO-8859-1">
		<table id="promenaPodatakaTabela">
				<tr>				
				<td><p> Proizvodjac:</p> <p type="text" name="proizvodjac" value="${proizvodjac.prizvodjacID }" readonly="readonly"> ${automobil.proizvodjac.nazivProizvodjaca}</td>

					<td>  <p> Model: </p>
						<select size="1" name="model">
							<c:forEach items="${modeli}" var="model">
								<c:if test="${model.proizvodjac == proizvodjac.prizvodjacID}">
									<option>jeste </option>
								</c:if>
							</c:forEach>
							<option>nije</option>
							
						</select>
					</td>
				</tr>
				<tr>					
					<td><p> Kilometraza:</p> <input type="text" name="kilometraza" value="${automobil.kilometraza}"></td>
					<td> <p> Godina proizvodnje: </p><input type="text" name="godinaProizvodnje" value="${automobil.godinaProizvodnje}"></td>
				</tr>
				
				<tr>
					<td> <p> Snaga: </p><input type="text" name="snaga" value="${automobil.snaga}"></td>
					<td> <p> Gorivo: </p><input type="text" name="gorivo" value="${automobil.gorivo}"></td>
				</tr>

				<tr>
					<td> <p> Oprema: </p><input type="text" name="oprema" value="${automobil.oprema}"></td>
					<td> <p> Menjac: </p><input type="text" name="menjac" value="${automobil.menjac}"></td>
				</tr>
				<tr>
					<td> <p> Kubikaza: </p><input type="text" name="kubikaza" value="${automobil.kubikaza}"></td>
					<td> <p> Opis: </p><input type="text" name="opis" value="${automobil.opisVOzila}"></td>
				</tr>
				<tr>
					<td> <p> Mesto: </p><input type="text" name="mesto" value="${automobil.mesto}"></td>
					<td> <p> Kontakt: </p><input type="text" name="kontakt" value="${automobil.kontakt}"></td>
				</tr>
				<tr>
					<td><button type="submit" id="potvrdi">OK</button></td>
					<td><input type="hidden" name="id" value="${automobil.id}"></td>
				</tr>
		</table>
		</form>	
	</div>
	<!-- container -->
</body>
</html>