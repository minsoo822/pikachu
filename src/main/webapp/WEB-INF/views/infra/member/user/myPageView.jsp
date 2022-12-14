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
	div {
		/* border: 1px solid orange; */
	}
	img {
		max-width: 100%;
		max-height: 100%;
	}
	video {
		max-width: 100%;
		max-height: 100%;
	}
	.baseLine {
		background-color: white;
		height: 5px;
	}
	.nomal {
		color: white;
		font-size: 15pt;
		
	}
	.txwhite {
		font-size: 15pt;
	}
	</style>
</head>
<body>
	<form action="" id="mainForm" method="post" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="${vo.seq }">
	<c:set var="listCodeVoice" value="${CodeServiceImpl.selectListCachedCode('10') }"/>
	<c:set var="listCodeEyelid" value="${CodeServiceImpl.selectListCachedCode('9') }"/>
	<c:set var="listCodeSnstype" value="${CodeServiceImpl.selectListCachedCode('3') }"/>
	<c:set var="listCodeFilmotype" value="${CodeServiceImpl.selectListCachedCode('4') }"/>
	<c:set var="listCodeEdutype" value="${CodeServiceImpl.selectListCachedCode('5') }"/>
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('7') }"/>
	<!-- start -->
	<!-- start -->
 	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/home/Home">Actor'<span>s</span></a></h2>
				<ul>
					<!-- <li><a href="/Post/tourPostViewList">프로필 투어</a></li> -->
					<li><a href=/Post/oditionPostViewList>오디션 공고</a>
						<!-- <ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul> -->
					</li>	
					<li><a href="/Post/ActorPostList">프로필 정보</a>
						<%-- <ul>
							<li><a href="/Post/ActorPostList">전체</a></li><br>
							<c:forEach items="${categoriGdList }" var="categoriGdList" varStatus="status" begin="0" end="1" step="1">
								<li>
									<a  id="category${categoriGdList.seq}" name="crArea${categoriGdList.seq}" onclick="area(${categoriGdList.seq})" href="#"><c:out value="${categoriGdList.name }"/></a>
								</li>
							</c:forEach>
						</ul>
					</li>	
					<li><a href="#" class="disableLink">커뮤니티</a>
						<ul>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">Q&A게시판</a></li>
							<li><a href="#">홍보게시판</a></li>
							<li><a href="#">스터디게시판</a></li>
						</ul>
					</li>
					<li><a href="#" class="disableLink">자료실</a>
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">한국시나리오</a></li>
							<li><a href="#">외국시나리오</a></li>
							<li><a href="#">자작시나리오</a></li>
							<li><a href="#">기타자료실</a></li>
						</ul>
					</li> --%>
				</ul>
			<div>
			<c:if test="${sessSeq eq null }">
				<button type="button" class="btn" id="btnSignUp" disabled>회원가입</button>
				<button type="button" class="btn" id="btnLogin">로그인</button>
			</c:if>
			<c:if test="${sessSeq ne null }">
				<button type="button" class="btn" id="btnMypage" value="${sessSeq }">마이페이지</button>
				<button type="button" class="btn" id="btnLogout">로그아웃</button>
			</c:if>	
				<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
				sessName: <c:out value="${sessName }"/><br>
				sessId: <c:out value="${sessId }"/><br> --%>
			</div>
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
	sessId: <c:out value="${sessId }"/><br>
	sessAdmin: <c:out value="${sessAdmin }"/><br> --%>
	<!-- odition post summary -->
	<div class="actoraaaa">
		<div class="row">
			<div class="col">
				<div class="row">
					<div class="col-4">
						<div class="row">
							<div class="col" style="text-align: center; width: 500px; min-height: 720px;">
								<img src="${imageMainView.path}${imageMainView.uuidName}">
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
											<div class="col-4">
												<span class="nomal"><c:out value="${item.name }"/></span>
											</div>
											<div class="col-2 gy-1">출생</div>
											<div class="col-4 gy-1">
												<span class="nomal"><c:out value="${item.dob }"/></span>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">나이</div>
											<div class="col-4 gy-1">
												<span class="nomal"><c:out value="${item.age }"/>&nbsp;세</span>
											</div>
											<div class="col-2 gy-1">성별</div>
											<div class="col-4 gy-1">
												<c:forEach items="${listCodeGender }" var="listGender" varStatus="statuslistGender">
													<c:if test="${item.gender eq listGender.seq }"><c:out value="${listGender.name }"/></c:if>	
												</c:forEach>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">신체</div>
											<div class="col-4 gy-1">
												<span class="nomal"><c:out value="${item.actor_height }"/>&nbsp;Cm</span>
											</div>
											<div class="col-2 gy-1">몸무게</div>
											<div class="col-4 gy-1">
												<span class="nomal"><c:out value="${item.actor_weight }"/>&nbsp;Kg</span>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">이메일</div>
											<div class="col-4 gy-1">
												<span class="nomal"><c:out value="${item.email}"/>@naver.com</span>
											</div>
											<div class="col-2 gy-1">연락처</div>
											<div class="col-4 gy-1">
												<span class="nomal"><c:out value="${item.phone_number }"/></span>
											</div>
										</div>
										<div class="row">
											
										</div>
										<div class="row">
											<div class="col-2 gy-1">쌍꺼풀</div>
											<div class="col-4 gy-1">
												<c:forEach items="${listCodeEyelid }" var="listEyelid" varStatus="statuslistEyelid">
													<c:if test="${item.actor_eyelid eq listEyelid.seq}"><c:out value="${listEyelid.name }"/></c:if>	
												</c:forEach>
											</div>
											<div class="col-2 gy-1">목소리 톤</div>
											<div class="col-4 gy-1">
												<c:forEach items="${listCodeVoice }" var="listVoice" varStatus="statuslistVoice">
													<c:if test="${item.actor_voice eq listVoice.seq }"><c:out value="${listVoice.name }"/></c:if>	
												</c:forEach>	
											</div>	
										</div>
										<div class="row">
											<div class="col-2 gy-1">특기</div>
											<div class="col-10 gy-1">
												<span class="nomal"><c:out value="${item.actor_specialty }"/></span>
											</div>
										</div>
										<div class="row">
										</div>
									</div>
								</div>
								<hr class="baseLine">
								<div class="row">
									<div class="col m-4">
										<h4><b>SNS</b></h4>
									</div>
								</div>
								<c:choose>
									<c:when test="${fn:length(snsList) eq 0 }">
										<div class="row">
											<div class="col m-3" style="text-align: center; color: white; font-size: 15pt;">
												<c:out value="${item.name }"/>님의 SNS 정보가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${snsList}" var="snsList" varStatus="statusSnsList">
											<div class="row">
												<div class="col txwhite">
													<div class="row">
														<div class="col-2 gy-1">
															<c:forEach items="${listCodeSnstype }" var="listSnstype" varStatus="statuslistSnstype">
																<c:if test="${snsList.type eq listSnstype.seq}"><c:out value="${listSnstype.name }"/></c:if>	
															</c:forEach> 
														</div>
														<div class="col-7 gy-1">
															<c:out value="${snsList.url }"/>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<hr class="baseLine">	
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
								<c:choose>
									<c:when test="${fn:length(filmoList) eq 0 }">
										<div class="row">
											<div class="col m-3" style="text-align: center; color: white; font-size: 15pt;">
												<c:out value="${item.name }"/>님의 필모그래피가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${filmoList}" var="filmoList" varStatus="statusfilmoList">
											<div class="row gx-1 text-center mb-1">
												<div class="col-3 txwhite">
													<c:out value="${filmoList.period }"/>
												</div>
												<div class="col txwhite">
													<c:forEach items="${listCodeFilmotype }" var="listFilmotype" varStatus="statuslistFilmotype">
														<c:if test="${filmoList.type eq listFilmotype.seq }"><c:out value="${listFilmotype.name }"/></c:if>	
													</c:forEach>
												</div>
												<div class="col txwhite">
													<c:out value="${filmoList.producer }"/>
												</div>
												<div class="col txwhite">
													<c:out value="${filmoList.name }"/>
												</div>
												<div class="col txwhite">
													<c:out value="${filmoList.role }"/>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<hr class="baseLine">
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>프로필사진</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row gx-0">
											<c:forEach items="${imageSubView}" var="imageSubView" varStatus="statusSubImg">
												<div class="col-3">
													<img alt="" class="subProfile" src="${imageSubView.path}${imageSubView.uuidName}">
												</div>
											</c:forEach>	
										</div>
									</div>
								</div>
								<hr class="baseLine">
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>연기영상</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row">
											<c:choose>
												<c:when test="${fn:length(actorVideo) eq 0}">
													<div class="row">
														<div class="col m-3" style="text-align: center; color: white; font-size: 15pt;">
															<c:out value="${item.name }"/>님의 연기영상이 존재하지 않습니다.
														</div>
													</div>
												</c:when>
												<c:otherwise>
													<c:forEach items="${actorVideo }" var="actorVideo" varStatus="statusactorVideoList">
														<div class="col-6">
															<video id="postImg" src="${actorVideo.path }${actorVideo.uuidName}" controls="controls" muted="muted" loop="loop"></video>	
														</div>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
								<hr class="baseLine">
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col mt-5 mb-3">
												<h4><b>학력</b></h4>
											</div>
										</div>
										<div class="row text-center gx-1 mb-3">
											<div class="col-4 regText">시기</div>
											<div class="col regText">학교명</div>
											<div class="col regText">전공</div>
											<div class="col regText">구분</div>
										</div>
										<c:choose>
											<c:when test="${fn:length(eduList) eq 0 }">
												<div class="row">
													<div class="col m-3" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 학력사항이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${eduList}" var="eduList" varStatus="statuseduList">
													<div class="row gx-1 text-center">
														<div class="col-4  txwhite">
															<div class="input-group" style="display: flex; justify-content: center;">
																<c:out value="${eduList.period_s }"/>
																<span class="txwhite">~</span>
																<c:out value="${eduList.period_e }"/>
															</div>
														</div>
														<div class="col txwhite">
															<c:out value="${eduList.school_name }"/>
														</div>
														<div class="col txwhite">
															<c:out value="${eduList.major }"/>
														</div>
														<div class="col txwhite">
															<c:forEach items="${listCodeEdutype }" var="listEdutype" varStatus="statuslistEdutype">
																<c:if test="${eduList.type eq listEdutype.seq}"><c:out value="${listEdutype.name}"/></c:if>	
															</c:forEach>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<hr class="baseLine">
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col mt-5 mb-3">
												<h4><b>수상</b></h4>
											</div>
										</div>
										<div class="row text-center gx-1 mb-3">
											<div class="col-4 regText">시기</div>
											<div class="col regText">수상명</div>
											<div class="col regText">발급기관</div>
										</div>
										<c:choose>
											<c:when test="${fn:length(AwardList) eq 0 }">
												<div class="row">
													<div class="col m-3" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 수상경력이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${AwardList }" var="AwardList" varStatus="statusAwardList">
													<div class="row gx-1 text-center">
														<div class="col-4 txwhite">
															<c:out value="${AwardList.period }"></c:out>
														</div>
														<div class="col txwhite">
															<c:out value="${AwardList.name }"></c:out>
														</div>
														<div class="col txwhite">
															<c:out value="${AwardList.issuer }"></c:out>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<hr class="baseLine">
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>자기소개</b></h4>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<div class="row">
											<div class="col">
												<textarea rows="10" cols="50"  readonly><c:out value="${item.aboutMe }"/></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col" style="display: flex; justify-content: flex-end; margin: 30px 0px;">
										<button type="button" class="regFrombutton">뒤로가기</button>
										<a type="button" class="regFrombutton" style="margin-left: 10px;" id="btnForm">수정하기</a>
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
	
	
	
	var goMypageForm = "/member/MypageForm";
	
	var seq = $("input:hidden[name=seq]");
	
	var form = $("#mainForm");
	
	
	$("#btnForm").on("click", function(){
		form.attr("action", goMypageForm).submit();
	});
	
	
	var goUrlLogout = "/member/logoutForm";
	var goUrlLogin = "/member/loginForm";
	var goUrlIndex = "/member/mainIndex"; 			/* #-> */
	var goUrlMain = "/member/mainHome";
	var goUrlMypage = "/member/Mypage";
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	goActorView = function(key) {
		seq.attr("value", key);
		form.attr("action", "/Post/ActorView").submit();
	}
	
	goOditionView = function(key) {
		seq.attr("value", key);
		form.attr("action", "/Post/oditionPostView").submit();
	}
	
	$("#goActorSignup").on("click", function(){
		form.attr("action", "/member/signUpActorForm").submit();
	});
	$("#goDerectorSignup").on("click", function(){
		form.attr("action", "/member/signUpDirectorForm").submit();
	});
	
	$("#btnMypage").on("click", function() {
		form.attr("action", goUrlMypage).submit();
	});
	
	$("#btnLogin").on("click", function() {
		form.attr("action", goUrlLogin).submit();
	});
	
	$("#btnLogout").on("click", function() {
		form.attr("action", goUrlLogout).submit();
	});
	$("#btnSignUp").on("click", function() {
		swal({
			  title: "Good job!",
			  text: "You clicked the button!",
			  icon: "success",
			  button: "Aww yiss!",
			  button: "Aww yiss!",
			});
		/* form.attr("action", goUrlSignUp).submit(); */
	});
	
	//상단바 디세이블처리
	document.querySelector(".disableLink").removeAttribute('href');
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>

</body>
</html>