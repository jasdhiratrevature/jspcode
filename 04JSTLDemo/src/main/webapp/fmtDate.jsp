
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>fmt:formatDate Demo</title>
</head>
<body>
	<h1>fmt:formatDate Demo</h1>
	<c:set var="today" value="<%=new java.util.Date()%>" />
	<p>
		Time: <strong><fmt:formatDate type="time" value="${today}" /></strong>
	</p>
	<p>
		Date: <strong><fmt:formatDate type="date" value="${today}" /></strong>
	</p>
	<p>
		Date & Time: <strong><fmt:formatDate type="both"
				value="${today}" /></strong>
	</p>
	<p>
		Date & Time Short: <strong> <fmt:formatDate type="both"
				dateStyle="short" timeStyle="short" value="${today}" />
		</strong>
	</p>
	<p>
		Date & Time Medium: <strong> <fmt:formatDate type="both"
				dateStyle="medium" timeStyle="medium" value="${today}" />
		</strong>
	</p>
	<p>
		Date & Time Long: <strong> <fmt:formatDate type="both"
				dateStyle="long" timeStyle="long" value="${today}" />
		</strong>
	</p>
	<p>
		Date (yyyy-MM-dd): <strong> <fmt:formatDate
				pattern="yyyy-MM-dd" value="${today}" />
		</strong>
	</p>
</body>
</html>