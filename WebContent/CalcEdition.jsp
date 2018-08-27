<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="editioncalc" method="post">
		Number1 :
		<input type="text" name="number1"/>
		Number 2:
		<input type="text" name="number2"/>
		+
		<input type="checkbox" name="add"/>
		-
		<input type="checkbox" name="sub"/>
		*
		<input type="checkbox" name="multi"/>
		/
		<input type="checkbox" name="div"/>
		<input type="submit" value="calculate" name="calc"/>
		<% if(request.getAttribute("result")!=null){ %>
		<div>
			<%=request.getAttribute("result") %>
		</div>
		<% } %>
	</form>
</body>
</html>