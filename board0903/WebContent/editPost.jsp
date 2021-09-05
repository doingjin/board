<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="data" class="model.board.BoardVO" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit post</title>
<script type="text/javascript">
	function del(){
		res=confirm('정말 삭제하시겠습니까?');
		if(res){
			document.form.action.value="delete";
			document.form.submit();
		} else {
			return;
		}
	}
</script>
</head>
<body>
<form method="post" action="controlBoard.jsp" name="form">
<input type="hidden" name="action" value="edit">
<input type="hidden" name="num" value="<%=data.getNum()%>">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="<%=data.getTitle()%>"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="content" value="<%=data.getContent()%>"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="수정하기">  <input type="button" value="삭제" onclick="del()"></td>
		</tr>
	</table>
</form>
<button onclick="location.href='controlBoard.jsp?action=getlist';">수정취소</button>
</body>
</html>