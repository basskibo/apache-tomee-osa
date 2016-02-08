<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="automobili" type="java.util.List" scope="request"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./urediAutomobile.css" rel="stylesheet" type="text/css" />
<title>Izmena podataka</title>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="./index.jsp">E-Book shop</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
       
         <form class="navbar-form navbar-left">
         
          
          	 <!-- meni kada korisnik nije ulogovan -->
	         <c:if test="${sessionScope.administrator == null && sessionScope.moderator== null}">	
									<td><a class="dugme" href="./ReadControllerAutomobili">Ebooks</a></td>
									<td><a class="dugme" href="./PrepareReadControllerProizvodjac">Category</a></td>
									
									
								
			</c:if>
			
			<!-- Meni kada je korisnik ulogovan kao ADMIN -->
			<c:if test="${sessionScope.administrator==true}">	
								<a class="dugme" href="./PrepareCreateControllAutomobil" class="tdli" >Ebooks</a>
								<a class="dugme" href="./PrepareCreateControllerProizvodjac"  class="tdli">Category</a>
								<a class="dugme" href="./PrepareCreateControllerKorisnik" class="tdli">Users</a>
								<a class="dugme" href="./PrepereUpdateControllerKorisnik" class="tdli">Change data</a>
								<a class="dugme" href="./PrepareUpdateKorisnikLozinka" class="tdli">Change Password</a>
									
			</c:if>
			
			<!-- Meni kada je korisnik ulogovan kao MODERATOR -->
			<c:if test="${sessionScope.moderator==true}">
							<!-- 	<a href="./PrepareCreateControllAutomobil" class="dugme" >Ebooks</a> -->
								<a href="./ReadControllerModeli" class="dugme" >Category</a>		
								<a href="./PrepereUpdateControllerKorisnik" class="dugme">Change data</a>
								<a href="./PrepareUpdateKorisnikLozinka" class="dugme">Change Password</a>
			</c:if>
			
			
			
			
         
         </form>
        
        
          <form class="navbar-form navbar-right">
	            <c:if test="${sessionScope.admin!=null}">
					    <p id="printName"> ${sessionScope.adminName}</p>        	
				</c:if>
				<c:if test="${sessionScope.administrator == null && sessionScope.moderator == null }"> 
						<a class="dugme" href="./login.jsp">Sign in</a>
				
				</c:if>
				<c:if test="${sessionScope.administrator==true || sessionScope.moderator==true}">
				           			<td> <a class="dugme" href="./LogoutController">Log out</a> </td>
				</c:if>	
					
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
	

<%-- 		<form action="./CreateControllerAutomobil" method="post" accept-charset="ISO-8859-1">
		<table id="promenaPodatakaTabela">
				<tr>		
						
					<td> <p>Proizvodjaci:</p>		
					<select size="1" name="proizvodjac">
						<c:forEach items="${proizvodjaci}" var="proizvodjac">
							<option value="${proizvodjac.prizvodjacID}">${proizvodjac.nazivProizvodjaca}</option>
						</c:forEach>
					</select>
					</td>
					
					<td>  <p> Model: </p>
						<select size="1" name="model">
							<c:forEach items="${modeli}" var="model">
							<c:forEach items="${proizvodjaci}" var="proizvodjac">
								<c:if test="${model.proizvodjac.prizvodjacID == proizvodjac.prizvodjacID }">
									<option value="${model.modelID}">${model.naziv}</option>
								</c:if>
						
							</c:forEach>
							</c:forEach>
						</select>
					</td>
					
					<td><p> Menjac: </p>
					<select size="1" name="menjac">
						<option value="Manuelni">Manuelni</option>
						<option value="Automatski">Automatski</option>
					</select>
					</td>
					
				</tr>
				<tr>					
					<td><p> Kilometraza:</p> <input type="text" name="kilometraza"></td>
					<td> <p> Godina proizvodnje: </p><input type="text" name="godinaProizvodnje"></td>
					<td> <p> Snaga: </p><input type="text" name="snaga"></td>
					
				</tr>
				
				<tr>
					<td> <p> Gorivo: </p><input type="text" name="gorivo"></td>
					<td> <p> Oprema: </p><input type="text" name="oprema"></td>
					<td> <p> Kubikaza: </p><input type="text" name="kubikaza"></td>
					
				</tr>

				
				<tr>
					<td> <p> Opis: </p><input type="text" name="opis"></td>
					<td> <p> Mesto: </p><input type="text" name="mesto"></td>
					<td> <p> Kontakt: </p><input type="text" name="kontakt"></td>
					
				</tr>
				
				<tr>
					<td><button type="submit" id="potvrdi">OK</button></td>
				</tr>
		</table>
		</form>	 --%>
	<!-- container -->
	<div id="body">
			<table id="listaVozila">
					<c:set var="i" value="0"/>
					<tr>		
						<td class="naslov">Proizvodjac</td>
						<td class="naslov">Model</td>
						<td class="naslov">Gorivo</td>
						<td class="naslov">Kubikaza</td>
						<td class="naslov">Kilometraza</td>
						<td class="naslov">Snaga</td>
						<td class="naslov">Mesto</td>
						
					</tr>
					<tr>
					<c:forEach items = "${ebooks}" var = "ebook">
						
						<td class="tabela">${ebook.title}</td>
						<td class="tabela">${ebook.author}</td>
						
		<%-- 				
						<td><a href="./PrepareUpdateControllAutomobili?automobilId=${automobil.id}">Izmeni</a></td>
			
						<td><a href="./DeleteControllerAutomobili?automobilId=${automobil.id}">Ukloni</a></td> --%>
						
						
					</c:forEach>
					</tr>
				</table>
			<!-- listaVozila -->
		</div>
</body>
</html>