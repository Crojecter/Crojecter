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
	.btns{
	}
</style>
</head>
<body>
<form id="updateForm" action="<%=request.getContextPath()%>/signUp.do" method="post">
		<div style="border:1px solid gray; height:auto; width:auto;">
			<div style="margin: 10px 10px 1px 10px;" class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
			<hr />
			<label>이름</label><br>
			<input type="text" name="userName"/ value="홍길동"><br>
			<br><label>이메일 주소</label><br>
			<input type="email" name="email"/><br>
			<br><label>비밀번호</label><br>
			<input type="password" name="password" value="required"><br>
			<input type="password" name="passwordCheck" value="required"/><br>
			<br>
			<div class="btns" align="center">
				<div id="updateBtn" onclick="updateMember();">수정하기</div> &nbsp;
				<div id="deleteBtn" onclick="deleteMember();">탈퇴하기</div>
			</div>
	</form>
	<script>
	function updateMember() {
		$("#updateForm").submit();
	}
	
	function deleteMember() {
		location.href = "/myWeb/mDelete.me?mid=";
	}
	</script>
</body>
</html>