<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ page contentType="text/html; charset=gb2312" language="java"%>
<html>
<head>
<title>JSTL: c:out��ʹ��</title>
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
	<hr>���һ���ַ�����<c:out value="test" />
	<hr>����body��c:out��ǩ������body���䵽�ͻ��ˡ�
	<% for (int i = 0; i < 5; i++) { %>
		<c:out value="test2"></c:out>
		<% out.println("i"); i++; %>
	<% } %>
	<hr><c:out value="2<10" escapeXml="true"></c:out>
	<hr>���session�е����ԣ�<c:out value="${test_session}" />
	<hr>���request�е����ԣ�
	<c:out value="${test_request}" />
	<hr>���application�е����ԣ�
	<c:out value="${test_application}" />
	<hr>���Ա��ʽ�������Ȼ���ĸ����ԣ�<page,request,session,application> 
	<c:out value="${test_all}" />
	<c:out value="${sessionScope.test_all}" />
	<hr>���һ��Ĭ��ֵ�� <c:out value="${message}" default="���ֵ������" />

	${test_all}
	
</body>
</html>