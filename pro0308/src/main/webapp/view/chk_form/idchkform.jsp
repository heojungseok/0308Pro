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
	<span class="display-4">ID 중복유무</span>
	<hr>
	<label class="form-control d-flex justify-content-center"> 
	<input type="button" class="btn" id="chkId" value="" disabled>
	</label>
	<div class="d-flex justify-content-center">
		<font id="chkMsg" size="3" >${msg }</font>
	</div>
	<div class="d-flex justify-content-end">
		<button class="btn btn-sm" type="button" id="exitBtn"
			onclick="exitBrowser();">닫기</button>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var getLink = window.location.search;
			var getUserId = getLink.split('=');
			var getOnlyId = decodeURI(getUserId[1]);
			
			$('#chkId').attr('value', getOnlyId);

		});

		function exitBrowser() {
			self.close();
		}
	</script>
</body>
</html>