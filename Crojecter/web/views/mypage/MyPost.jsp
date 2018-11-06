<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.login_signup.model.vo.*"%>
<%
	Board b = (Board)request.getAttribute("board");
%>
<!DOCTYPE html>
<html>

<head>
<script src="/crojecter/resources/js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CopyRight 홈페이지에 오신걸 환영합니다.</title>
</head>
<body>
<div class="tableArea">
	<table align="center" id="listArea">
		<tr width="1500px">
			<td width="300px" height="300px">대표 이미지 불러오기??</td>
			<td align="center"><%=b.getBtitle() %></td>
		</tr>
	</table>
</div>
<script>
	$(function(){
		$('#listArea td').click(function(){
			var bno = $(this).parent().children().eq(0).text();
			location.href="<%=request.getContextPath()%>/myPost.no?bno=" + bno;
			});
	});
</script>
</body>
</html>