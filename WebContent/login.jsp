<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	
</script>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<a href="index.html" class="logo"><strong>Forty</strong> <span>by
					HTML5 UP</span></a>
			<nav>
				<a href="#menu">Menu</a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="index.html">Home</a></li>
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
					<h1>Welcome to my Page! :)</h1>
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
						<input type="hidden" name="action" value="login">
						<div class="fields">
							<div class="field">
								<label for="name">ID</label> <input type="text" name="id"
									id="name" />
							</div>
							<div class="field">
								<label for="email">Password</label> <input type="password" name="pw"
									id="email" />
							</div>
							
						</div>
						<ul class="actions">
							<li><input type="submit" value="LogIn"
								class="primary" /></li>
							<li><input type="reset" value="Clear" /></li>
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