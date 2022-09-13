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
 	<div class="tourpostbanner">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="mainViewForm.html">Actor'<span>s</span></a></h2>
				<ul>
					<li><a href="tourpostViewForm.html">프로필 투어</a></li>
					<li><a href="oditionPostViewForm.html">오디션 공고</a>
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul>
					</li>	
					<li><a href="actorPostViewForm.html">프로필 정보</a>
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
			<a href="../member/memberRegForm.html" class="btn">회원가입</a>
			<a href="../member/memberLoginForm.html" class="btn">로그인</a>
			</div>
		</nav>
	</div>

	<div class="tourpost">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">프로필투어 정보</h2>
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
				<tr>
					<td>1</td>
					<td>드라마</td>
					<td>한강 (W캐스팅)</td>
					<td>논현로 86길 29</td>
					<td>2022-04-25. 19:35</td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td>상업영화</td>
					<td>미스매치 (노시스 컴퍼니)</td>
					<td>마포구 성암로 330</td>
					<td>2022-06-11. 20:13</td>
					<td></td>
				</tr>
				<tr>
					<td>3</td>
					<td>상업영화</td>
					<td>한국이 싫어서</td>
					<td>DCM첨단산업센터 A동5층</td>
					<td>2022-06-20. 10:07</td>
					<td></td>
				</tr>
				<tr>
					<td>4</td>
					<td>상업영화</td>
					<td>미남 (리필름)</td>
					<td>압구정로 10길9 지하2층</td>
					<td>2022-06-20. 10:54</td>
					<td></td>
				</tr>
				<tr>
					<td>5</td>
					<td>상업영화</td>
					<td>oo대첩</td>
					<td>효령로 349-5</td>
					<td>2022-06-27. 11:37</td>
					<td></td>
				</tr>
				<tr>
					<td>6</td>
					<td>상업영화</td>
					<td>베테랑2 (외유내강)</td>
					<td>암사동 460-15</td>
					<td>2022-06-27. 12:10</td>
					<td></td>
				</tr>
				<tr>
					<td>7</td>
					<td>상업영화</td>
					<td>파일럿 (무비락)</td>
					<td>담원동 23-4 3층</td>
					<td>2022-07-113 10:39</td>
					<td></td>
				</tr>
				<tr>
					<td>8</td>
					<td>상업영화</td>
					<td>오후4시</td>
					<td>영등포구 여의방대로 65길24</td>
					<td>2022-07-11. 10:46</td>
					<td>day4pmdream@gmail.com</td>
				</tr>
				<tr>
					<td>9</td>
					<td>상업영화</td>
					<td>세기말의 사랑</td>
					<td>성암로 330 5층</td>
					<td>2022-07-11. 10:51</td>
					<td></td>
				</tr>
			</tbody>	
		</table>>
	</div>
	<div class="postPagination">
		<ul>
			<li><a href="#"><</a></li>
			<li><a href="./tourpostViewForm.html" class="active">1</a></li>
			<li><a href="./tourpostTwopageViewForm.html">2</a></li>
			<li><a href="./tourpostThreepageViewForm.html">3</a></li>
			<li><a href="./tourpostFourpageViewForm.html">4</a></li>
			<li><a href="./tourpostFivepageViewForm.html">5</a></li>
			<li><a href="./tourpostTwopageViewForm.html">></a></li>
		</ul>
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
	<script type="text/javascript">
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
</body>
</html>