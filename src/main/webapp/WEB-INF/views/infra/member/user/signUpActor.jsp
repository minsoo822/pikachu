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
<form method="post" id="mainForm">
	<div class="container" style="width: 35%">
		<div class="row">
			<div class="col">
				<div class="row text-center pt-5">
					<div class="col">
						<h1 style="color: white; font-size: 70px; letter-spacing: 1px;	cursor: pointer; text-align: center; margin-bottom: 50px;">
						Actor'<span style="color: #f9004d;">s</span></h1>
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
						<h3 class="regText"><i class="fa-solid fa-keyboard"></i>추가정보 입력</h3>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>개인정보 입력</b></h4>
							</div>
						</div>
						<div class="row text-center">
							<div class="col">
								<div class="row pb-1">
									<div class="col pt-2 regText">키</div>
									<div class="col">
										<input type="text" class="form-control" name="actor_height">
									</div>
									<div class="col pt-2 regText">몸무게</div>
									<div class="col">
										<input type="text" class="form-control" name="actor_weight">
									</div>
								</div>
								<div class="row">
									<div class="col pt-2 regText">쌍꺼풀유무</div>
									<div class="col">
										<select class="form-select" name="actor_eyelid">
											<option vlaue="">선택</option>
											<option vlaue="37">겉쌍꺼풀</option>
											<option vlaue="38">속쌍꺼풀</option>
											<option vlaue="39">무쌍꺼풀</option>
										</select>
									</div>
									<div class="col pt-2 regText">목소리톤</div>
									<div class="col">
										<select class="form-select" name="actor_voice">
											<option vlaue="">선택</option>
											<option vlaue="40">고음</option>
											<option vlaue="41">중음</option>
											<option vlaue="42">저음</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col"><h4><b>SNS</b></h4></div>
						</div>
						<div class="row">
							<div class="col">
								<div class="row pb-1">
									<div class="col-3 pt-2 regText">페이스북</div>
									<div class="col">
										<input type="text" class="form-control" placeholder="url">
									</div>
								</div>
								<div class="row pb-1">
									<div class="col-3 pt-2 regText">인스타</div>
									<div class="col">
										<input type="text" class="form-control" placeholder="url">
									</div>
								</div>
								<div class="row pb-1">
									<div class="col-3 pt-2 regText">유튜브</div>
									<div class="col">
										<input type="text" class="form-control" placeholder="url">
									</div>
								</div>
								<div class="row">
									<div class="col-3 pt-2 regText">홈페이지</div>
									<div class="col">
										<input type="text" class="form-control" placeholder="url">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class=row>
					<div class="col-3"><h4><b>소속사</b></h4></div>
					<div class="col-3">
						<select class="form-select" name="company_useNy">
							<option>선택</option>
							<option vlaue="0">Y</option>
							<option vlaue="1">N</option>
						</select>
					</div>
					<div class="col-6"></div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>특기</b></h4>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="text" class="form-control" name="actor_specialty">
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col" id="filmoPoint">
						<div class="row">
							<div class="col">
								<h4><b>필모그래피</b></h4>
							</div>
						</div>
						<div class="row text-center gx-1">
							<div class="col-4 regText">시기</div>
							<div class="col regText">구분</div>
							<div class="col regText">제작사</div>
							<div class="col regText">제목</div>
							<div class="col regText">역활</div>
							<div class="col-1 regText"></div>
						</div>
						<div class="row gx-1 text-center">
							<div class="col-4">
								<input type="date" class="form-control">
							</div>
							<div class="col">
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
							<div class="col">
								<input type="text" class="form-control">
							</div>
							<div class="col">
								<input type="text" class="form-control">
							</div>
							<div class="col-1">
								<button type="button" class="regFrombutton" onclick="addFilmo()">
									<i class="fa-solid fa-plus"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>연기 영상</b></h4>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="file" class="form-control">
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>프로필 사진</b></h4>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="file" class="form-control">
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col" id="eduPoint">
						<div class="row">
							<div class="col">
								<h4><b>학력</b></h4>
							</div>
						</div>
						<div class="row text-center gx-1">
							<div class="col-4 regText">시기</div>
							<div class="col regText">학교명</div>
							<div class="col regText">전공</div>
							<div class="col regText">구분</div>
							<div class="col-1 regText"></div>
						</div>
						<div class="row gx-1 text-center">
							<div class="col-4">
								<input type="date" class="form-control">
							</div>
							<div class="col">
								<input type="text" class="form-control">
							</div>
							<div class="col">
								<input type="text" class="form-control">
							</div>
							<div class="col">
								<select class="form-select"></select>
							</div>
							<div class="col-1">
								<button type="button" class="regFrombutton" onclick="addEdu()">
									<i class="fa-solid fa-plus"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>수상 및 경력</b></h4>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<div class="row text-center gx-1">
									<div class="col-4 regText">시기</div>
									<div class="col regText">발급기관</div>
									<div class="col regText">발급내용</div>
									<div class="col-1 regText"></div>
								</div>
								<div class="row gx-1 text-center">
									<div class="col-4">
										<input type="date" class="form-control">
									</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
									<div class="col-1">
										<button type="button" class="regFrombutton">
											<i class="fa-solid fa-plus"></i>
										</button>
									</div>
								</div>
								<div class="row text-center gx-1">
									<div class="col-4 regText">시기</div>
									<div class="col regText">회사명</div>
									<div class="col regText">직책</div>
									<div class="col-1"></div>
								</div>
								<div class="row gx-1 text-center">
									<div class="col-4">
										<input type="date" class="form-control">
									</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
									<div class="col">
										<input type="text" class="form-control">
									</div>
									<div class="col-1">
										<button type="button" class="regFrombutton">
											<i class="fa-solid fa-plus"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row mb-4">
					<div class="col">
						<div class="row">
							<div class="col">
								<h4><b>자기소개</b></h4>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<textarea class="form-control" rows="" cols="" name="aboutMe"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="row mb-5">
					<div class="col d-grid">
						<button type="button" class="regFrombutton" id="actorSignUp">가입하기</button>
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
	
	
	
	form = $("mainForm")
	
	$("#actorSignUp").on("click", function(){
		form.attr("action", "/member/signUpActorInst").submit();
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		var count_filmo = 0;	
	
		function addFilmo() {
		
		var tmp = "";
			
			tmp += '<div class="row" id="filmoDelete' + count_filmo + '">';
			tmp += '<div class="col-4">';
			tmp += '<input type="date" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<select class="form-select"></select>';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col-1">';
			tmp += '<button type="button" class="btn btn-danger" onclick="remove(filmoDelete' + count_filmo + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_filmo += 1;
			
	 	
			$("#filmoPoint").append(tmp);
		}
		
			function remove(id) {
				
				$(id).remove();
			}
			
			function addEdu() {
				
				var tmp = "";
				
				tmp += '<div class="row">';
				tmp += '<div class="col-4">';
				tmp += '<input type="date" class="form-control">';
				tmp += '</div>';
				tmp += '<div class="col">';
				tmp += '<input type="text" class="form-control">';
				tmp += '</div>';
				tmp += '<div class="col">';
				tmp += '<input type="text" class="form-control">';
				tmp += '</div>';
				tmp += '<div class="col">';
				tmp += '<select class="form-select"></select>';
				tmp += '</div>';
				tmp += '<div class="col-1">';
				tmp += '<button type="button" class="btn btn-danger" onclick="addEdu()">';
				tmp += '<i class="fa-solid fa-minus"></i>';
				tmp += '</button>';
				tmp += '</div>';
				tmp += '</div>';
				
				$("#eduPoint").append(tmp);
				
				
			}
	</script>
	
	
</body>
</html>