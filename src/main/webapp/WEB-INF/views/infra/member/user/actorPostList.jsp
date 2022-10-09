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
	
</head>
	
<body>
	<!-- start -->
 	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/member/mainHome">Actor'<span>s</span></a></h2>
				<ul>
					<li><a href="/member/tourPostViewForm">프로필 투어</a></li>
					<li><a href="/member/oditionPostViewForm">오디션 공고</a>
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul>
					</li>	
					<li><a href="/member/actorPostViewForm">프로필 정보</a>
						<ul>
							<li><a href="actorPostViewForm.html">전체</a></li><br>
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
				<button type="button" class="btn" id="btnSignUp" disabled>회원가입</button>
				<button type="button" class="btn" id="btnLogin">로그인</button>
			</c:if>
			<c:if test="${sessSeq ne null }">
				<button type="button" class="btn">마이페이지</button>
				<button type="button" class="btn" id="btnLogout">로그아웃</button>
			</c:if>	
				<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
				sessName: <c:out value="${sessName }"/><br>
				sessId: <c:out value="${sessId }"/><br> --%>
			</div>
			</div>
		</nav>
	</div>

	<div class="actorpost">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">배우프로필</h2>
		</div>
		<div class="actortype">
			<ul>
				<li><a href="#">전체</a></li>
				<li><a href="#">남자</a></li>
				<li><a href="#">여자</a></li>
			</ul>
		</div>
	
		<div class="boxattor row" style="margin-left: auto; margin-right: auto; width: 1180px;">
		<c:forEach items="${list}" var="list" varStatus="status">			
			<div class="cardactor col-2">
				<img src="/resources/image/leejiun.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;"><c:out value="${list.name }"></c:out></h5>
				<div class="pra">
					<p style="text-align: center;"><c:out value="${list.age }"></c:out></p>
				</div>
			</div>
			</c:forEach>
		</div>
		<!-- <div class="boxattor">
			<div class="cardactor">
				<img src="/resources/image/kimyoujung.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">김유정</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/jisoo.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">지수</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/leejoomung.png" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">이주명</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/goyunjung.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">고윤정</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/parkminyoung.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">박민영</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
		</div>
		<div class="boxattor"">
			<div class="cardactor">
				<img src="/resources/image/goasung.png" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">고아성</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="http://studiosantaent.com/ent/wp-content/uploads/2015/09/okvin_720x1080v2.jpg" class="card-img-top" alt="..." height="225px">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">김옥빈</h5>
				<div class="pra">
					<p style="text-align: center;">35세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/kimsulgi.png" class="card-img-top" alt="..." height="225px">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">김슬기</h5>
				<div class="pra">
					<p style="text-align: center;">30세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/kimdami.png" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">김다미</h5>
				<div class="pra">
					<p style="text-align: center;">27세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/suhunjin.png" class="card-img-top" alt="..." height="225px">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">서현진</h5>
				<div class="pra">
					<p style="text-align: center;">37세</p>
				</div>
			</div>
		</div> -->
	</div>
	<!-- <div class="postPagination">
		<ul style="position: absolute; top: 185%">
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
	<script type="text/javascript">
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</body>
</html>