<html>
  <head>
    <title>Login</title>
  </head>

  <body onload="document.f.j_username.focus();">
    <h1>Login</h1>

	<P>Valid users:
	<P>
	<P>username <b>user</b>, password <b>user</b>
	<p>
	
	<%
		if (request.getParameter("login_error") != null) {
	        %>
	        <font color="red">Your login attempt was not successful, try again.</font>
	        <%
	    }
	%>

    <form name="f" action="j_spring_security_check" method="POST">
      <table>
        <tr><td>User:</td><td><input type='text' name='j_username'/></td></tr>
        <tr><td>Password:</td><td><input type='password' name='j_password'></td></tr>
        <tr><td><input type="checkbox" name="_spring_security_remember_me"></td><td>Don't ask for my password for two weeks</td></tr>

        <tr><td colspan='2'><input name="submit" type="submit"></td></tr>
        <tr><td colspan='2'><input name="reset" type="reset"></td></tr>
      </table>

    </form>

  </body>
</html>