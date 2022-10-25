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
 	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/member/mainHome">Actor'<span>s</span></a></h2>
				<ul>
					<li><a href="/Post/tourPostViewList">프로필 투어</a></li>
					<li><a href="/Post/oditionPostViewList">오디션 공고</a>
						<ul>
							<li><a href="/Post/oditionPostViewList">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul>
					</li>	
					<li><a href="/Post/ActorPostList">프로필 정보</a>
						<ul>
							<li><a href="/Post/ActorPostList">전체</a></li><br>
							<li><a href="actorPostManViewForm.html">남자</a></li><br>
							<li><a href="actorPostWomanViewForm.html">여자</a></li>
						</ul>
					</li>	
					<li><a href="#" class="disableLink">커뮤니티</a>
						<!-- <ul>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">Q&A게시판</a></li>
							<li><a href="#">홍보게시판</a></li>
							<li><a href="#">스터디게시판</a></li>
						</ul> -->
					</li>
					<li><a href="#" class="disableLink">자료실</a>
						<!-- <ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">한국시나리오</a></li>
							<li><a href="#">외국시나리오</a></li>
							<li><a href="#">자작시나리오</a></li>
							<li><a href="#">기타자료실</a></li>
						</ul> -->
					</li>
				</ul>
			<div>
				<c:if test="${sessSeq eq null }">
					<button type="button" class="btn" id="" data-bs-toggle="modal" data-bs-target="#staticBackdrop">회원가입</button>
					<button type="button" class="btn" id="btnLogin">로그인</button>
				</c:if>
				<c:if test="${sessSeq ne null }">
					<button type="button" class="btn">마이페이지</button>
					<button type="button" class="btn" id="btnLogout">로그아웃</button>
				</c:if>	
			</div>
		</nav>
	</div>

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
				</tr>
			</table>
			<input hidden="" type="text" value="">
			<textarea class="area" rows="" cols="" name="contents">
			
			
			</textarea>
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
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>