
<html>
  <head>
   <title> fmt:locale , fmt:message and fm:setBundle tag example </title>
  </head>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
  <body>
    <fmt:setBundle basename="com.revature.bundle.myBundle" var="resourceBundle"/>
    Title in default Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
    <br/>
    <fmt:message key="usernameLbl" var="userMsg" bundle="${resourceBundle}"/>
    Username in Default Locale :: <c:out value="${userMsg}"/>
    <br/>
    <fmt:setLocale value="es_US"/>
    <fmt:setBundle basename="com.revature.bundle.myBundle" var="resourceBundle"/>
    Title in Spanish Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
    <br/>
    Username in Spanish Locale :: <fmt:message key="usernameLbl" bundle="${resourceBundle}"/>
    
    <br/>
    <fmt:setLocale value="fr_FR"/>
    <fmt:setBundle basename="com.revature.bundle.myBundle" var="resourceBundle"/>
    Title in Spanish Locale :: <fmt:message key="title" bundle="${resourceBundle}"/>
    <br/>
  </body>
</html>