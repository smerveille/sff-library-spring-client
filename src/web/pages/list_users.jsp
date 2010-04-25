<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>User Manager : Liste des utilisateurs</title>
    </head>
 
    <body>
		<a href="<%=request.getContextPath()%>">Retour &agrave; la page d'accueil</a></br>
 
	    <h1>Liste des utilisateurs</h1>
 
		<table>
			<tr>
				<th>Nom</th>
				<th>Pr&eacute;nom</th>
				<th>Email</th>
			</tr>
		<c:forEach items = "${users}" var="contact">
			<tr>
				<td><c:out value="${user.lastName}"/></td>
				<td><c:out value="${user.firstName}"/></td>
				<td><c:out value="${user.email}"/></td>
			</tr>
    	</c:forEach>
		</table>
 
    </body>
</html>