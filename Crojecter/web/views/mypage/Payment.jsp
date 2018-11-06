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
	.table {
	border: 1px solid black;
	}
	
	.thead {
	color : white;
	background : grey;
	}
	
	.tbody {
	
	}
</style>
</head>
<body>
<table class="table">
	<thead class="thead">
	<tr>
		<th>날짜</th>
		<th>내용</th>
		<th>사용내역</th>
		<th>잔액</th>
		<th>비고</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>2018-01-01</td>
		<td>OOO 후원</td>
		<td>+500</td>
		<td>300</td>
		<td></td>
	</tr>
	</tbody>
</table>

</body>
</html>