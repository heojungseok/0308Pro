<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<title>중복 확인</title>
</head>
<body>
	<span class="display-4">아이디를 확인하세요.</span>
	<form
		action=""
		method="get">
		<div class="input-group mb-3 ">
			<input type="text" class="form-control" id="chkId" name="uuId"
				value="${uuId }">
			<button class="btn btn-sm btn-outline-secondary" type="submit"
				id="chkId">아이디 확인</button>
		</div>
	</form>
	<div class="d-flex justify-content-center">
		<font id="chkMsg" size="2" value="${msg }"></font>
	</div>
	<div class="d-flex justify-content-end">
		<button class="btn btn-sm" type="button" id="doneBtn" onclick="">사용하기</button>
		<button class="btn btn-sm" type="button" id="exitBtn"
			onclick="exitBrowser();">취소</button>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var getLink = window.location.search;
			var getUserId = getLink.split('=');
			var getOnlyId = decodeURI(getUserId[1]);

			$('#chkId').attr('value', getOnlyId);

			$("#chkId").on('click', function() {

			});
		});

		function exitBrowser() {
			self.close();
		}
	</script>
</body>
</html>