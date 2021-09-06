<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="model.mem.MemVO" scope="session" />

<!DOCTYPE HTML>
<html>
<head>
<title>Log In</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
<script type="text/javascript">
			function del(){
				res=confirm('정말 탈퇴하시겠습니까?');
				if(res){
					document.form.action.value="delete";
					document.form.submit();
				} else {
					return;
				}
			}
</script>
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
					<h1>Edit Information</h1>
				</header>
				<div class="content">
					<p>
						A responsive site template designed by HTML5 UP<br /> and
						released under the Creative Commons.
					</p>
					
				</div>
			</div>
		</section>
		
		<!-- Main -->
		<div id="main">
		</div>
		<!-- Contact -->
		<section id="contact">
			<div class="inner">
				<section>
					<form method="post" action="controlUser.jsp" name="form">
						<input type="hidden" name="action" value="editPw">
						<input type="hidden" name="id" value="${user.getId()}">
						<div class="fields">
							<div class="field">
								<label for="name">ID</label>${user.getId()}
							</div>
							<div class="field">
								<label>현재 패스워드</label> <input type="password" name="pwnow"
									id="email" />
							</div>
							<div class="field">
								<label for="email">바꿀 패스워드</label> <input type="password" name="pw"
									id="email" />
							</div>
							
						</div>
						<ul class="actions">
							<li><input type="submit" value="Change PW" class="primary" /></li>
							<li><input type="button" value="withdraw" onclick="del()" class="button"></li>
							
						</ul>
					</form>
					<button class="button primary fit" onclick="location.href='controlBoard.jsp?action=getlist';">Main</button>
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