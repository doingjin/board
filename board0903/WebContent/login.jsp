<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
</head>
<body>
<form method="post" action="controlUser.jsp" name="form">
<input type="hidden" name="action" value="login">
	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="LogIn"></td>
		</tr>
	</table>
</form>
<button onclick="location.href='signup.jsp'">SignUp</button>
<button onclick="location.href='controlBoard.jsp?action=getlist';">Main</button>
</body>
</html>