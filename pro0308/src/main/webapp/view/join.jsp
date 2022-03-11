<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href=".././css/join.css" rel="stylesheet" type="text/css">
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

<title>join</title>
</head>
<body class="d-flex flex-column flex-wrap">
	<header>
		<span class="display-3"><a href="index.jsp" class="home-link">HomePage</a></span>
	</header>
	<div class="wrap">
		<div>
			<strong class="display-4 d-flex justify-content-center">계정만들기</strong>
		</div>
		<hr>
		<section>
			<label class="form-label fs-5">이름</label>
			<div class="input-group mb-3">
				<input type="text" class="form-control" id="uuName" placeholder="이름">
			</div>
			<label class="form-label fs-5">아이디</label>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="아이디">
				<button class="btn btn-sm btn-outline-secondary" type="button"
					id="chkId">중복체크</button>
			</div>
			<label class="form-label fs-6">비밀번호(소문자와 숫자포함 최소 6자)</label>
			<div class="input-group mb-3">
				<input type="password" class="form-control" id="inputPassword">
			</div>
		</section>
	</div>
</body>
</html>