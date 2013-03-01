<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<html>
<head>
<!-- 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 -->
<title>Hello World</title>
</head>
<body>
	<div>${requestScope.message}</div>
	<% out.print("use methold of out.print"); %>
	<br/>
	<% out.print(request.getAttribute("message")); %>
	<br/>

	<%="use methold of =" %>
	<br/>
	<%= request.getAttribute("message") %>
	<br/>
	
	<c:out value="use methold of c:out" escapeXml="true" default="defaultValue" />
	<br/>
	<c:out value="${message}" escapeXml="true" default="defaultValue" />
	<br/>
	<c:out value="${object}" escapeXml="true" default="defaultValue" />
</body>
</html>