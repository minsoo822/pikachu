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
<form method="post" name="mainForm" action="/member/signUpDirectorInst" enctype="multipart/form-data">
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
						<input type="file" name="Plofil_image" hidden>
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
						<select class="form-select" name="director_type">
							<option value="">선택</option>
							<option value="31">개인</option>
							<option value="32">학생</option>
							<option value="33">감독&조감독</option>
							<option value="34">제작사</option>
							<option value="35">캐스팅디렉터</option>
							<option value="36">에이전시</option>
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
										<select class="form-select" name="company_name_type">
											<option value="">선택</option>
											<option value="43">매니지먼트 숲</option>
											<option value="44">나무엑터스</option>
											<option value="45">매니지먼트 오름</option>
											<option value="46">블라썸엔터테인먼트</option>
											<option value="47">사람엔터테인먼트</option>
											<option value="48">호두엔터테인먼트</option>
											<option value="49">기타</option>
										</select>
									</div>
								</div>
								<div class="row pb-1">
									<div class="col-2 pt-2 regText">전화번호</div>
									<div class="col">
										<input type="text" class="form-control" name="company_tel">
									</div>
								</div>
								<div class="row pb-1">
									<div class="col-2 pt-2 regText">주소</div>
									<div class="col">
										<div class="input-group">
											<input readonly type="text" class="form-control" id="zip_code" name="company_zip_code" placeholder="우편번호">
											<button type="button" class="input-group-text" onclick="sample4_execDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
											<button type="button" class="input-group-text" id="address_reset"><i class="fa-solid fa-rotate-left"></i></button>
										</div>
									</div>
								</div>
								<div class="row pb-1">
									<div class="col-2 pt-2 regText">&nbsp;</div>
									<div class="col">
										<input readonly type="text" class="form-control" id="address" name="company_address" placeholder="도로명주소">
									</div>
								</div>
								<div class="row pb-1 mb-4">
									<div class="col-2 regText">&nbsp;</div>
									<div class="col">
										<input type="text" class="form-control" id="address_detail" name="company_address_detail" placeholder="상세주소">
									</div>
								</div>
								<div class="row pb-3" hidden="">
									<div class="col-2 mb-4  regText">위도</div>
									<div class="col">
										<input readonly type="text" class="form-control" id="address_Lat" name="company_Lat" placeholder="위도">
									</div>
									<div class="col-2 mb-4  regText">경도</div>
									<div class="col">
										<input readonly type="text" class="form-control" id="address_Lng" name="company_Lng" placeholder="경도">
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
											<input type="date" class="form-control" name="companyWork_period_s">
											<span class="input-group-text">~</span>
											<input type="date" class="form-control" name="companyWork_period_e">
										</div>
									</div>
									<div class="col-2">
										<select class="form-select" name="companyWork_type">
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
										<input type="text" class="form-control" name="companyWork_name">
									</div>
									<div class="col-1">
										<button type="button" class="regFrombutton1" onclick="addWork()">
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
<!-- 지도API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script type="text/javascript">
	
	/* 카카오지도API */
  	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip_code').value = data.zonecode;
                document.getElementById("address").value = roadAddr;
                // 커서를 상세주소로 이동한다
                document.getElementById('address_detail').focus();
                
            }
        }).open();
    }
	
  	//주소 리셋
	$("#address_reset").on("click", function() {
		$("#zip_code").val('');
		$("#address").val('');
		$("#address_detail").val('');
	})
	
		var count_career = 0;
	
		function addWork() {
			
			var tmp = "";
			
			tmp += '<div class="row gx-1" id="careerDelete' + count_career + '">';
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
			tmp += '<button type="button" class="regFrombutton1" onclick="remove(careerDelete' + count_career + ')">';
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