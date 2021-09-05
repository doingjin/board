<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="data" class="model.board.BoardVO" scope="request"/>
<jsp:useBean id="user" class="model.mem.MemVO" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O N E</title>
</head>
<body>


	<table>
		<tr>
			<td>작성자</td>
			<td><%=data.getId()%></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=data.getTitle()%></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=data.getContent()%></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%=data.getBdate()%></td>
		</tr>
	</table>
	<%if(data.getId().equals(user.getId())){ %>
	<button onclick="location.href='controlBoard.jsp?action=edit1&num=<%=data.getNum()%>'">수정하기</button><br>
	<%} %>
	<button onclick="location.href='controlBoard.jsp?action=getlist';">Main</button>
</body>
</html>