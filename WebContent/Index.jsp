<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form action="calcservlet" method="post">
		Number 1 :
		<input type="text" name="number1"/>
		Number 2:
		<input type="text" name="number2"/>
		+
		<input type="radio" name="oper" checked="checked" value="+"/>
		-
		<input type="radio" name="oper" value="-"/>
		*
		<input type="radio" name="oper" value="*"/>
		/
		<input type="radio" name="oper" value="/"/>
		<input type="submit" value="calculate" name="calc"/ id="button">
	</form>
	<div>Result is : </div><% if(request.getAttribute("result")!=null){ %>
			<%=request.getAttribute("result") %>
		<% } %>
</body>
</html>