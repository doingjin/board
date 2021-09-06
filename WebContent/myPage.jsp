<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,model.board.*"%>
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
		
		<section id="banner" class="major">
			<div class="inner">
				<header class="major">
					<h1>"${user.getId()}"s PAGE :)</h1>
				</header>
				<div class="content">
					<p>
						A responsive site template designed by HTML5 UP<br /> and
						released under the Creative Commons.
					</p>
					<button class="button" onclick="logout()">LogOut</button>&emsp;<a href="editPW.jsp" class="button">정보 수정</a>
				</div>
			</div>
		</section>
		
		<!-- Main -->
		<div id="main">

			
			<div class="table-wrapper inner">
			<h3 align="center">B o a r d</h3>
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
					</tbody>
					
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