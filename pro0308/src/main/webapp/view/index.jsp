<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href=".././css/index.css" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<meta charset="UTF-8">
<title>home</title>
</head>
<body class="d-flex flex-column flex-wrap">
	<div class="wrap d-flex flex-column">
		<div id="green-div" />
		<div
			class="display-3 d-flex justify-content-center align-items-center">
			<a href="#" id="home" class="home-link">Home page :)</a>
		</div>

		<section class="d-flex flex-column">
			<div class="d-flex w-auto">
				<img id="home_1" class="pre" alt="home_img" src=".././img/home_1.jpg"> 
				<img id="home_2" class="suf" alt="home_img" src=".././img/home_1.jpg"> 
			</div>
			<div class="d-flex justify-content-between">
				<a id="join" href="#" class="home-link">JOIN</a> <span><a
					class="home-link" href="#">Login</a></span> <span><a
					class="home-link" href="#">Contact Us</a></span>
			</div>
			<div id="green-div" />
		</section>
	</div>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$('#home').on('click', function() {
						location.href = "index.jsp";
					});
					$('#join').on('click', function() {
						 window.open('join.jsp');
					});
					$('#login').on('click', function() {
						window.open('login.jsp');
					});

					var imgIdx = 0;
					var imgs = [ '.././img/home_1.jpg', '.././img/home_2.jpg',
							'.././img/home_3.jpg', '.././img/home_4.jpg' ]
				
					$('#home_1').on('click', function () {
						imgIdx --;
						
						if (imgIdx < 0) {
							imgIdx = imgs.length - 1;
							
						}
						$('.pre').attr('src', imgs[imgIdx]);
						$('.suf').attr('src', imgs[imgIdx]);
					});
					$('#home_2').on('click', function () {
						imgIdx ++;
						if (imgIdx > imgs.length) {
							imgIdx = 0;
						}
						$('.pre').attr('src', imgs[imgIdx]);
						$('.suf').attr('src', imgs[imgIdx]);
					});
				
				});
	</script>
</body>
</html>