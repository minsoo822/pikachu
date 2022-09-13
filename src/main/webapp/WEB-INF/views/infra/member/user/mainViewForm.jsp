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
			<h2 class="logo"><a class="logolink" href="/member/mainViewForm">Actor'<span>s</span></a></h2>
			<ul>
				<li><a href="/member/tourPostViewForm">프로필 투어</a></li>
				<li><a href="/member/oditionMod">오디션 공고</a>
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
						<li><a href="/member/actorPostViewForm">전체</a></li><br>
						<li><a href="#">남자</a></li><br>
						<li><a href="#">여자</a></li>
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
			<a href="/member/signUpForm" class="btn">회원가입</a>
			<a href="/member/signInForm" class="btn">로그인</a>
			</div>
		</nav>
	</div>
	<!-- odition post summary -->

	<div class="odition">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">오디션 공고</h2>
		</div>
		<div class="box">
			<div class="card">
				<div class="row g-0">
					<div class="col-5">
						<img alt="" src="/resources/image/badcity.jpg">
					</div>
					<div class="col">
					<h5>범죄도시2</h5>
						<div class="pra">
							<p>
								제작 : B.A ent<br> 
								배역 : 조,단역<br>
								연령 : 20대초 ~ 50대후반<br>
								성별 : 남자,여자
							</p>
							<p style="text-align: center; ">
								<a class="mainoditionbutton" href="#">더보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="row g-0">
					<div class="col-5">
						<img alt="" src="/resources/image/1987.jpg">
					</div>
					<div class="col">
					<h5>1987</h5>
						<div class="pra">
							<p>
								제작 : 비공개<br> 
								배역 : 주조연 어린시절<br>
								연령 : 13세~15세<br>
								성별 : 남자
							</p>
							<p style="text-align: center; ">
								<a class="mainoditionbutton" href="#">더보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="row g-0">
					<div class="col-5">
						<img alt="" src="/resources/image/netplix2.png">
					</div>
					<div class="col">
					<h5>넷플릭스-택ooo</h5>
						<div class="pra">
							<p>
								제작 : 넷플릭스 드라마<br> 
								배역 : 폭탄테러범 이미지단역<br>
								연령 : 30대초 ~ 30대후반<br>
								성별 : 남자
							</p>
							<p style="text-align: center; ">
								<a class="mainoditionbutton" href="#">더보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="card">
				<div class="row g-0">
					<div class="col-5">
						<img alt="" src="/resources/image/backmauntin.jpg">
					</div>
					<div class="col">
					<h5>백두산</h5>
						<div class="pra">
							<p>
								제작 : 넷플릭스 드라마<br> 
								배역 : 폭탄테러범 이미지단역<br>
								연령 : 30대초 ~ 30대후반<br>
								성별 : 남자
							</p>
							<p style="text-align: center; ">
								<a class="mainoditionbutton" href="#">더보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="row g-0">
					<div class="col-5">
						<img alt="" src="/resources/image/badcity.jpg">
					</div>
					<div class="col">
					<h5>범죄도시2</h5>
						<div class="pra">
							<p>
								제작 : 넷플릭스 드라마<br> 
								배역 : 폭탄테러범 이미지단역<br>
								연령 : 30대초 ~ 30대후반<br>
								성별 : 남자
							</p>
							<p style="text-align: center; ">
								<a class="mainoditionbutton" href="#">더보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="row">
					<div class="col-5">
						<img alt="" src="/resources/image/netplix2.png">
					</div>
					<div class="col">
						<h5>넷플릭스-택ooo</h5>
						<div class="pra">
							<p>
								제작 : 넷플릭스 드라마<br> 
								배역 : 폭탄테러범 이미지단역<br>
								연령 : 30대초 ~ 30대후반<br>
								성별 : 남자
							</p>
							<p style="text-align: center; ">
								<a class="mainoditionbutton" href="#">더보기</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<!-- profil post summary -->
	<div class="actor">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">배우 프로필</h2>
		</div>
		<div class="boxattor"">
			<div class="cardactor" >
				<img src="/resources/image/jingiju.png" class="card-img-top" alt="..." href="">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">진기주</h5>
				<div class="pra">
					<p style="text-align: center;">33세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/chunwoohee.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">천우희</h5>
				<div class="pra">
					<p style="text-align: center;">35세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/yangsejong.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">양세종</h5>
				<div class="pra">
					<p style="text-align: center;">29세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/leejiun.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">이지은</h5>
				<div class="pra">
					<p style="text-align: center;">29세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/sunina.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">설인아</h5>
				<div class="pra">
					<p style="text-align: center;">26세</p>
				</div>
			</div>
		</div>
		<div class="boxattor">
			<div class="cardactor">
				<img src="/resources/image/kimyoujung.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">김유정</h5>
				<div class="pra">
					<p style="text-align: center;">22세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/jisoo.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">지수</h5>
				<div class="pra">
					<p style="text-align: center;">27세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/leejoomung.png" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">이주명</h5>
				<div class="pra">
					<p style="text-align: center;">28세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/goyunjung.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">고윤정</h5>
				<div class="pra">
					<p style="text-align: center;">26세</p>
				</div>
			</div>
			<div class="cardactor">
				<img src="/resources/image/parkminyoung.jpg" class="card-img-top" alt="...">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;">박민영</h5>
				<div class="pra">
					<p style="text-align: center;">36세</p>
				</div>
			</div>
		</div>
	</div>
	<!-- tour post summary -->
	<div class="tour">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">투어 정보</h2>
		</div>
		<table class="table">
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
		</table>
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