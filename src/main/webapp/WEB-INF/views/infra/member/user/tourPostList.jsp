<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>

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
	/* div {
		border: 1px solid orange;
	} */
	</style>
</head>
	
<body style="background-color: #101010;">
<form method="post" id="mainForm">
	<input type="hidden" name="seq" value="${dto.seq }">
	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<c:set var="listCodeFilmo_type" value="${CodeServiceImpl.selectListCachedCode('4') }"></c:set>
	<!-- start -->
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->
	
	<div class="tourpost">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">프로필투어 정보</h2>
				<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
				sessName: <c:out value="${sessName }"/><br>
				sessId: <c:out value="${sessId }"/><br>
				sessAdmin <c:out value="${sessAdmin }"></c:out> --%>
		</div>
		<div class="search">
			<div>
				<select class="form-select" name="shOption">
					<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>선택</option>
					<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>작품분류</option>
					<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>작품제목</option>
					<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>위치</option>
				</select>
			</div>
			<div style="padding: 0px 5px;">
				<input type="text" class="form-control" name="shValue" value="${vo.shValue }">
			</div>
			<div class="d-grid d-md-block">
				<button type="submit" class="btn btn-primary">검색</button>
				<button type="button" class="btn btn-primary" id="searchReset">리셋</button>
			</div>
		</div>
		<table class="tourtable">
			<thead>
				<tr>
					<th>순번</th>
					<th>분류</th>
					<th>작품제목 (제작사)</th>
					<th>위치</th>
					<th>생성일</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td style="text-align: center;" colspan="9"> no Data!</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td>
									<c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/>      <%--  순서 카운트  --%>
								</td>
								<td>
									<c:forEach items="${listCodeFilmo_type }" var="listFilmo_type" varStatus="statuslistCodeFilmo_type">
										<c:if test="${list.tourType eq listFilmo_type.seq }"><c:out value="${listFilmo_type.name }"/></c:if>	
									</c:forEach>	
								</td>
								<td><c:out value="${list.tourName }"/></td>
								<td><c:out value="${list.tourAddress }"/></td>
								<td><c:out value="${list.tourDate }"/></td>
								<td><c:out value="${list.tourNote }"/></td>
							</tr>	
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>	
		</table>
	</div>
	<div style="padding-top: 50px;">
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
	<!-- pagination s -->
	<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
	<!-- pagination e -->
	<!-- footer -->
	<div class="footer">
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
	var goUrlIndex = "/member/mainIndex"; 			/* #-> */
	var goUrlMain = "/member/mainHome";
	var goUrlTourForm = "/Post/tourPostForm";
	var goUrlTourList = "/Post/tourPostViewList";
	var goUrlMypage = "/member/Mypage";
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	

	$("#btnLogin").on("click", function() {
		form.attr("action", goUrlLogin).submit();
	});
	
	$("#btnLogout").on("click", function() {
		form.attr("action", goUrlLogout).submit();
	});
	$("#btnMypage").on("click", function() {
		form.attr("action", goUrlMypage).submit();
	});
	$("#btnForm").on("click", function() {
		form.attr("action", goUrlTourForm).submit();
	});
	
	$("#searchReset").on("click", function() {
		form.attr("action", goUrlTourList).submit();
	});
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action",goUrlTourList).submit();
	}
	
	
	
	
	
	
	
	
	
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</body>
</html>