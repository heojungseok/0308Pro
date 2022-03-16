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
		<span class="display-4"><a href="index.jsp" class="home-link">Home
				Page</a></span>
	</header>
	<div class="wrap">
		<div>
			<span class="display-4 d-flex justify-content-center fw-bolder">계정만들기</span>
		</div>
		<hr>
		<form action="../joinCtl" method="post">
			<section>
				<label class="form-label fs-5">이름</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="uuName" name="uuName"
						placeholder="이름">
				</div>
				<label class="form-label fs-5">아이디 <font
					class="form-label d-flex justify-content-start" id="chkId" size="2"></font>
				</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control" id="uuId" name="uuId"
						placeholder="아이디">
					<button class="btn btn-sm btn-outline-secondary" type="button"
						id="confirmId">중복체크</button>
				</div>
				<label class="form-label fs-6 justify-content-between">비밀번호(소문자,
					숫자, 특수문자 포함 최소 6자) </label>
				<div class="input-group mb-3">
					<input type="password" class="form-control" id="pw">
				</div>
				<label class="form-label fs-6 d-flex justify-content-between">비밀번호
					확인 <font class="form-label fs-6" id="confirm"></font>
				</label>
				<div class="input-group mb-3">
					<input type="password" class="form-control" id="chkPw" name="uuPw">
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="a"
						id="allChk"> <label class="form-check-label "
						for="flexCheckDefault"> 전체 동의 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="e" id="eChk">
					<label class="form-check-label " for="flexCheckDefault"> 필수
						동의 </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="ne"
						id="neChk"> <label class="form-check-label "
						for="flexCheckChecked"> 선택 동의 </label>
				</div>
			</section>

			<footer class="d-flex justify-content-center">
				<button id="doneBtn" class="btn" type="submit">가입 하기</button>
			</footer>
		</form>
	</div>
	<script type="text/javascript">
		var idPattern = /[^a-zA-Z0-9]/;
		var sw = screen.width;
		var sh = screen.height;
		
		$(document).ready(function() {
			$('#uuId').keyup(function() {
				var id = $('#uuId').val();
				if (idPattern.test(id) == true || id.length < 6 || id.length > 12) {
					$('#chkId').html("(아이디는 최소 6자, 최대 12자, 영문과 숫자로만 이루어집니다.)");
					$('#chkId').attr('color', 'red');
				}else{
					$('#chkId').html('');
				}
			
			});
			$('#confirmId').on('click', function() {
				var id = $('#uuId').val();
				var url = "../chkid?uuId="+$('#uuId').val();
				var popName = "idchk";
				var width = 350;
				var height = 250;
				
				var option = "width = "+width+", height = "+height+" top ="+((sh/2)-(height/2))+", left = "+((sw/2)-(width/2));
				if(idPattern.test(id) == true || id.length < 6 || id.length > 12){
					return false;
				}else{
					window.open(url,popName,option);
				}
			});
			$('#chkPw').keyup(function() {
				var pw = $('#pw').val().toLowerCase();
				var chkPw = $('#chkPw').val().toLowerCase();
				
				if(pw != "" || chkPw != ""){
					console.log(pw+" , "+chkPw);
					if(pw == chkPw){
						$('#confirm').attr('color','green');
						$('#confirm').html('일치');
					}else if(chkPw == ""){
						$('#confirm').html('');
					}else {
						$('#confirm').attr('color','black');
						$('#confirm').html('불일치');
					}
				}
				else{
					$('#confirm').html('');
				}
			});
			$('#allChk').click(function() {
				if ($('input[value = "a"]').prop('checked') == true) {
					$('#eChk').prop('checked', true);
					$('#neChk').prop('checked', true);
				}else{
					$('#eChk').prop('checked', false);
					$('#neChk').prop('checked', false);
				}
			});
			$('#doneBtn').on('click', function() {
				var name = $('#uuName').val();
				var id = $('#uuId').val();
				var pw = $('#pw').val();
				var chkPw = $('#chkPw').val();
				
				if (name == '' || id == '' || pw == '' || chkPw == '') {
					alert("항목을 기입해주세요.");
					return false;
				}else if(idPattern.test(id) == true || id.length < 6 || id.length > 12){
					alert("아이디 확인해주세요.");
					return false;
				}else if(pw != chkPw || pw.length < 6 || chkPw.length < 6){
					alert("비밀번호를 확인해주세요.");
					return false;
				}else{
					alert("가입 성공");
					return true;
				}
			});
		});
	</script>
</body>
</html>