﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name","page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>범주우선순위</h1>
	
	<h2>자바문법</h2>
	page name = <%=pageContext.getAttribute("name") %> <br/>
    request name = <%=request.getAttribute("name") %> <br/>
    session name = <%=session.getAttribute("name") %> <br/>
    application name = <%=application.getAttribute("name") %> <br/>
	
	<h2>el</h2>                   
	
	page name = ${pageScope.name} <br/>
	request name = ${requestScope.name} <br/>
	session name = ${sessionScope.name} <br/>
	application name = ${applicationScope.name} <br/>
	<br/>
	
	request userVo: ${requestScope.userVo } <br/>
	session userVo: ${sessionScope.userVo } <br/>
	<br/>
	
	userVo: ${userVo } <br/>
	<!-- 동일 이름의 속성을 검색할 때
	pageScope -> requestScope -> sessionScope -> applicationScope 순서
	-->
	
	<br/>
	

</body>
</html>