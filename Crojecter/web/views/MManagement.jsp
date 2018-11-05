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
	align : center;
	
	}
</style>
</head>
<body>
<div class="searchArea" align="center">
	<select id="searchCondition" name="searchCondition">
		<option value="">---</option>
		<option value="name">이름</option>
		<option value="email">이메일</option>
	</select>
		<input type="search" id="keyword"> 
		<button type="button" onclick="search();">검색하기</button>
</div>
<script>  
		function search(){
			location.href="<%=request.getContextPath()%>/searchNotice.no?con="+$('#searchCondition').val()+"&keyword="+$('#keyword').val();
		}	
</script>
<table class="table">
	<thead class="thead">
	<tr>
		<th>회원번호</th>
		<th>회원명</th>
		<th>이메일</th>
		<th>호두</th>
		<th>상태</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td><%= m.getMid() %></td>
		<td><%= m.getMname() %></td>
		<td><%= m.getMemail() %></td>
		<td><%= m.getMhodu() %></td>
		<td><%= m.getMsid() %></td>
	</tr>
	</tbody>
</table>
</body>
</html>