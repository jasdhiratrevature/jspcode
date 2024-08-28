<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.revature.model.Employee" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees List</title>
</head>
<body>
Emp List<c:out value="${requestScope.empList}"></c:out>
<hr/>
<table>
<tbody>
<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Role</th>
			</tr>
<c:forEach items="${requestScope.empList}" var="emp">
<tr>
					<td><c:out value="${emp.id}"></c:out></td>
<td><c:out value="${emp.name}"></c:out></td>
<td><c:out value="${emp.dept}"></c:out></td>
				</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>