<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.login_signup.model.vo.*"%>
<%
	Member m = (Member)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<script src="/crojecter/resources/js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CopyRight 홈페이지에 오신걸 환영합니다.</title>
<style>
	input, label{
		width:250px;
		height:25px;
		margin:1px 10px 1px 10px;
	}
	input[type=submit]{
		background:tomato;
		color:white;
		border:1px solid tomato;
		text-align:center;
		border-radius:5px;
		height:40px;
		font-size:15px;
		margin:1px 10px 1px 10px;
	}
</style>
</head>
<body>
	<form action="<%=request.getContextPath()%>/signUp.do" method="post">
		<div style="border:1px solid gray; height:auto; width:auto;">
			<div style="margin: 10px 10px 1px 10px;" class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
			<hr />
			<label>닉네임</label><br>
			<input type="text" name="nickName" placeholder="사용하실 닉네임을 입력해주세요" /><br>
			<br><label>이메일 주소</label><br>
			<input type="email" name="email" placeholder="이메일 주소를 입력해주세요" /><br>
			<input type="email" name="emailCheck" placeholder="이메일 주소를 확인합니다" /><br>
			<br><label>비밀번호</label><br>
			<input type="password" name="password" placeholder="비밀번호를 입력해주세요" /><br>
			<input type="password" name="passwordCheck" placeholder="비밀번호를 확인합니다" /><br>
			<br>
			<input type="submit" value="회원가입" />
			
			<hr />
			<br /><p>&nbsp;이미 계정이 있으신가요?<br>
			&nbsp;<a href="../main.html" style="color:red; text-decoration:none;">기존 계정으로 로그인하기</a></p><br />
		</div>
	</form>
	<script>
		var userId = $("#nickName").val();
		
		console.log(userId);
	</script>
</body>
</html>