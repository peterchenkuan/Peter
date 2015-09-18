<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/table.css" />
<title>好友名單</title>
</head>
<body>
<table>
	<thead>
<!-- 	<tr> -->
<!-- 		<th>好友名單</th> -->
<!-- 		<th>申請中好友</th> -->
<!-- 		<th>好友邀請確認</th> -->
<!-- 	</tr> -->
	</thead>
	<tbody>	
		<tr><th>好友名單</th></tr>
		<c:forEach var="row" items="${selectFriend}">
			<c:if test="${row.unfriend==2}">
				<tr>
					<td>${row.friendId}</td>
				</tr>
			</c:if>	
		</c:forEach>
		
		<tr><th>申請中好友</th></tr>
		<c:forEach var="row" items="${selectFriend}">
			<c:if test="${row.unfriend==0}">
				<tr>
					<td>${row.friendId}</td>
				</tr>
			</c:if>	
		</c:forEach>
		
		<tr><th>好友邀請確認</th></tr>
		<c:forEach var="row" items="${selectFriend}">
			<c:if test="${row.unfriend==1}">
				<tr>
					<td>${row.friendId}</td>
					
					<td><a href="${pageContext.request.contextPath}/friend/updateFriend.do"/> <input type="button" name="${row.friendId}" value="確認"></a></td>
				</tr>
			</c:if>	
		</c:forEach>							
	</tbody>	
</table>
<a href="${pageContext.request.contextPath}/friend/friend.jsp">好友首頁</a>
</body>
</html>