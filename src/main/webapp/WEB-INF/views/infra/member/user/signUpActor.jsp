<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<title>배우 가입페이지</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->
	    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->
	<!-- Google tag (gtag.js) -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-CRMXLJZ8GE"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'G-CRMXLJZ8GE');
	</script>
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


	<style type="text/css">
		span {
			color: red;
		}		
		
		/* 이미지 프리뷰 s */
		.preview {
			margin-bottom: 50px;
		}
	    .imgs_wrap {
			background: gray;
			height: 150px;
		}
		.imgs_wrap img {
			height: 140px;
			width: 100px;
			max-width: 100%;
			max-height: 100%;
			padding: 10px 0px 0px 15px;
		}
    /* 이미지 프리뷰 e */
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
								<input type="hidden" id="idAllowedNy" name=idAllowedNy" value="0">
								<input type="text" class="form-control" id="id" name="id" placeholder="ID">
								<span id="id_check"></span>
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
								<input type="password" class="form-control" id="pwd" name="password" placeholder="PASSWORD">
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
								<input type="password" class="form-control" id="pwd2" name="password" placeholder="PASSWORD">
								<span id="alert-success" style="display: none; color: lightgreen; text-align: left;"><i class="fa-solid fa-check"></i> 비밀번호가 일치합니다.</span>
								<span id="alert-danger" style="display: none; color: red; text-align: left;"><i class="fa-solid fa-xmark"></i> 비밀번호가 일치하지 않습니다.</span>
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
								<select class="form-select" name="sns_types">
									<option value="">선택</option>
									<option value="11">인스타</option>
									<option value="12">페이스북</option>
									<option value="13">유튜브</option>
									<option value="14">홈페이지</option>
								</select>
							</div>
							<div class="col gx-1">
								<input type="text" class="form-control" placeholder="url" name="urls">
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
							<div class="col-3 regText">시기</div>
							<div class="col regText">구분</div>
							<div class="col regText">제작사</div>
							<div class="col regText">제목</div>
							<div class="col regText">역활</div>
							<div class="col-1 regText"></div>
						</div>
						<div class="row gx-1 text-center pb-1">
							<div class="col-3">
								<input type="date" class="form-control" name="filmo_periods">
							</div>
							<div class="col">
								<select class="form-select" name="filmo_types">
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
								<input type="text" class="form-control" name="filmo_producers">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="filmo_names">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="filmo_roles">
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
								<span>영상은 최대 2개까지 가능합니다</span>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="file" class="form-control" name="video" multiple>
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
								<span>사진은 최소2장 최대5장 을 넣어주세요</span>
							</div>
						</div>
						<div class="row preview">
							<div class="col">
								<input type="file" id="input_imgs" class="form-control" multiple name="plofil_image">
							</div>
						</div>
						<div class="row">
							<div class="col imgs_wrap">
							
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
								<div class="input-group">
									<input type="date" class="form-control" name="edu_periods_s">
									<span class="input-group-text">~</span>
									<input type="date" class="form-control" name="edu_periods_e">
								</div>
							</div>
							<div class="col">
								<input type="text" class="form-control" name="school_names">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="edu_majors">
							</div>
							<div class="col">
								<select class="form-select" name="edu_types">
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
												<input type="date" class="form-control" name="award_periods">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="award_names">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="award_issuers">
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
												<input type="date" class="form-control" name="career_periods">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="career_company_names">
											</div>
											<div class="col">
												<input type="text" class="form-control" name="career_positions">
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
								<textarea class="form-control" rows="" cols="" name="aboutMe"></textarea>
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
		form.attr("action", "/member/signUpActorInst").submit();
	});
		
		/* $("#id").on("focusout", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/idCheck"
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						$("#id").classList.add('is-valid');

						$("#idFeedback").classList.remove('invalid-feedback');
						$("#idFeedback").classList.add('valid-feedback');
						$("#idFeedback").innerText = "사용 가능합니다.";
						
						$("#idAllowedNy").value = 1;
						
					} else {
						$("#id").classList.add('is-invalid');
						
						$("#idFeedback").classList.remove('valid-feedback');
						$("#idFeedback").classList.add('invalid-feedback');
						$("#idFeedback").innerText = "사용 불가합니다.";
						
						$("#idAllowedNy").value = 0;
					}
				}
			});
		}); */
		$("#id").on("focusout", function(){ 
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/idCheck"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,dataType : 'json'
				,success: function(response) {
					if(response.rt == "success") {
						$("#id_check").text("사용가능한 아이디입니다.");
						$("#id_check").css("color", "lightgreen");
					} else {
						$("#id_check").text("이미 사용중인 아이디입니다.");
						$("#id_check").css("color", "red");
					}
				}
			});
		});
		$('#pwd2').focusout(function () {
	        var pwd1 = $("#pwd").val();
	        var pwd2 = $("#pwd2").val();
	  
	        if ( pwd1 != '' && pwd2 == '' ) {
	            null;
	        } else if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	                $("#alert-success").css('display', 'inline-block');
	                $("#alert-danger").css('display', 'none');
	            } else {
	                $("#alert-success").css('display', 'none');
	                $("#alert-danger").css('display', 'inline-block');
	            }
	        }
	    });
		
		
		
	
	</script>
	
	<script type="text/javascript">
