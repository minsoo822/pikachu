<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<html lang="ko">
<head>
	<title>Home</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
</head>
	
<body style="background-color: black;">
	<form method="post" id="mainForm">
		<div class="container" style="width: 30%;">
			<div class="row" style="width: 500px;">
				<div class="col">
					<div class="row text-center pt-5">
						<div class="col">
							<a type="button" onclick="btnHome()" style="text-decoration: none;">
								<h1 style="color: white; font-size: 70px; letter-spacing: 1px;	cursor: pointer; text-align: center; margin-bottom: 50px;">
									Actor'<span style="color: #f9004d;">s</span>
								</h1>
							</a>
						</div>
					</div>
					<!-- <div class="row m-3">
						<div class="col">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="user_type" id="actorCheck" >
								<label class="form-check-label" for="actorCheck"><b>Actor</b></label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="option2" id="directorCheck">
								<label class="form-check-label" for="directorCheck"><b style="color: white;">Director</b></label>
							</div>
						</div>
					</div> -->
					<div class="row mb-1">
						<div class="col">
							<div class="row">
								<div class="col" style="color: white;">아이디</div>
							</div>
							<div class="row">
								<div class="col">
									<input type="text" class="form-control" name="id" placeholder="ID">
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-1">
						<div class="col">
							<div class="row">
								<div class="col" style="color: white;">비밀번호</div>
							</div>
							<div class="row">
								<div class="col">
									<input type="password" class="form-control" name="password" placeholder="PASSWORD">
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-1">
						<div class="col">
							<div class="row">
								<div class="col" style="color: white;">비밀번호 재확인</div>
							</div>
							<div class="row">
								<div class="col">
									<input type="text" class="form-control" name="password" placeholder="PASSWORD">
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-1">
						<div class="col">
							<div class="row">
								<div class="col" style="color: white;">이름</div>
							</div>
							<div class="row">
								<div class="col">
									<input type="text" class="form-control" name="name">
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-1">
						<div class="col">
							<div class="row gx-1">
								<div class="col" style="color: white;">생년월일</div>
								<div class="col" style="color: white;">성별</div>
							</div>
							<div class="row gx-1">
								<div class="col">
									<input type="date" class="form-control" name="dob" placeholder="ex)19920622">
								</div>
								<div class="col">
									<select class="form-select" name="gender">
										<option value="">선택</option>
										<option value="28">남자</option>
										<option value="29">여자</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-1">
						<div class="col">
							<div class="row">
								<div class="col" style="color: white;">메일</div>
							</div>
							<div class="row">
								<div class="col">
									<div class="col input-group">
										<input type="text" class="form-control" name="email">
										<span class="input-group-text">@</span>
										<select class="form-select"  name="email_domain">
											<option value="">선택</option>
											<option value="4">naver.com</option>
											<option value="5">gamil.com</option>
											<option value="6">daum.net</option>
											<option value="7">nate.com</option>
											<option value="8">dreamwiz.com</option>
											<option value="9">freechal.com</option>
											<option value="10">직접입력</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="row">
								<div class="col" style="color: white;">휴대전화</div>
							</div>
							<div class="row mb-1 gx-1">
								<div class="col-4">
									<select class="form-select" name="telecom">
										<option hidden value="">통신사</option>
										<option value="1">SKT</option>
										<option value="2">KT</option>
										<option value="3">LGU+</option>
									</select>
								</div>
								<div class="col">
									<input type="text" class="form-control" name="phone_number">
								</div>
							</div>	
						</div>
					</div>
					<div class="row mt-5 mb-5 gx-2">
						<div class="col d-grid mb-5">
							<button type="button" class="regFrombutton" id="btnActor">배우가입</button>
						</div>
						<div class="col d-grid mb-5">
							<button type="button" class="regFrombutton" id="btnDirector" name="user_type" value="27">감독가입</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
<!-- 부트스트랩 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
<!-- jquery ui CSS -->    
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
	
	var goUrlsifnUpInst = "/member/signUpInst";
	var goUrlActor = "/member/signUpActorForm";
	var goUrlDirector = "/member/signUpDirectorForm";
	
	var form = $("#mainForm")
	
	$("#btnActor").on("click", function(){
		form.attr("action", goUrlActor).submit();
	});

	$("#btnDirector").on("click", function(){	
		form.attr("action", goUrlsifnUpInst).submit();
	});	
		
		
		
		
		
	function btnHome() {
		location.href="/member/mainHome";
	}
	</script>	
	
	
	
</body>
</html>