<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
	<title>Home</title>
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
	
	<!-- <style type="text/css">
	
	div {
		border: 1px solid orange;
	}
	
	</style> -->
	
	
</head>
	
<body>
	<!-- start -->
<form method="post" id="mainForm" enctype="multipart/form-data">
	<input type="hidden" name="member_seq" value="${sessSeq}">	
 	<!-- start -->
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->

	<div class="oditionpost">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">오디션 공고</h2>
		</div>
		<div class="oditiontype">
			<ul>
				<li><a href="oditionPostViewForm.html" style="color: #f9004d;">전체</a></li>
				<li><a href="#">상업영화</a></li>
				<li><a href="#">단편(독립)영화</a></li>
				<li><a href="#">(웹)드라마</a></li>
				<li><a href="#">(바이럴)CF광고</a></li>
			</ul>
		</div>
		<div class="oditiontable">
			<table class="table oditionView">
				<tr>
					<th>제목</th>
					<th>촬영분류</th>
					<th>제작사</th>
					<th>감독</th>
					<th>촬영장소 / 기간</th>
					<th>담당자</th>
				</tr>
				<tr style="background-color: #ADADAD;">
					<td>
						<input type="text" class="form-control" name="name">
					</td>
					<td>
						<select class="form-select" name="type">
							<option value="">선택</option>
							<option value="15">상업영화</option>
							<option value="16">단편(독립)영화</option>
							<option value="17">드라마</option>
							<option value="18">웹드라마</option>
							<option value="19">광고(CF)</option>
							<option value="20">바이럴광고</option>
						</select>
					</td>
					<td>
						<input type="text" class="form-control" name="producer">
					</td>
					<td>
						<input type="text" class="form-control" name="director">
					</td>
					<td>
						<input type="text" class="form-control" name="location">
					</td>
					<td>
						<input type="text" class="form-control" name="manager">
					</td>
				</tr>
				<tr>
					<th>극중배역</th>
					<th>모집나이</th>
					<th>성별</th>
					<th>출연료</th>
					<th>이메일</th>
					<th>마감일</th>
				</tr>
				<tr style="background-color: #ADADAD;">
					<td>
						<input type="text" class="form-control" name="casting">
					</td>
					<td>
						<input type="text" class="form-control" name="age">
					</td>
					<td>
						<select class="form-select" name="gender">
							<option value="">선택</option>
							<option value="28">남자</option>
							<option value="29">여자</option>
							<option value="50">남,여 모두</option>
						</select>
					</td>
					<td>
						<input type="text" class="form-control" name="pay">
					</td>
					<td>
						<input type="text" class="form-control" name="email">
					</td>
					<td>
						<input type="date" class="form-control" name="deadline">
					</td>
				</tr>
				<tr>
					<th>포스트사진</th>
					<th>
						<input type="file" class="form-control" name="post_image" style="width: 235px;">
					</th>
					<th>촬영지역</th>
					<th>
						<input type="hidden" id="sample6_postcode" name="zip_code" placeholder="우편번호">
						<input type="text" class="form-control" name="address"  id="sample6_address" placeholder="주소">
					</th>
					<th>
						<input type="text" class="form-control" name="address_detail"  id="sample6_detailAddress" placeholder="상세주소">
						<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
					</th>
					<th>
						<button type="button" class="btn btn-secondary d-flex justify-content-end" onclick="sample6_execDaumPostcode()">주소검색</button>
					</th>
				</tr>
				
				
				
				
			</table>
			<input hidden="" type="text" value="">
			<textarea class="area" rows="" cols="" name="contents" style="padding-left: 30px;"></textarea>
		</div>
		<div class="row mt-5" style="width: 1400px; margin-left: auto; margin-right: auto;">
			<div class="col d-grid justify-content-end" style="width: 1400px; margin-right: auto; margin-left: auto; margin-top: 15px;">
				<div class="d-grid gap-4 d-md-flex justify-content-end">
					<button type="button" class="regFrombutton" id="btnSave">등록</button>
					<button type="button" class="regFrombutton" id="btnList">목록</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- <div class="postPagination">
		<ul style="position: absolute; top: 133%">
			<li><a href="#"><</a></li>
			<li><a href="#" class="active">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">></a></li>
		</ul>
	</div> -->
	<!-- footer -->
	<div class="footer"">
		<div class="row">
			<div class="col">
				<div class="row footerlogo">
					<div class="col">
						<a href="https://www.jype.com/"><img src="/resources/image/companyImage/jyp.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://kakaoent.com/"><img src="/resources/image/companyImage/kakao.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://www.ygfamily.com/"><img src="/resources/image/companyImage/yg.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://www.sbs.co.kr/"><img src="/resources/image/companyImage/sbs.png" alt="#"></a>
					</div>
				</div>
				<div class="row footermain">
					<div class="col-3">
						<a href="mainViewForm.html"><img src="/resources/image/companyImage/Actor.png"></a>
					</div>
					<div class="col-9 mt-3" style="text-align: left;">
					 	<h6>Copyrightⓒ 2022. Ator's All pictures cannot be copied without permission.</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>

	<script type="text/javascript">
	
	var goUrlLogout = "/member/logoutForm";
	var goUrlLogin = "/member/loginForm";
	var goUrlOditionForm = "/Post/oditionPostForm"; 			/* #-> */
	var goUrlOditionList = "/Post/oditionPostViewList";
	var goUrlOditionInst = "/Post/oditionInst";
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	

	$("#btnLogin").on("click", function() {
		form.attr("action", goUrlLogin).submit();
	});
	
	$("#btnLogout").on("click", function() {
		form.attr("action", goUrlLogout).submit();
	});
	
	
	$("#btnSave").on("click", function(){
		form.attr("action", goUrlOditionInst).submit();
	});
	
	$("#btnList").on("click", function(){
		form.attr("action", goUrlOditionList).submit();
	});
	
	
	
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
</body>
</html>