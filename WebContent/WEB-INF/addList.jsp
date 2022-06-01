<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.GuestbookVo"%>
<%@ page import="java.util.List"%>

<%
List<GuestbookVo> gbList = (List<GuestbookVo>)request.getAttribute("gbList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>[방명록]</h1>
	
	<form action="./gbc" method="get">
		<table border="1" width="480px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="7" cols="61" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
		<input type="hidden" name="action" value="add">
	</form>
	<br>

	<%
	for (int i = 0; i < gbList.size(); i++) {
	%>
		<table border="1" width="480px">
			<tr>
				<td>[<%=gbList.get(i).getNo()%>]</td>
				<td><%=gbList.get(i).getName()%></td>
				<td><%=gbList.get(i).getRegDate()%></td>
				<td><a href="./gbc?action=deleteForm&no=<%=gbList.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4"><%=gbList.get(i).getContent()%></td>
			</tr>
		</table>
		<br>
	<%
	}
	%>
</body>
</html>