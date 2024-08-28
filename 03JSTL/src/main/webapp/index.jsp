<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="WEB-INF/tlds/mytags.tld" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Tags Example</title>
</head>
<body>
<h3>Simple Tag</h3>
<h3>Hello <my:today></my:today></h3>
<hr/>
<h3>Tag with Attribute</h3>
<my:hello yourName="Jasdhir"></my:hello>
<hr/>
<h3>Exmple of Tag with Body</h3>
<my:helloBody>This is Example of Body Custom Tag</my:helloBody>
<hr/>
 <H1>Supporting Iterating Custom Tags</H1>
        <%
            String[] names = new String[]{ "A", "B", "C", "D" };
            pageContext.setAttribute("names", names);
        %>

        <my:myIterator>Cast member:</my:myIterator>
             
        
</body>
</html>