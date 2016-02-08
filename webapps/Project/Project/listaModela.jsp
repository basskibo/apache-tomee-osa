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

	<section id="header">
			<div id="headerUp">
				<div id="naslov">
					<h1>Lista Modela</h1>
					
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
		<div id="body">
			<table id="listaProizvodjaca">
					<c:set var="i" value="0"/>
					<tr>		
						<td></td>
						<td class="naslov">Proizvodjac</td>
						<td class="naslov">Model</td>
						
					</tr>
					<c:forEach items = "${modeli}" var = "model">
										<tr>
					
						<c:set var="i" value="${i+1}"/>
						<td><c:out value="${i}"/>.</td>
						<td class="tabela">${model.proizvodjac.nazivProizvodjaca}</td>
						<td class="tabela">${model.naziv}</td>
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