<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<jsp:useBean id="ebooks" type="java.util.List" scope="request"></jsp:useBean>

<fmt:setBundle basename="messages.messages"/>

<html>
	<head>
		<title>Lista vozila</title>
		<link href="./listEbooks.css" rel="stylesheet" type="text/css" />
		<link href="./bootstrap.css" rel="stylesheet" type="text/css" />
		
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
		<meta HTTP-EQUIV="Expires" CONTENT="-1">
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
		
		
		
		
					  <!-- Main jumbotron for a primary marketing message or call to action -->

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <h2>Log in</h2>
          <p id="printNameP">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="./login.jsp" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
       </div>
        <div class="col-md-4">
          <h2>Heading</h2>
          <p id="printNameP">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div>
      </div>
			<!-- navigacija -->
		</div>
		
		
		
		<%-- 
			<div id="filtriranje">
			<select size="1" name="proizvodjacId">
				<c:forEach items="${proizvodjaci}" var="proizvodjac">
					<option value="${proizvodjac.nazivProizvodjaca}">${proizvodjac.nazivProizvodjaca}</option>
				</c:forEach>
			</select> --%>
		</div>
		<!-- filtriranje -->
		
		<div id="body">
			<table id="listaVozila">
					
					<tr>		
						<td class="naslov">Title</td>
						<td class="naslov">Author</td>
						<td class="naslov">Publication year </td>
						
					</tr>
				
					<c:forEach items = "${ebooks}" var = "ebook">
						<tr>
							 <div class="col-md-4">
         								<td class="tabela">${ebook.title}</td>
										<td class="tabela">${ebook.author}</td>
										<td class="tabela">${ebook.year}</td>
										
       						 </div>
						
							
						
						</tr>
						
						</c:forEach>	
					
					
				</table>
			<!-- listaVozila -->
		</div>
		<!-- body -->
	</body>
</html>