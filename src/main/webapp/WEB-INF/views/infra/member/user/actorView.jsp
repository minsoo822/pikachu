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
	video {
		max-width: 100%;
		max-height: 100%;
	}
	.nomal {
		color: white;
		
	}
	.chat {
		background-color: transparent;
		border: none;
		color: skyblue;
		font-size: 50px;
		position: relative;
		right: 150px;
		bottom: 5px;
	}
	</style>
</head>
<body>
	<form action="" id="mainForm" method="post" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="${vo.seq }">
	<input type="hidden" name="cuMember" value="${item.seq }">
	<c:set var="listCodeVoice" value="${CodeServiceImpl.selectListCachedCode('10') }"/>
	<c:set var="listCodeEyelid" value="${CodeServiceImpl.selectListCachedCode('9') }"/>
	<c:set var="listCodeSnstype" value="${CodeServiceImpl.selectListCachedCode('3') }"/>
	<c:set var="listCodeFilmotype" value="${CodeServiceImpl.selectListCachedCode('4') }"/>
	<c:set var="listCodeEdutype" value="${CodeServiceImpl.selectListCachedCode('5') }"/>
	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->
	
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
							<div class="col" style="text-align: center;">
								<img src="${item.path}${item.uuidName}" style="width: 800px;">
							</div>
						</div>
					</div>
					<div class="col">
						<div class="row">
							<div class="col ps-5">
								<div class="row">
									<div class="col mb-4"><h4><b>개인신상정보</b></h4></div>
									<div class="col mb-4">
										<button type="button" class="chat" id="goChat"><i class="fa-solid fa-comment-dots"></i></button>
									</div>
								</div>
								<div class="row">
									<div class="col txwhite">
										<div class="row">
											<div class="col-2">이름</div>
											<div class="col-5">
												<c:out value="${item.name }"/>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">출생</div>
											<div class="col-5 gy-1">
												<c:out value="${item.dob }"/>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">나이</div>
											<div class="col-5 gy-1">
												<span class="nomal"><c:out value="${item.age }"/>세</span>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">신체</div>
											<div class="col-5 gy-1">
												<span class="nomal"><c:out value="${item.actor_height }"/>cm</span>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">몸무게</div>
											<div class="col-5 gy-1">
												<span class="nomal"><c:out value="${item.actor_weight }"/>kg</span>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">이메일</div>
											<div class="col-5 gy-1">
												<c:out value="${item.email}"/>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">연락처</div>
											<div class="col-5 gy-1">
												<c:out value="${item.phone_number }"/>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">특기</div>
											<div class="col-5 gy-1">
												<c:out value="${item.actor_specialty }"/>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">쌍꺼풀 유무</div>
											<div class="col-5 gy-1">
												<c:forEach items="${listCodeEyelid }" var="listEyelid" varStatus="statuslistEyelid">
													<c:if test="${item.actor_eyelid eq listEyelid.seq}"><c:out value="${listEyelid.name }"/></c:if>	
												</c:forEach>		
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">목소리 톤</div>
											<div class="col-5 gy-1">
												<c:forEach items="${listCodeVoice }" var="listVoice" varStatus="statuslistVoice">
													<c:if test="${item.actor_voice eq listVoice.seq}"><c:out value="${listVoice.name }"/></c:if>	
												</c:forEach>
											</div>	
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col m-4">
										<h4><b>SNS</b></h4>
									</div>
								</div>
								<c:choose>
									<c:when test="${fn:length(snslist) eq 0 }">
										<div class="row">
											<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
												<c:out value="${item.name }"/>님의 SNS 정보가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${snslist}" var="snslist" varStatus="statusSnsList">
											<div class="row">
												<div class="col txwhite">
													<div class="row">
														<div class="col-2 gy-1">
															<c:forEach items="${listCodeSnstype }" var="listSnstype" varStatus="statuslistSnstype">
																<c:if test="${snslist.type eq listSnstype.seq}"><c:out value="${listSnstype.name }"/></c:if>	
															</c:forEach>
														</div>
														<div class="col-7 gy-1">
															<c:out value="${snslist.url }"/>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>	
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>필모그래피</b></h4>
									</div>
								</div>
								<div class="row text-center gx-1 mb-1">
									<div class="col-3 regText">시기</div>
									<div class="col-1 regText">구분</div>
									<div class="col-3 regText">제작사</div>
									<div class="col-2 regText">제목</div>
									<div class="col-3 regText">역활</div>
								</div>
								<c:choose>
									<c:when test="${fn:length(filmolist) eq 0 }">
										<div class="row">
											<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
												<c:out value="${item.name }"/>님의 필모그래피가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${filmolist}" var="filmolist" varStatus="statusfilmoList">
											<div class="row gx-1 text-center mb-1">
												<div class="col-3 txwhite">
													<c:out value="${filmolist.period }"/>
												</div>
												<div class="col-1 txwhite">
													<c:forEach items="${listCodeFilmotype }" var="listFilmotype" varStatus="statuslistFilmotype">
														<c:if test="${filmolist.type eq listFilmotype.seq}"><c:out value="${listFilmotype.name }"/></c:if>	
													</c:forEach>
												</div>
												<div class="col-3 txwhite">
													<c:out value="${filmolist.producer }"/>
												</div>
												<div class="col-2 txwhite">
													<c:out value="${filmolist.name }"/>
												</div>
												<div class="col-3 txwhite">
													<c:out value="${filmolist.role }"/>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
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
														<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
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
											<c:when test="${fn:length(edulist) eq 0 }">
												<div class="row">
													<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 학력사항이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${edulist}" var="edulist" varStatus="statuseduList">
													<div class="row gx-1 text-center">
														<div class="col-4  txwhite">
															<div class="input-group" style="display: flex; justify-content: center;">
																<c:out value="${edulist.period_s }"/>
																<span class="txwhite">~</span>
																<c:out value="${edulist.period_e }"/>
															</div>
														</div>
														<div class="col txwhite">
															<c:out value="${edulist.school_name }"/>
														</div>
														<div class="col txwhite">
															<c:out value="${edulist.major }"/>
														</div>
														<div class="col txwhite">
															<c:forEach items="${listCodeEdutype }" var="listEdutype" varStatus="statuslistEdutype">
																<c:if test="${edulist.type eq listEdutype.seq}"><c:out value="${listEdutype.name }"/></c:if>	
															</c:forEach>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
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
											<div class="col regText">수상명</div>
											<div class="col regText">발급기관</div>
										</div>
										<c:choose>
											<c:when test="${fn:length(awardlist) eq 0 }">
												<div class="row">
													<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 수상경력이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${awardlist }" var="awardlist" varStatus="statusAwardList">
													<div class="row gx-1 text-center">
														<div class="col-4 txwhite">
															<c:out value="${awardlist.period }"></c:out>
														</div>
														<div class="col txwhite">
															<c:out value="${awardlist.name }"></c:out>
														</div>
														<div class="col txwhite">
															<c:out value="${awardlist.issuer }"></c:out>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
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
												<textarea rows="10" cols="50"><c:out value="${item.aboutMe }"/></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col" style="display: flex; justify-content: flex-end; margin: 30px 0px;">
										<button type="button" class="regFrombutton">목록으로</button>
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
	
	$("#goChat").on("click", function(){
		form.attr("action", "/chat/").submit();
	});
	
	
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
	
	
	
	
	</script>

</body>
</html>