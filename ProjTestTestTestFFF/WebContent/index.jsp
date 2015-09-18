<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>

<h3>Welcome
<img src="${pageContext.request.contextPath}/GetImg?imgid=${member.picture}" height="30" width="30" onerror="this.style.display='none'"> 
${member.memberName}
</h3>
	<c:choose>
	<c:when test="${empty member}">
		<a href="${pageContext.request.contextPath}/secure/login.jsp">登入</a><br>
		<a href="${pageContext.request.contextPath}/display/register.jsp">註冊</a><br>
	</c:when>
	<c:otherwise>
		<a href="${pageContext.request.contextPath}/secure/logout.jsp">登出</a><br>
		<a href="${pageContext.request.contextPath}/display/regisChange.jsp">修改個人資料</a><br>
		<a href="${pageContext.request.contextPath}/display/changePassword.jsp">修改密碼</a><br>
		<a href="${pageContext.request.contextPath}/friend/friend.jsp">好友功能</a><br>
	</c:otherwise>
	</c:choose>
</body>
</html>