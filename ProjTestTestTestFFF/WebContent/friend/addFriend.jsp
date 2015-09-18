<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增好友</title>
</head>
<body>
<div id="addFriend">
	<form method="post" class="cmxform" id="form" action="addFriend.do">
		<fieldset>
			<legend>新增好友</legend>
			<p>
				<label for="friendId">好友ID(*)：</label>
				<input type="text" class="friendId" id="friendId" name="friendId" value="${param.friendId}" title="請輸入好友帳號">
				<label>${ErrorMsg.friendId}</label>
			</p>
			<input type="submit" id="submit" value="送出">
			<input type="reset" id="reset" value="清除">
		</fieldset>	
		<a href="${pageContext.request.contextPath}/friend/friend.jsp">好友首頁</a>
	</form>
	
</div>

</body>
</html>