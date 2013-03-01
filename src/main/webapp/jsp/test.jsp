<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head>
<title>JSTL: c:out的使用</title>
</head>
<body bgcolor="#321456">

	<hr>
	<% request.setAttribute("test_request", "testValue_request"); %>
	<% session.setAttribute("test_session", "testValue_session"); %>
	<% application.setAttribute("test_application", "testValue_application"); %>
	<input type="button" name="test_all" value="testValue_page"/>
	<% request.setAttribute("test_all", "testValue_request"); %>
	<% session.setAttribute("test_all", "testValue_session"); %>
	<% application.setAttribute("test_all", "testValue_application"); %>
	<hr>输出一个字符串：<c:out value="test" />
	<hr>带有body的c:out标签，但是body不输到客户端。
	<% for (int i = 0; i < 5; i++) { %>
		<c:out value="test2"></c:out>
		<% out.println("i"); i++; %>
	<% } %>
	<hr><c:out value="2<10" escapeXml="true"></c:out>
	<hr>获得session中的属性：<c:out value="${test_session}" />
	<hr>获得request中的属性：
	<c:out value="${test_request}" />
	<hr>获得application中的属性：
	<c:out value="${test_application}" />
	<hr>测试表达式语言优先获得哪个属性：<page,request,session,application> 
	<c:out value="${test_all}" />
	<c:out value="${sessionScope.test_all}" />
	<hr>输出一个默认值： <c:out value="${message}" default="这个值不存在" />

	${test_all}
	
</body>
</html>