<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,model.board.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="datas" class="java.util.ArrayList" scope="request" />
<jsp:useBean id="user" class="model.mem.MemVO" scope="session" />

<!DOCTYPE HTML>
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
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
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<a href="index.jsp" class="logo"><strong>HELLO</strong> <span>by
					HTML5 UP</span></a>
			<nav>
				<a href="#menu">Menu</a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="landing.html">Landing</a></li>
				<li><a href="generic.html">Generic</a></li>
				<li><a href="elements.html">Elements</a></li>
			</ul>
			<ul class="actions stacked">
				<li><a href="#" class="button primary fit">Get Started</a></li>
				<li><a href="#" class="button fit">Log In</a></li>
			</ul>
		</nav>
		
		<!-- Banner -->
		<% if(user.getId()!=null){  %>
		<section id="banner" class="major">
			<div class="inner">
				<header class="major">
					<h1>Hi, my name "<a href="controlBoard.jsp?action=mypage&id=${user.getId()}" title="Mypage로 이동!">${user.getId()}</a>" :)</h1>
				</header>
				<div class="content">
					<p>
						A responsive site template designed by HTML5 UP<br /> and
						released under the Creative Commons.
					</p>
					<button class="button" onclick="logout()">LogOut</button>
				</div>
			</div>
		</section>
		<% } else { %>
		<section id="banner" class="major">
			<div class="inner">
				<header class="major">
					<h1>Welcome to my Page! :)</h1>
				</header>
				<div class="content">
					<p>
						A responsive site template designed by HTML5 UP<br /> and
						released under the Creative Commons.
					</p>
					<a href="login.jsp" class="button primary">LogIn</a>
				</div>
			</div>
		</section>
		<% } %>
		<!-- Main -->
		<div id="main">

			
			<div class="table-wrapper inner">
			<h3 align="center">B o a r d</h3>
			<form action="controlBoard.jsp" method="post" name="form">
				<input type="hidden" name="action" value="getlist">
				<table>
				<tr>
					<td><select name="ctgr" id="demo-category">
						<option value="">- Category -</option>
						<option value="title">Title</option>
						<option value="content">Content</option>
						<option value="id">ID</option>
						</select>
					</td>
					<td><input type="text" name="search" id="demo-name" placeholder="검색할 내용을 입력하세요!" /></td>
					<td><input type="submit" value="Search" class="button"></td>
				<tr>
				</table>
			</form>
				<table class="alt">
					<thead>
						<tr>
							<th>Number</th>
							<th>Title</th>
							<th>User</th>
							<th>Date</th>
						</tr>
					</thead>
					<tbody>
					
					<c:forEach var="v" items="${datas}">
						<tr>
							<td>${v.num}</td>
							<td><a href="controlBoard.jsp?action=getone&num=${v.num}">${v.title}</a></td>
							<td>${v.id}</td>
							<td>${v.bdate}</td>
						</tr>
					
					</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3"></td>
							<td><% if(user.getId()!=null){%>
							<a href="addPost.jsp" class="button">Go to Post!</a>
							<% } %></td>
						</tr>
					</tfoot>
				</table>
			</div>

		</div>
		<!-- Contact -->
		<section id="contact">
			<div class="inner">
				<section>
					<form method="post" action="#">
						<div class="fields">
							<div class="field half">
								<label for="name">Name</label> <input type="text" name="name"
									id="name" />
							</div>
							<div class="field half">
								<label for="email">Email</label> <input type="text" name="email"
									id="email" />
							</div>
							<div class="field">
								<label for="message">Message</label>
								<textarea name="message" id="message" rows="6"></textarea>
							</div>
						</div>
						<ul class="actions">
							<li><input type="submit" value="Send Message"
								class="primary" /></li>
							<li><input type="reset" value="Clear" /></li>
						</ul>
					</form>
				</section>
				<section class="split">
					<section>
						<div class="contact-method">
							<span class="icon solid alt fa-envelope"></span>
							<h3>Email</h3>
							<a href="#">information@untitled.tld</a>
						</div>
					</section>
					<section>
						<div class="contact-method">
							<span class="icon solid alt fa-phone"></span>
							<h3>Phone</h3>
							<span>(000) 000-0000 x12387</span>
						</div>
					</section>
					<section>
						<div class="contact-method">
							<span class="icon solid alt fa-home"></span>
							<h3>Address</h3>
							<span>1234 Somewhere Road #5432<br /> Nashville, TN 00000<br />
								United States of America
							</span>
						</div>
					</section>
				</section>
			</div>
		</section>

		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon brands alt fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands alt fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands alt fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands alt fa-github"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands alt fa-linkedin-in"><span
							class="label">LinkedIn</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled</li>
					<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>