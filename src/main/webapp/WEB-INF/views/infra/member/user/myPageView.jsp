<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>


<html lang="KO">
<head>
	<title>Home</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
	<style type="text/css">
	.textstyle {
		background: transparent;
		border: none;
		color: white;
	}
	/* div {
		border: 1px solid orange;
	} */
	img {
		max-width: 100%;
		max-height: 100%;
	}
	iframe {
		max-width: 100%;
		max-height: 100%;
	}
	
	</style>
</head>
<body>
	<form action="">
	<!-- start -->
	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="../main/mainViewForm.html">Actor'<span>s</span></a></h2>
				<ul>
					<li><a href="../main/tourpostViewForm.html">프로필 투어</a></li>
					<li><a href="../main/oditionPostViewForm.html">오디션 공고</a>
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul>
					</li>	
					<li><a href="../main/actorPostViewForm.html">프로필 정보</a>
						<ul>
							<li><a href="../main/actorPostViewForm.html">전체</a></li><br>
							<li><a href="../main/actorPostManViewForm.html">남자</a></li><br>
							<li><a href="../main/actorPostWomanViewForm.html">여자</a></li>
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
			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div  class="modal-dialog">
			    <div style="background: #393939;" class="modal-content">
			      <div class="modal-header">
			        <h1 class="modal-title fs-5 homepageline" id="staticBackdropLabel"style="color: white;">Actor'<span style="color: #f9004d;">s</span></h1>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" style="color: white; text-align: center; font-size: 20px;">
			        가입 분류를 선택해주세요!!~
			      </div>
			      <div class="modal-footer" style="display: flex; align-items: center; justify-content: space-between;">
			        <button type="button" class="indexbtn" id="goActorSignup" style="cursor: pointer;">배우로 가입하기</button>
			        <button type="button" class="indexbtn" id="goDerectorSignup" style="cursor: pointer;">디렉터로 가입하기</button>
			      </div>
			    </div>
			  </div>
			</div>
		</nav>
	</div>
	<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
	sessName: <c:out value="${sessName }"/><br>
	sessId: <c:out value="${sessId }"/><br> --%>
	<!-- odition post summary -->
	<div class="actoraaaa">
		<div class="row">
			<div class="col">
				<div class="row">
					<div class="col-4">
						<div class="row">
							<div class="col" style="text-align: center;">
								<img alt="" src="${imageView.path}${imageView.uuidName}">
							</div>
						</div>
						<div class="row">
							<div class="col p-5" style="text-align: center; color: white;">
								<h2><b>이지은</b></h2>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="row">
							<div class="col ps-5">
								<div class="row">
									<div class="col mb-4"><h4><b>개인신상정보</b></h4></div>
								</div>
								<div class="row">
									<div class="col txwhite">
										<div class="row">
											<div class="col-2">이름</div>
											<div class="col-5">
												<c:out value="${item.name }"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">출생</div>
											<div class="col-5 gy-1">
												<c:out value="${item.dob }"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">나이</div>
											<div class="col-5 gy-1">
												<c:out value="${item.age }"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">신체</div>
											<div class="col-5 gy-1">
												<c:out value="${item.actor_weight }"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">몸무게</div>
											<div class="col-5 gy-1">
												<c:out value="${item.actor_weight }"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">이메일</div>
											<div class="col-5 gy-1">
												<c:out value="${item.email}"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">연락처</div>
											<div class="col-5 gy-1">
												<c:out value="${item.phone_number }"></c:out>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">특기</div>
											<div class="col-5 gy-1">
												<input type="text" class="form-control" value="노래">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">쌍꺼풀 유무</div>
											<div class="col-5 gy-1">
												<select class="form-select">
													<option>선택</option>
													<option >겉쌍꺼풀</option>
													<option>속쌍꺼풀</option>
													<option>무쌍꺼풀</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">목소리 톤</div>
											<div class="col-5 gy-1">
												<select class="form-select">
													<option>선택</option>
													<option >고음</option>
													<option>중음</option>
													<option>저음</option>
												</select>
											</div>	
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col m-4">
										<h4><b>SNS</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col txwhite">
									<c:forEach items="${snsList}" var="snsList" varStatus="status">
										<div class="row">
											<div class="col-2 gy-1">
												<c:out value="${snsList.type }"/>
											</div>
											<div class="col-7 gy-1">
												<c:out value="${snsList.url }"/>
											</div>
										</div>
									</c:forEach>	
									</div>
								</div>
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>필모그래피</b></h4>
									</div>
								</div>
								<div class="row text-center gx-1 mb-1">
									<div class="col-3 regText">시기</div>
									<div class="col regText">구분</div>
									<div class="col regText">제작사</div>
									<div class="col regText">제목</div>
									<div class="col regText">역활</div>
								</div>
								<div class="row gx-1 text-center mb-1">
									<div class="col-3">
										<input type="date" class="form-control" value="2011-01-03">
									</div>
									<div class="col">
										<select class="form-select">
											<option>선택</option>
											<option>상업영화</option>
											<option>단편(독립)영화</option>
											<option >드라마</option>
											<option>웹드라마</option>
											<option>광고(CF)</option>
											<option>바이럴광고</option>
										</select>
									</div>
									<div class="col">
										<input type="text" class="form-control" value="CJ미디어">
									</div>
									<div class="col">
										<input type="text" class="form-control" value="드림하이">
									</div>
									<div class="col">
										<input type="text" class="form-control" value="김필숙">
									</div>
								</div>
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>프로필사진</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row gx-0">
											<div class="col-3">
												<img alt="" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/IU_posing_for_Marie_Claire_Korea_March_2022_issue_03.jpg/800px-IU_posing_for_Marie_Claire_Korea_March_2022_issue_03.jpg" width="230px" height="345">
											</div>
											<div class="col-3">
												<img alt="" src="https://image.cine21.com/resize/cine21/article/2022/0603/15_30_27__6299aa83cb210[H800-].jpg" width="230px" height="345">
											</div>
											<div class="col-3">
												<img alt="" src="https://assets.repress.co.kr/photos/2009ea104d2c842fed5461308d9f92d7/original.jpg" width="230px" height="345">
											</div>
											<div class="col-3">
												<img alt="" src="https://blog.kakaocdn.net/dn/bAPdqx/btrFVi67cgg/jkHLXOn4nI4s0t9jWe0CFK/img.jpg" width="230px" height="345">
											</div>
										</div>
										<div class="row mt-2">
											<div class="col d-grid justify-content-end">
												<input type="file" id="file" style="display: none;">
												<button type="button" class="regFrombutton" onclick="onclick=document.all.file.click()">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>연기영상</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col">
												<iframe src='https://www.youtube.com/embed//x-TtMKkQ0eI' frameborder='0' allowfullscreen width="450px" height="250px"></iframe>
											</div>
											<div class="col">
												<iframe src='https://www.youtube.com/embed//GLfKZlS3IbQ' frameborder='0' allowfullscreen width="450px" height="250px"></iframe>
											</div>
										</div>
										<div class="row">
											<div class="col d-grid justify-content-end">
												<input type="file" id="file2" style="display: none;">
												<button type="button" class="regFrombutton" onclick="onclick=document.all.file2.click()">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col mt-5 mb-3">
												<h4><b>학력</b></h4>
											</div>
										</div>
										<div class="row text-center gx-1">
											<div class="col-4 regText">시기</div>
											<div class="col regText">학교명</div>
											<div class="col regText">전공</div>
											<div class="col regText">구분</div>
										</div>
										<div class="row gx-1 text-center">
											<div class="col-4">
												<div class="input-group">
													<input type="date" class="form-control">
													<span class="input-group-text">~</span>
													<input type="date" class="form-control">
												</div>
											</div>
											<div class="col">
												<input type="text" class="form-control" value="동덕여자고등학교">
											</div>
											<div class="col">
												<input type="text" class="form-control" value="">
											</div>
											<div class="col">
												<select class="form-select">
													<option>선택</option>
													<option selected="selected">졸업</option>
													<option>재학</option>
													<option>휴학</option>
													<option>중퇴</option>
													<option>퇴학</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col mt-5 mb-3">
												<h4><b>수상</b></h4>
											</div>
										</div>
										<div class="row text-center gx-1">
											<div class="col-4 regText">시기</div>
											<div class="col regText">발급기관</div>
											<div class="col regText">발급명</div>
										</div>
										<div class="row gx-1 text-center">
											<div class="col-4">
												<div class="input-group">
													<input type="date" class="form-control">
													<span class="input-group-text">~</span>
													<input type="date" class="form-control">
												</div>
											</div>
											<div class="col">
												<input type="text" class="form-control">
											</div>
											<div class="col">
												<input type="text" class="form-control">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>자기소개</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col">
												<textarea rows="10" cols="50"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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
	
		
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	
	<script type="text/javascript">
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>

</body>
</html>