<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="model.mem.MemVO" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New post</title>
</head>
<body>
<form method="post" action="controlBoard.jsp">
<input type="hidden" name="action" value="add">
<input type="hidden" name="id" value="<%=user.getId()%>">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="content"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="작성하기"></td>
		</tr>
	</table>
</form>
<button onclick="location.href='controlBoard.jsp?action=getlist';">Main</button>
</body>
</html>