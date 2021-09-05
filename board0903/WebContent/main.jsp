<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.board.*" %>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="user" class="model.mem.MemVO" scope="session"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M A I N</title>
<script type="text/javascript">
function logout(){
	res=confirm('로그아웃 하시겠습니까?');
	if(res){
		location.href="controlUser.jsp?action=logout";
	} else {
		return;
	}
}
</script>
</head>
<body>

<% if(user.getId()!=null){
	%>
	<button onclick="logout()">LogOut</button>
	<button onclick="location.href='addPost.jsp'">글쓰기</button>
	<br><%=user.getId() %>님.
<% } else { %>
	<button onclick="location.href='login.jsp'">LogIn</button>
<% } %>

<h3>B o a r d</h3>
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
<br>

</body>
</html>