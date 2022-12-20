<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
	<title>배우 리스트</title>
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
	.chat {
		background-color: transparent;
		border: none;
		color: skyblue;
		font-size: 30px;
		position: relative;
		bottom: 335px;
		left: 135px;
		
	}
	
	</style>
	
</head>
	
<body>
	<form name="mainForm" id="mainForm" method="post" enctype="multipart/form-data">
		<input type="hidden" name="seq">
		<input type="hidden" name="cuMember">
		<input type="hidden" name="gender" id="gender" value="">
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<!-- start -->
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->

	<div class="actorpost">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">배우프로필</h2>
		</div>
		<div class="actortype">
			<ul>
				<li><a href="/Post/ActorPostList">전체</a></li>
			<c:forEach items="${categoriGdList }" var="categoriGdList" varStatus="status" begin="0" end="1" step="1">
				<li>
					<a  id="category${categoriGdList.seq}" name="crArea${categoriGdList.seq}" onclick="area(${categoriGdList.seq})" href="#"><c:out value="${categoriGdList.name }"/></a>
				</li>
				<!-- <li><a href="#">남자</a></li>
				<li><a href="#">여자</a></li> -->
			</c:forEach>
			</ul>
		</div>
		<div class="boxattor row" style="margin-left: auto; margin-right: auto; width: 1180px;">
			<c:forEach items="${list}" var="list" varStatus="status">			
				<div class="cardactor col-2" onclick="javascript:goView(${list.seq});">
					<img src="${list.path}${list.uuidName}" class="card-img-top" alt="">
					<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;"><c:out value="${list.name }"></c:out></h5>
					<div class="pra">
						<input hidden type="text" value="${list.seq }">
						<p style="text-align: center;"><c:out value="${list.age }"></c:out>세</p>
					</div>
					<button type="button" class="chat" onclick="javascript:event.stopPropagation();goChat(${list.seq});" ><i class="fa-solid fa-comment-dots"></i></button>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- pagination s -->
	<%@include file="../user/include/pagination.jsp"%>
	<!-- pagination e -->
	<div style="background-color: #101010;;">
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
	<!-- footer -->
	<div class="footer"">
		<div class="row">
			<div class="col">
				<div class="row footerlogo">
					<div class="col">
						<a href="https://www.jype.com/"><img src="/resources//image/companyImage/jyp.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://kakaoent.com/"><img src="/resources//image/companyImage/kakao.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://www.ygfamily.com/"><img src="/resources//image/companyImage/yg.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://www.sbs.co.kr/"><img src="/resources//image/companyImage/sbs.png" alt="#"></a>
					</div>
				</div>
				<div class="row footermain">
					<div class="col-3">
						<a href="mainViewForm.html"><img src="/resources//image/companyImage/Actor.png"></a>
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
	
	var goUrlMypage = "/member/Mypage";
	var goUrlList = "/Post/ActorPostList"; 			/* #-> */
	
	var seq = $("input:hidden[name=seq]")
	var cuMember = $("input:hidden[name=cuMember]")
	var gender = $("input:hidden[name=gender]");
	var type = $("input:hidden[name=type]");
	var form = $("#mainForm")
	

	
  	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action",goUrlList).submit();
	}
	
	
	
	$("#btnMypage").on("click", function() {
		form.attr("action", goUrlMypage).submit();
	});
	
	goView = function(key) {
		seq.attr("value", key);
		form.attr("action", "/Post/ActorView").submit();
	}
	goChat = function(key) {
		cuMember.attr("value", key);
		form.attr("action", "/chat/instChat").submit();
	}
	
	area = function(key) {
		gender.val(key);
		form.attr("action" , "/Post/ActorPostList").submit();
    };
	
	
	
	
	
	
	
	
	
	
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</body>
</html>