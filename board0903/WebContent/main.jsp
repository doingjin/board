<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.board.*" %>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M A I N</title>
</head>
<body>
<table>
	<tr>
		<td>번호</td><td>제목</td><td>작성자</td><td>작성일</td>
	</tr>
	<%
		int i=0;
		for(BoardVO vo : (ArrayList<BoardVO>)datas){
			i++;
	%> 	
		<tr>
			<td><%=i %></td>
			<td><a href="controlBoard.jsp?action=getone&num=<%=vo.getNum()%>"><%= vo.getTitle() %></a></td>
			<td><%= vo.getId() %></td>
			<td><%= vo.getBdate() %></td>
		</tr>
	<%
		}
	%>
</table>
</body>
</html>