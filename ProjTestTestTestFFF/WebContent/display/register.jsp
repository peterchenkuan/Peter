<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/register.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/jquery.validate.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="" />
<title>註冊</title>
</head>
<body>
<div id="register">
	<form method="post" class="cmxform" id="form" action="registration.do" enctype="multipart/form-data">
		<fieldset>
			<legend>註冊</legend>
			<p>
				<label for="memberId">帳號(*)：</label>
				<input type="text" class="memberId" id="memberId" name="memberId" value="${param.memberId}" title="請輸入帳號">
				<label>${ErrorMsg.memberId}</label>
			</p>
			<p>
				<label for="password">密碼(*)：</label>
				<input type="password" class="password" id="password" name="password" value="${param.password}" title="請輸入密碼">
				<label>${ErrorMsg.password}</label>
			</p>
			<p>
				<label for="password">確認密碼：</label>
				<input type="password" class="passwordCheck" id="passwordCheck" name="passwordCheck" title="請再次輸入密碼">
			</p>
			<p>
				<label for="memberName">姓名(*)：</label>
				<input type="text" class="memberName" id="memberName" name="memberName" value="${param.memberName}" title="請輸入帳號">
				<label>${ErrorMsg.memberName}</label>
			</p>
			<p>
				<label for="email">E-mail(*)：</label>
				<input type="text" class="email" id="email" name="email" value="${param.email}" title="請輸入E-mail信箱">
				<label>${ErrorMsg.email}</label>
			</p>
			<p>
			<label for="sex">姓別：</label>
			<select class="sex" id="sex" name="sex">
				<option value="男">男</option>
				<option value="女">女</option>
			</select>
			</p>
			<p>
				<label for="birthday">生日：</label>
				<input type="text" class="birthday" id="birthday" name="birthday" value="${param.birthday}" title="請輸入生日日期" readonly="readonly">
				<label>${ErrorMsg.birthday}</label>
			</p>
			<p>
				<label for="address">地址：</label>
				<input type="text" class="address" id="address" name="address" value="${param.address}" title="請輸入地址">
				<label>${ErrorMsg.address}</label>
			</p>
			<p>
				<label for="picture">圖片：</label>
				<input type="file" class="picture" id="picture" name="picture" title="請輸入圖片">
			</p>

			<input type="submit" id="submit" value="送出">
			<input type="reset" id="reset" value="清除">
		</fieldset>	
		<a href="${pageContext.request.contextPath}/index.jsp">回首頁</a>
	</form>
	
</div>

</body>
</html>