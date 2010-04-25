<html>
    <head>
        <title>User Manager</title>
    </head>
    <body>
        <h1>User Manager</h1>
 
        <p>Bienvenue dans le gestionnaire de contact. Choisissez une action : </p>
        <a href="<%=request.getContextPath()%>/pages/listUsers.do">Visualiser les contacts</a></br>
        <a href="<%=request.getContextPath()%>/pages/saveUser.do">Ajouter un contact</a></br>
        <a href="<%=request.getContextPath()%>/pages/searchUser.do">Rechercher un contact</a></br>
        <a href="<%=request.getContextPath()%>/j_spring_security_logout">Se d&eacute;connecter</a></br>
    </body>
</html>