<%@ page isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<fmt:setBundle basename="messages.messages"/>

<html>
	<head>
		<title><fmt:message key="greskaNaslov"/></title>
		<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
		<meta HTTP-EQUIV="Expires" CONTENT="-1">
		<link href="./theme.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<h1><fmt:message key="greskaNaslov"/></h1>
		<h2><fmt:message key="tekstGreske"/>:</h2>
		<textarea rows="15" cols="80" >${pageContext.errorData.throwable}:
		<c:forEach var="stackTraceElement" items="${pageContext.errorData.throwable.stackTrace}">
			${stackTraceElement}
		</c:forEach> 		
		</textarea>
	</body>
</html>	