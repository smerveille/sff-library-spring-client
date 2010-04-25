<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
 
	<head>
 
		<title>User Manager : Ajouter un utilisateur</title>
 
	</head>
 
	<body>
 
		<form method="post">
			<table width="100%" background="#87B3FF">
				<tr>
					<td><!-- Titre -->
					<div id="title" align="center">
					<h1>Bienvenue dans le tutorial de Scub Foundation sur Spring MVC</h1>
					</div>
					</td>
				</tr>
				<tr>
					<td align="center">
					<h2>Saisissez un utilisateur</h2>
					<hr>
					</td>
				</tr>
				<tr>
					<td align="center">
					<table>
						<tr>
							<td>Nom</td>
							<td>&nbsp;&nbsp;:&nbsp;&nbsp;</td>
 
							<td><spring:bind path="userCommand.lastName">
								<input id="lastName" type="text" name="lastName" />
							</spring:bind></td>
							<td><form:errors path="lastName" /></td>
						</tr>
						<tr>
							<td>Pr&eacute;nom</td>
							<td>&nbsp;&nbsp;:&nbsp;&nbsp;</td>
 
							<td><spring:bind path="userCommand.firstName">
								<input id="firstName" type="text" name="firstName" />
							</spring:bind></td>
							<td><form:errors path="firstName" /></td>
						</tr>
						<tr>
							<td>Email</td>
							<td>&nbsp;&nbsp;:&nbsp;&nbsp;</td>
 
							<td><spring:bind path="userCommand.email">
								<input id="email" type="text" name="email" />
							</spring:bind></td>
						</tr>
						<tr>
							<td>Login</td>
							<td>&nbsp;&nbsp;:&nbsp;&nbsp;</td>
 
							<td><spring:bind path="userCommand.login">
								<input id="login" type="text" name="login" />
							</spring:bind></td>
						</tr>
						<tr>
							<td>Password</td>
							<td>&nbsp;&nbsp;:&nbsp;&nbsp;</td>
 
							<td><spring:bind path="userCommand.password">
								<input id="password" type="text" name="password" />
							</spring:bind></td>
						</tr>
 
						<tr>
							<td colspan="3" align="right"><input type="submit" value="Enregistrer" /></td>
 
							<td colspan="3" align="right"><input type="submit" name="_cancel" value="Annuler"/></td>
						</tr>
 
					</table>
					</td>
				</tr>
			</table>
		</form>
 
	</body>
 
</html>