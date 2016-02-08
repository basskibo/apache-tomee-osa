<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<h1>Lista svih proizvodjaca</h1>
			
		</div>
		<!-- header -->
		
		<div id="body">
			<table id="listaProizvodjaca">
					<c:set var="i" value="0"/>
					
					<tr>		
						<td></td>
						<td>Naziv</td>
					</tr>
					<tr>
					<c:forEach items = "${korisnici}" var = "korisnik">
						<c:set var="i" value="${i+1}"/>
						<td><c:out value="${i}"/>.</td>
						<td>${korisnik.korisnik_korisnicko_ime}</td>
						<td><a href="./ReadControllerModeli?proizvodjacId=${proizvodjac.prizvodjacID}">Prikaz modela</a></td>
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