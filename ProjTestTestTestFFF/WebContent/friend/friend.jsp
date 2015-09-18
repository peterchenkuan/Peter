<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/friend/addFriend.jsp">新增好友</a><br>
	<a href="${pageContext.request.contextPath}/friend/selectFriend.do">查詢好友</a><br>
	<a href="${pageContext.request.contextPath}/friend/deleteFriend.jsp">刪除好友</a><br>
	<a href="${pageContext.request.contextPath}/friend/friend.jsp">傳送訊息</a><br>
	<a href="${pageContext.request.contextPath}/index.jsp">回首頁</a>
</body>
</html>