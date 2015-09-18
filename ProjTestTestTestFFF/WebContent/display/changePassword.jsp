<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密碼</title>
</head>
<body>
<div id="changePassword">
	<form method="post" class="cmxform" id="form" action="changePassword.do">
		<fieldset>
			<legend>修改密碼</legend>
			<p>
				<label class="tag" for="user">帳號：</label>
				<input type="text" id="memberId" name="memberId" title="請輸入帳號"  value="${member.memberId}" readonly="readonly">
			</p>
			<p>
				<label class="tag" for="password">密碼：</label>
				<input type="password" id="oldPassword" name="oldPassword" title="請輸入密碼 ">
				<label>${ErrorMsg.password}</label>
			</p>					
			<p>
				<label class="tag" for="password">新密碼：</label>
				<input type="password" id="newPassword" name="newPassword" title="請輸入密碼">
				<label>${ErrorMsg.newPassword}</label>
			</p>
			<p>
				<label class="tag" for="password">確認新密碼：</label>
				<input type="password" id="passwordCheck" name="passwordCheck" title="請再次輸入密碼">
				<label>${ErrorMsg.passwordCheck}</label>
			</p>
			<input type="submit" id="submit" value="送出">
			<input type="reset" id="reset" value="清除">
			<a href="${pageContext.request.contextPath}/index.jsp">請按此回首頁</a>
		</fieldset>	
	</form>
</div>

</body>
</html>