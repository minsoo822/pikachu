<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<title>Actor's</title>
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


	<style type="text/css">
		span {
			color: red;
		}		
	
	</style>
	

</head>

<body style="background-color: black;">
<form method="post" id="mainForm" action="/member/signUpActorInst" enctype="multipart/form-data">
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
							<option value="26" selected>배우</option>
							<option value="27" hidden>감독</option>
						</select>
					</div>
				</div>
				<div class="row mb-1">
					<div class="col">
						<div class="row">
							<div class="col" style="color: white;">아이디<span>*</span></div>
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
							<div class="col" style="color: white;">비밀번호<span>*</span></div>
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
							<div class="col" style="color: white;">비밀번호 재확인<span>*</span></div>
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
							<div class="col" style="color: white;">이름<span>*</span></div>
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
							<div class="col" style="color: white;">나이</div>
							<div class="col" style="color: white;">성별</div>
						</div>
						<div class="row gx-1">
							<div class="col">
								<input type="date" class="form-control" name="dob" placeholder="ex)19920622">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="age">
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
							<div class="col-4" style="color: white;">통신사</div>
							<div class="col" style="color: white;">전화번호</div>
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
											<option value="">선택</option>
											<option value="37">겉쌍꺼풀</option>
											<option value="38">속쌍꺼풀</option>
											<option value="39">무쌍꺼풀</option>
										</select>
									</div>
									<div class="col pt-2 regText">목소리톤</div>
									<div class="col">
										<select class="form-select" name="actor_voice">
											<option value="">선택</option>
											<option value="40">고음</option>
											<option value="41">중음</option>
											<option value="42">저음</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class="row">
					<div class="col" id="snsPoint">
						<div class="row">
							<div class="col"><h4><b>SNS</b></h4></div>
						</div>
						<div class="row pb-1 text-center">
							<div class="col-3 gx-1">
								<select class="form-select" name="sns_type">
									<option value="">선택</option>
									<option value="11">인스타</option>
									<option value="12">페이스북</option>
									<option value="13">유튜브</option>
									<option value="14">홈페이지</option>
								</select>
							</div>
							<div class="col gx-1">
								<input type="text" class="form-control" placeholder="url" name="url">
							</div>
							<div class="col-1 gx-1">
								<button type="button" class="regFrombutton1" onclick="addSns()">
									<i class="fa-solid fa-plus"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<hr style="color: gray;">
				<div class=row>
					<div class="col-3"><h4><b>소속사<span>*</span></b></h4></div>
					<div class="col-3">
						<select class="form-select" name="company_useNy">
							<option value="">선택</option>
							<option value="0">N</option>
							<option value="1">Y</option>
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
								<input type="text" class="form-control" name="">
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
							<div class="col-3 regText">시기</div>
							<div class="col regText">구분</div>
							<div class="col regText">제작사</div>
							<div class="col regText">제목</div>
							<div class="col regText">역활</div>
							<div class="col-1 regText"></div>
						</div>
						<div class="row gx-1 text-center pb-1">
							<div class="col-3">
								<input type="date" class="form-control" name="filmo_period">
							</div>
							<div class="col">
								<select class="form-select" name="filmo_type">
									<option value="">선택</option>
									<option value="15">상업영화</option>
									<option value="16">단편(독립)영화</option>
									<option value="17">드라마</option>
									<option value="18">웹드라마</option>
									<option value="19">광고(CF)</option>
									<option value="20">바이럴광고</option>
								</select>
							</div>
							<div class="col">
								<input type="text" class="form-control" name="filmo_producer">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="filmo_name">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="filmo_role">
							</div>
							<div class="col-1">
								<button type="button" class="regFrombutton1" onclick="addFilmo()">
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
								<input type="file" class="form-control" name="plofil_image">
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
						<div class="row gx-1 text-center pb-1">
							<div class="col-4">
								<input type="date" class="form-control" name="edu_period">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="school_name">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="edu_major">
							</div>
							<div class="col">
								<select class="form-select" name="edu_type">
									<option value="">선택</option>
									<option value="21">졸업</option>
									<option value="22">재학</option>
									<option value="23">휴학</option>
									<option value="24">중퇴</option>
									<option value="25">퇴학</option>
								</select>
							</div>
							<div class="col-1">
								<button type="button" class="regFrombutton1" onclick="addEdu()">
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
								<div class="row">
									<div class="col" id="awardPoint">
										<div class="row text-center gx-1">
											<div class="col-4 regText">시기</div>
											<div class="col regText">발급기관</div>
											<div class="col regText">발급내용</div>
											<div class="col-1 regText"></div>
										</div>
										<div class="row gx-1 text-center pb-1">
											<div class="col-4">
												<input type="date" class="form-control" name="award_period">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="award_name">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="award_issuer">
											</div>
											<div class="col-1">
												<button type="button" class="regFrombutton1" onclick="addAward()">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
									</div>
								</div>		
								<div class="row">
									<div class="col" id="careerdPoint">
										<div class="row text-center gx-1">
											<div class="col-4 regText">시기</div>
											<div class="col regText">회사명</div>
											<div class="col regText">직책</div>
											<div class="col-1"></div>
										</div>
										<div class="row gx-1 text-center pb-1">
											<div class="col-4">
												<input type="date" class="form-control" name="career_period">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="career_company_name">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="career_position">
											</div>
											<div class="col-1">
												<button type="button" class="regFrombutton1" onclick="addCareer()">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
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
								<textarea class="form-control" rows="" cols="" name=""></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="row mb-5">
					<div class="col d-grid">
						<button type="submit" class="regFrombutton" >가입하기</button>
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
	
	var goActSignUp = "/member/signUpActorInst";
	
	form = $("mainForm")
	
	
	$("#actorSignUp").on("click", function() {
		alert("왜안돼");
		form.attr("action", "/member/signUpActorInst").submit();
	});
	
	</script>
	
	<script type="text/javascript">
