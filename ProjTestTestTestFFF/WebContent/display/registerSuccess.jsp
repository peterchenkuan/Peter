<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="" />

<title>註冊成功</title>
</head>
<body>
<div id="register">
	<form method="post" class="cmxform" id="form" action="">
		<fieldset>
			<legend>註冊成功</legend>
			<p>
				<label for="memberId">帳號(*)：</label>
				<input type="text" class="memberId" id="memberId" name="memberId" value="${member.memberId}" readonly="readonly">
			</p>
			<p>
				<label for="password">密碼(*)：</label>
				<input type="password" class="password" id="password" name="password" value="${member.password}" readonly="readonly">
			</p>
			<p>
				<label for="memberName">姓名(*)：</label>
				<input type="text" class="memberName" id="memberName" name="memberName" value="${member.memberName}" readonly="readonly">
			</p>
			<p>
				<label for="email">E-mail(*)：</label>
				<input type="text" class="email" id="email" name="email" value="${member.email}" readonly="readonly">
			</p>
			<p>
			<label for="sex">姓別：</label>
			<select class="sex" id="sex" name="sex" readonly="readonly">
				<option value="男">男</option>
				<option value="女">女</option>
			</select>
			</p>
			<p>
				<label for="birthday">生日：</label>
				<input type="text" class="birthday" id="birthday" name="birthday" value="${member.birthday}" readonly="readonly">
			</p>
			<p>
				<label for="address">地址：</label>
				<input type="text" class="address" id="address" name="address" value="${member.address}" readonly="readonly">
			</p>
			<p>
				<label for="picture">圖片：</label>
				<input type="file" class="picture" id="picture" name="picture" readonly="readonly">
			</p>

			<%int  n = 3 ; 
			response.setHeader("Refresh",  n +";URL=../index.jsp"); %>
				您的瀏覽器將在 <%= 3 %> 秒後自動前往首頁<BR>
			<a href="${pageContext.request.contextPath}/index.jsp">回首頁</a>
		</fieldset>	
	</form>
	
</div>

</body>
</html>