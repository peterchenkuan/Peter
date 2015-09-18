<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/registerChange.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/jquery.validate.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="" />
<title>修改基本資料</title>
</head>
<body>
<div id="register">
	<form method="post" class="cmxform" id="form" action="regisChange.do">
		<fieldset>
			<legend>修改個人資料</legend>
			<p>
				<label for="memberId">帳號(*)：</label>
				<input type="text" class="memberId" id="memberId" name="memberId" value="${member.memberId}" readonly="readonly">
			</p>
			<p>
				<label for="memberName">姓名(*)：</label>
				<input type="text" class="memberName" id="memberName" name="memberName" value="${member.memberName}" >
			</p>
			<p>
				<label for="email">E-mail(*)：</label>
				<input type="text" class="email" id="email" name="email" value="${member.email}" >
			</p>
			<p>
			<label for="sex">姓別：</label>
			<select class="sex" id="sex" name="sex" value="${member.sex}">
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
				<input type="text" class="address" id="address" name="address" value="${member.address}" >
			</p>
			<p>
				<label for="picture">圖片：</label>
				<input type="file" class="picture" id="picture" name="picture"  value="${member.picture}">
			</p>

			<label class="tag"></label>
			<input type="submit" id="submit" value="送出">
			<a href="${pageContext.request.contextPath}/index.jsp">回首頁</a>
		</fieldset>	
	</form>
	
</div>
</body>
</html>