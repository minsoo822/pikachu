<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body style="background-color: black;">
<form method="post" name="mainForm" action="/member/signUpDirectorInst">
	<div class="container" style="width: 35%">
		<div class="row">
			<div class="col">
				<div class="row text-center pt-5">
					<div class="col">
						<h1 style="color: white; font-size: 70px; letter-spacing: 1px;	cursor: pointer; text-align: center; margin-bottom: 50px;">
						Actor'<span style="color: #f9004d;">s</span></h1>
					</div>
				</div>
				<div class="row">
					<div class="col-3 mb-4">
						<select class="form-select" name="user_type">
							<option value="" hidden>선택</option>
							<option value="26" hidden>배우</option>
							<option value="27" selected>감독</option>
						</select>
					</div>
				</div>
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
								<input type="text" class="form-control" name="" placeholder="PASSWORD">
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
				<div class="row mb-5">
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
				<div class="row">
					<div class="col">
						<h3 class="regText"><i class="fa-solid fa-keyboard"></i>추가 정보 입력</h3>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-4">
						<h4><b>director 구분</b></h4>
					</div>
					<div class="col">
						<select class="form-select" name="">
							<option value="">선택</option>
							<option value="">개인</option>
							<option value="">학생</option>
							<option value="">감독&조감독</option>
							<option value="">제작사</option>
							<option value="">캐스팅디렉터</option>
							<option value="">에이전시</option>
						</select>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>Company정보</b></h4>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<div class="row pb-1">
									<div class="col-2 pt-2 regText">회사이름</div>
									<div class="col">
										<select class="form-select">
											<option></option>
											<option></option>
											<option></option>
											<option></option>
											<option></option>
											<option></option>
											<option></option>
											<option></option>
											<option></option>
										</select>
									</div>
								</div>
								<div class="row pb-1">
									<div class="col-2 pt-2 regText">전화번호</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="row pb-3">
									<div class="col-2 pt-2 mb-4 regText">주소</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
								</div>
							</div>
						</div>	
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>진행한 작품 & 진행중인 작품</b></h4>
							</div>
						</div>
						<div class="row text-center mb-4">
							<div class="col"  id="workPoint">
								<div class="row gx-1">
									<div class="col regText">시기</div>
									<div class="col-2 regText">구분</div>
									<div class="col regText">제목</div>
									<div class="col-1"></div>
								</div>
								<div class="row gx-1">
									<div class="col">
										<div class="input-group">
											<input type="date" class="form-control">
											<span class="input-group-text">~</span>
											<input type="date" class="form-control">
										</div>
									</div>
									<div class="col-2">
										<select class="form-select">
											<option>선택</option>
											<option>상업영화</option>
											<option>단편(독립)영화</option>
											<option>드라마</option>
											<option>웹드라마</option>
											<option>광고(CF)</option>
											<option>바이럴광고</option>
										</select>
									</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
									<div class="col-1">
										<button type="button" class="regFrombutton" onclick="addWork()">
											<i class="fa-solid fa-plus"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-6 d-grid mx-auto mt-3">
								<button type="submit" class="regFrombutton" id="btnDrectorJoin">가입하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script type="text/javascript">
	
		var count_career = 0;
	
		function addWork() {
			
			var tmp = "";
			
			tmp += '<div class="row gx-1" id="mainusCareer'; 
			tmp += count_career;
			tmp += '">';
			tmp += '<div class="col">';
			tmp += '<div class="input-group">';
			tmp += '<input type="date" class="form-control">';
			tmp += '<span class="input-group-text">~</span>';
			tmp += '<input type="date" class="form-control">';
			tmp += '</div>';
			tmp += '</div>';
			tmp += '<div class="col-2">';
			tmp += '<select class="form-select">';
			tmp += '<option>선택</option>';
			tmp += '<option></option>';
			tmp += '<option></option>';
			tmp += '<option></option>';
			tmp += '<option></option>';
			tmp += '<option></option>';
			tmp += '<option></option>';
			tmp += '<option></option>';
			tmp += '</select>';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col-1">';
			tmp += '<button type="button" class="btn btn-danger" onclick="remov(mainusCareer' + count_career + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_career += 1;
			
			$("#workPoint").append(tmp);
		}
			function remove(id) {
				$(id).remove();
			}
		
	</script>
	
</body>
</html>