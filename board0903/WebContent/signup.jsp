<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<script src="jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	})
	function idcheck(){
		var id=document.form.id.value;
		location.href='controlUser.jsp?action=idcheck&id='+id;
	}
</script>
</head>
<body>
<form method="post" action="controlUser.jsp" name="form">
<input type="hidden" name="action" value="signup">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" onblur="idcheck()">
			<span></span></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td>Password check</td>
			<td><input type="password" name="pw2"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="SignUp"></td>
		</tr>
	</table>
</form>
<button onclick="location.href='controlBoard.jsp?action=getlist';">Main</button>
</body>
</html>