<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Function Tags</title>
</head>
<body>
<h1>JSTL fn:contains() function example</h1>
<c:set var="str1" value="Java Guides" />
<c:set var="str2" value="Guides" />
<c:if test="${fn:contains(str1, str2)}">
  <c:out value="'Guides' substring present in 'Java Guides' string" />
</c:if>
<hr/>
<h1>JSTL fn:containsIgnoreCase() function example</h1>
<c:set var="str1" value="Java Guides" />
<c:set var="str2" value="java guides" />
<c:if test="${fn:containsIgnoreCase(str1, str2)}">
  <c:out value="'java guides' substring present in 'Java Guides' string" />
</c:if>
<hr>
</body>
</html>