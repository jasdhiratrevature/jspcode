<%@ taglib prefix="x" uri="jakarta.tags.xml" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html>
   <head>
      <title>JSTL x:parse Tags</title>
   </head>

   <body>
      <h3>Books Info:</h3>
      <c:import var = "bookInfo" url="http://localhost:8081/04JSTLDemo/books.xml"/>
 
      <x:parse xml = "${bookInfo}" var = "output"/>
      <b>The title of the first book is</b>: 
      <x:out select = "$output/books/book[1]/name" />
      <br>
      
      <b>The price of the second book</b>: 
      <x:out select = "$output/books/book[2]/price" />
   </body>
</html>