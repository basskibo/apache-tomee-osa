<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="./urediProizvodjace.css" rel="stylesheet" type="text/css" />
	<title>Uredi Proizvodjace</title>
</head>
<body>
<section id="header">
			<div id="headerUp">
				<div id="naslov">
					<h1>Dodavanje i Pregled Proizvodjaca</h1>
					
				</div>
				<!-- naslov -->
			<c:if test="${sessionScope.admin!=null}">
				                		<p id="welcome"> Hi,<span id="adminNameSpan"> ${sessionScope.adminName}</span></p>
				                	
				         </c:if>
						<c:if test="${sessionScope.administrator==true || sessionScope.moderator==true}">
				                <td> <a href="./LogoutController" id="odjava">Log out</a> </td>
						</c:if>
				
			</div>	
			<!-- headerUp -->
			<div id="navigacija">
				<table id="navigacijaTable">
					<tr>
						<c:if test="${sessionScope.administrator == null && sessionScope.moderator== null}">	
								<td><a href="./ReadControllerAutomobili">Automobili</a></td>
								<td><a href="./PrepareReadControllerProizvodjac">Proizvodjaci</a></td>
						
						</c:if>
				
						
					
						<c:if test="${sessionScope.administrator == null && sessionScope.moderator== null}">	
							<td><a href="./login.jsp">Log in</a></td>
						</c:if>
						<c:if test="${sessionScope.administrator==true}">
						<div id="buttonsAdmin">
							<ul>
								
								<td><li><a href="./PrepareCreateControllAutomobil" class="tdli" >Automobili</a></li></td>
								<td><li><a href="./PrepareCreateControllerProizvodjac"  class="tdli">Proizvodjaci</a></li></td>
								<td><li><a href="./PrepareCreateControllerKorisnik" class="tdli">Korisnici</a></li></td>
								
								<td><li><a href="./PrepereUpdateControllerKorisnik" class="tdli">Promeni podatke</a></li></td>
								<td><li><a href="./PrepareUpdateKorisnikLozinka" class="tdli">Promeni lozinku</a></li></td>
							
							</ul>
						</div>
					</c:if>
					
				
					<c:if test="${sessionScope.moderator==true}">
						<div id="buttons">
							<ul id = "adminUl">
								<td><li><a href="./PrepareCreateControllAutomobil" class="tdli" >Automobili</a></li></td>
								<td><li><a href="./ReadControllerModeli" class="tdli" >Modeli</a></li></td>		
								<td><li><a href="./PrepereUpdateControllerKorisnik" class="tdli">Promeni podatke</a></li></td>
								<td><li><a href="./PrepareUpdateKorisnikLozinka" class="tdli">Promeni lozinku</a></li></td>
							</ul>
						</div>
					</c:if>
					</td>
					
					</tr>
				</table>
			</div>
			<!-- navigacija -->
		</section>




	<div id= "formaZaRegistraciju">
	<form action="./CreateControllerProizvodjac" method="post" accept-charset="ISO-8859-1">
		<table id="formaTabela">
			<tr>
				<td> <p>Naziv:</p> <input type="text" style="height:20px" id="naziv" name= "naziv"> </td>
		</table>	
	<button id="dodaj" type="submit" style="width:120px">Dodaj</button>
	</form>
	</div>
	<!-- formaZaRegistraciju -->
	
	<div id="listaProizvodjaca">
		<table id="listaProizvodjacaT">
				<c:set var="i" value="0"/>
					<tr>		
						<td></td>
						<td class="naslov">Naziv</td>
					</tr>
					<tr>
					<c:forEach items = "${proizvodjaci}" var = "proizvodjac">
						<c:set var="i" value="${i+1}"/>
						<td><c:out value="${i}"/>.</td>
						<td class="tabela">${proizvodjac.nazivProizvodjaca}</td>
						</tr>
					</c:forEach>
				</table>
	</div>
	<!-- listaKorisnika -->
</body>
</html>