//		Sns추가
		var count_sns = 0;	
		
		function addSns() {
		
		var tmp = "";	
			
			tmp += '<div class="row pb-1 text-center" id="snsDelete' + count_sns + '">';
			tmp += '<div class="col-3 gx-1">';
			tmp += '<select class="form-select" name="sns_type">';
			tmp += '<option value="">선택</option>';
			tmp += '<option value="11">인스타</option>';
			tmp += '<option value="12">페이스북</option>';
			tmp += '<option value="13">유튜브</option>';
			tmp += '<option value="14">홈페이지</option>';
			tmp += '</select>';
			tmp += '</div>';
			tmp += '<div class="col gx-1">';
			tmp += '<input type="text" class="form-control" placeholder="url" name="url">';
			tmp += '</div>';
			tmp += '<div class="col-1 gx-1">';
			tmp += '<button type="button" class="regFrombutton1" onclick="remove(snsDelete' + count_sns + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_sns += 1;
			
			$("#snsPoint").append(tmp);
		}	
//		필모그래피추가
		var count_filmo = 0;	
		
		function addFilmo() {
		
		var tmp = "";
			
			tmp += '<div class="row gx-1 text-center pb-1" id="filmoDelete' + count_filmo + '">';
			tmp += '<div class="col-3">';
			tmp += '<input type="date" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<select class="form-select">';
			tmp += '<option>선택</option>';
			tmp += '<option>상업영화</option>';
			tmp += '<option>단편(독립)영화</option>';
			tmp += '<option>드라마</option>';
			tmp += '<option>웹드라마</option>';
			tmp += '<option>광고(CF)</option>';
			tmp += '<option>바이럴광고</option>';
			tmp += '</select>';
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
			tmp += '<button type="button" class="regFrombutton1" onclick="remove(filmoDelete' + count_filmo + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_filmo += 1;
	 	
			$("#filmoPoint").append(tmp);
		}
//		학력사항	
		var count_edu = 0;	
	
		function addEdu() {
		
		var tmp = "";
			
			tmp += '<div class="row gx-1 text-center pb-1" id="eduDelete' + count_edu + '">';
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
			tmp += '<select class="form-select">';
			tmp += '<option>선택</option>';
			tmp += '<option>졸업</option>';
			tmp += '<option>재학</option>';
			tmp += '<option>휴학</option>';
			tmp += '<option>중퇴</option>';
			tmp += '<option>퇴학</option>';
			tmp += '</select>';
			tmp += '</div>';
			tmp += '<div class="col-1">';
			tmp += '<button type="button" class="regFrombutton1" onclick="remove(eduDelete' + count_edu + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_edu += 1;
			
			$("#eduPoint").append(tmp);
		}
//		수상
		var count_award = 0;	
		
		function addAward() {
	
		var tmp = "";	
		
			tmp += '<div class="row gx-1 text-center pb-1" id="awardDelete' + count_award + '">';
			tmp += '<div class="col-4">';
			tmp += '<input type="date" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col-1">';
			tmp += '<button type="button" class="regFrombutton1" onclick="remove(awardDelete' + count_award + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_award += 1;
			
			$("#awardPoint").append(tmp);
		}
//		경력사항
		var count_carrer = 0;
		
		function addCareer(){
			
		var tmp = "";
		
			tmp += '<div class="row gx-1 text-center pb-1" id="carrerDelete' + count_carrer + '">';
			tmp += '<div class="col-4">';
			tmp += '<input type="date" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control">';
			tmp += '</div>';
			tmp += '<div class="col-1">';
			tmp += '<button type="button" class="regFrombutton1" onclick="remove(carrerDelete' + count_carrer + ')">';
			tmp += '<i class="fa-solid fa-minus"></i>';
			tmp += '</button>';
			tmp += '</div>';
			tmp += '</div>';
			
			count_carrer += 1;
			
			$("#careerdPoint").append(tmp);
		}
		
		
		function remove(id) {
			
			$(id).remove();
		}
			
	
		</script>
	
</body>
</html>