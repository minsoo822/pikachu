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
	
	/*  div {
		border: solid 1px orange;	
	} */
	 
	 .title {
	 color: white;
	 }
	 
	</style>
</head>
	
<body style="background-color: #101010;">
<form method="post" id="mainForm">
	<!-- start -->
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->

	<div class="tourpost">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">프로필투어 정보</h2>
		</div>
		<div class="base row ps-5 pe-5">
			<div class="col ps-5 pe-5">
				<div class="row">
					<div class="col p-5">
						<h3 style="color: white;">투어정보 입력</h3>
						<div class="row pt-5 mb-3">
							<div class="col-4 title">분류</div>
							<div class="col">
								<select class="form-select" name="tourType">
									<option value="">선택</option>
									<option value="15">상업영화</option>
									<option value="16">단편(독립)영화</option>
									<option value="17">드라마</option>
									<option value="18">웹드라마</option>
									<option value="19">광고(CF)</option>
									<option value="20">바이럴광고</option>
								</select>
							</div>
						</div>
						<div class="row mb-3">
							<div class="col-4 title">제목</div>
							<div class="col">
								<input type="text" class="form-control" name="tourName">
							</div>
						</div>
						<div class="row mb-3">
							<div class="col">
								<div class="row">
									<div class="col-4 title">주소</div>
									<div class="col pb-1">
										<div class="input-group">
											<input readonly type="text" class="form-control" id="zip_code" name="tourZip_code" placeholder="우편번호">
											<button type="button" class="input-group-text" onclick="sample4_execDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
											<button type="button" class="input-group-text" id="address_reset"><i class="fa-solid fa-rotate-left"></i></button>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-4">&nbsp;</div>
									<div class="col pb-1">
										<input readonly type="text" class="form-control" id="address" name="tourAddress" placeholder="도로명주소">
									</div>
		           				</div>
		           				<div class="row">
		           					<div class="col-4">&nbsp;</div>
									<div class="col pb-1">
										<input type="text" class="form-control" id="address_detail" name="tourAddress_detail" placeholder="상세주소"
									</div>
		           				</div>
		           			</div>
		           		</div>
					</div>
					<div class="row">
	           			<div class="col-4 title">비고</div>
	           			<div class="col">
	           				<input type="text" class="form-control" name="tourNote">
	           			</div>
	           		</div>		
				</div>
				<div class="row">
					<div class="col">
						<div class="d-grid gap-4 d-md-flex justify-content-end">
							<button type="button" class="btn btn-primary" id="btnSave">등록</button>
							<button type="button" class="btn btn-primary" id="btnList">목록</button>
						</div>
					</div>
				</div>		
			</div>
		</div>
	</div>
	<div style="padding-top: 60px;">
		<c:if test="${sessAdmin eq 1 }">
			<div class="groupbutton">
				<div class="d-grid gap-2 d-md-block btn1" style="float: left;">
					<button class="btn btn-danger" type="submit"><i class="fa-solid fa-minus"></i></button>
					<a class="btn btn-danger" type="button"><i class="fa-solid fa-trash-can"></i></a>
				</div>
				<div class="d-grid gap-2 d-md-flex btn2">
					<button class="btn btn-success" type="submit"><i class="fa-solid fa-file-excel"></i></button>
					<button class="btn btn-primary" type="button" id="btnForm"><i class="fa-solid fa-plus"></i></button>
				</div>
			</div>
		</c:if>
		<c:if test="${sessAdmin ne 1 }">
			
		</c:if>	
	</div>
<!-- 	<div class="postPagination">
		<ul>
			<li><a href="#"><</a></li>
			<li><a href="#" class="active">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">></a></li>
		</ul>
	</div> -->
	<div class="Pagingdp">
		<div class="pagination">
			<a href="#">Prev</a>
			<a href="#" class="active">1</a>
			<a href="#" class="active">2</a>
			<a href="#" class="active">3</a>
			<a href="#" class="active">4</a>
			<a href="#" class="active">5</a>
			<a href="#">Next</a>
		</div>
	</div>
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
	<script type="text/javascript">

	var goUrlLogout = "/member/logoutForm";
	var goUrlLogin = "/member/loginForm";
	var goUrlTourForm = "/Post/goUrlTourForm"; 			/* #-> */
	var goUrlTourList = "/Post/tourPostViewList";
	var goUrlTourInst = "/Post/tourPostInst";
	
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
		form.attr("action", goUrlTourInst).submit();
	});
	
	$("#btnList").on("click", function(){
		form.attr("action", goUrlTourList).submit();
	});
	
	
	
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
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
	
	<!-- 지도API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</body>
</html>