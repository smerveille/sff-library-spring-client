<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page" %>
<html>
    <head>
        <title><decorator:title default="DEFAULT TITLE"/></decorator>
        <decorator:head/>
    </head>
    <body>
        <div><decorator:body /></div>
    </body>
</html>