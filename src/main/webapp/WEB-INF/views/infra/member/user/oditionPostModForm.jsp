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
			<h2 style="color: white; font-size: 50px; width: 1300px; margin: 20px auto;">한강</h2>
			<table class="table oditionView">
				<tr>
					<th>제목</th>
					<th>제작사</th>
					<th>감독</th>
					<th>촬영장소 / 기간</th>
					<th>담당자</th>
				</tr>
				<tr style="background-color: #ADADAD;">
					<td>한강</td>
					<td>한강 (W캐스팅)</td>
					<td></td>
					<td>논현로 86길 29</td>
					<td></td>
				</tr>
				<tr>
					<th>극중배역</th>
					<th>성별</th>
					<th>출연료</th>
					<th>이메일</th>
					<th>마감일</th>
				</tr>
				<tr style="background-color: #ADADAD;">
					<td>대위(이미지 단역)</td>
					<td>남자</td>
					<td></td>
					<td>soopcompany_2@naver.com</td>
					<td>2022-06-11. 20:13</td>
				</tr>
			</table>
			<textarea class="area" rows="" cols="">
			
			
				*비공개 상업영화
				
				-배역: 대위 (이미지 단역)
				-성별: 남자
				-촬영일: 7월 3일 예정
				-연령: 30대 중반~ 40대 초반
				-조건: 헤어 커트 가능하신 분 (너무 짧지않습니다)
				-지원방법: 메일지원 soopcompany_2@naver.com
				
				
				프로필,출연영상, 현재사진(정면,좌측,우측) 보내주시면 검토 후 개별연락드리겠습니다.
				
				
				**메일제목 대위/oo년생/이름 으로 꼭 부탁드리겠습니다!!**
			
			</textarea>
		</div>
		<div class="col d-grid justify-content-end" style="width: 1400px; margin-right: auto; margin-left: auto; margin-top: 15px;">
			<a href="oditionPostViewForm.html">
				<button type="button" class="regFrombutton">
					목록으로
				</button>
			</a>
		</div>
		<hr class="comentLine">
		<h6 class="coment">댓글 2</h6>
		<hr class="comentLine">
		<div class="row">
			<div class="col">
				<div class="row" style="width: 1400px; margin-right: auto; margin-left: auto;">
					<div class="col-11">
						<input type="text" class="form-control" placeholder="내용을 입력 해주세요.">
					</div>
					<div class="col-1">
						<button type="button" class="regFrombutton">등록</button>
					</div>
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
						<a href="https://www.jype.com/"><img src="./image/companyImage/jyp.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://kakaoent.com/"><img src="./image/companyImage/kakao.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://www.ygfamily.com/"><img src="./image/companyImage/yg.jpg" alt="#"></a>
					</div>
					<div class="col">
						<a href="https://www.sbs.co.kr/"><img src="./image/companyImage/sbs.png" alt="#"></a>
					</div>
				</div>
				<div class="row footermain">
					<div class="col-3">
						<a href="mainViewForm.html"><img src="./image/companyImage/Actor.png"></a>
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