//		Sns추가
		var count_sns = 0;	
		
		function addSns() {
		
		var tmp = "";	
			
			tmp += '<div class="row pb-1 text-center" id="snsDelete' + count_sns + '">';
			tmp += '<div class="col-3 gx-1">';
			tmp += '<select class="form-select" name="sns_types">';
			tmp += '<option value="">선택</option>';
			tmp += '<option value="11">인스타</option>';
			tmp += '<option value="12">페이스북</option>';
			tmp += '<option value="13">유튜브</option>';
			tmp += '<option value="14">홈페이지</option>';
			tmp += '</select>';
			tmp += '</div>';
			tmp += '<div class="col gx-1">';
			tmp += '<input type="text" class="form-control" placeholder="url" name="urls">';
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
			tmp += '<input type="date" class="form-control" name="filmo_periods">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<select class="form-select" name="filmo_types">';
			tmp += '<option value="">선택</option>';
			tmp += '<option value="15">상업영화</option>';
			tmp += '<option value="16">단편(독립)영화</option>';
			tmp += '<option value="17">드라마</option>';
			tmp += '<option value="18">웹드라마</option>';
			tmp += '<option value="19">광고(CF)</option>';
			tmp += '<option value="20">바이럴광고</option>';
			tmp += '</select>';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="filmo_producers">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="filmo_names">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="filmo_roles">';
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
			tmp += '<input type="date" class="form-control" name="edu_periods">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="school_names">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="edu_majors">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<select class="form-select" name="edu_types">';
			tmp += '<option value="">선택</option>';
			tmp += '<option value="21">졸업</option>';
			tmp += '<option value="22">재학</option>';
			tmp += '<option value="23">휴학</option>';
			tmp += '<option value="24">중퇴</option>';
			tmp += '<option value="25">퇴학</option>';
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
			tmp += '<input type="date" class="form-control" name="award_periods">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="award_names">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="award_issuers">';
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
			tmp += '<input type="date" class="form-control" name="career_periods">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="career_company_names">';
			tmp += '</div>';
			tmp += '<div class="col">';
			tmp += '<input type="text" class="form-control" name="career_positions">';
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
	
//		이미지 여러장 미리보기
	    $("#file").on('change',function(){
	    	  var fileName = $("#file").val();
	    	  $(".upload-name").val(fileName);
	    	});
	    
	    var sel_files = [];

	    $(document).ready(function() {
	        $("#input_imgs").on("change", handleImgsFilesSelect);
	    }); 

	    function handleImgsFilesSelect(e) {
	        var files = e.target.files;
	        var filesArr = Array.prototype.slice.call(files);

	        filesArr.forEach(function(f) {
	            if(!f.type.match("image.*")) {
	                alert("확장자는 이미지 확장자만 가능합니다.");
	                return;
	            }

	            sel_files.push(f);

	            var reader = new FileReader();
	            reader.onload = function(e) {
	                var img_html = "<img src=\"" + e.target.result + "\" />";
	                $(".imgs_wrap").append(img_html);
	            }
	            reader.readAsDataURL(f);
	        });
	    }
	    
	    $("#input_imgs").on('change',function(){
	    	  var fileName = $("#input_imgs").val();
	    	  $(".upload-name").val(fileName);
	    	});
	    
		
		</script>
	
</body>
</html>