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
	.file {
		border: 1px solid white;
		margin-top: 5px;
		max-width: 100%;
		width: 500px;
		color: white;
		border-radius: 5px;
	}
	</style>
</head>
<body>
	<form action="" id="mainForm" method="post" enctype="multipart/form-data">
	<input type="hidden" name="seq" value="${item.seq }">
	<!-- start -->
	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/home/Home">Actor'<span>s</span></a></h2>
				<ul>
					<li><a href="/Post/tourPostViewList">프로필 투어</a></li>
					<li><a href="/Post/oditionPostViewList">오디션 공고</a>
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul>
					</li>	
					<li><a href="/Post/ActorPostList">프로필 정보</a>
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
								<img alt="" src="${imageMainView.path }${imageMainView.uuidName}">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="file" name="plofil_image" id="" class="file">
							</div>
						</div>
						<div class="row">
							<div class="col p-5" style="text-align: center; color: white;">
								<h2><b><c:out value="${item.name }"></c:out></b></h2>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="row">
							<div class="col ps-5">
								<div class="row">
									<div class="col mb-4"><h4><b>개인신상정보</b></h4></div>
								</div>
								<input type="hidden" name="user_type" value="${item.user_type }">
								<input type="hidden" name="id" value="${item.id }">
								<input type="hidden" name="password" value="${item.password }">
								<input type="hidden" name="company_useNy" value="${item.company_useNy }">
								<input type="hidden" name="adminNy" value="${item.adminNy }">
								<div class="row">
									<div class="col txwhite">
										<div class="row">
											<div class="col-2">이름</div>
											<div class="col-5">
												<input type="text" class="form-control" name="name" value="${item.name }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">출생</div>
											<div class="col-5 gy-1">
												<input type="date" class="form-control" name="dob" value="${item.dob }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">나이</div>
											<div class="col-5 gy-1">
												<input type="text" class="form-control" name="age" value="${item.age }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">성별</div>
											<div class="col-5 gy-1">
												<select class="form-select" name="gender">
													<option value="" <c:if test="${empty item.gender}">selected</c:if>>선택</option>
													<option value="28" <c:if test="${item.gender eq 28 }">selected</c:if>>남자</option>
													<option value="29" <c:if test="${item.gender eq 29 }">selected</c:if>>여자</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">신체</div>
											<div class="col-5 gy-1">
												<input type="text" class="form-control" name="actor_height" value="${item.actor_height }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">몸무게</div>
											<div class="col-5 gy-1">
												<input type="text" class="form-control" name="actor_weight" value="${item.actor_weight }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">이메일</div>
											<div class="col-5 gy-1">
												<div class="input-group">
													<input type="text" class="form-control" name="email" value="${item.email }">
													<span class="input-group-text">@</span>
													<select class="form-select" name="email_domain">
														<option value=""<c:if test="${empty item.email_domain}">selected</c:if>>선택</option>
														<option value="4" <c:if test="${item.email_domain eq 4 }">selected</c:if>>naver.com</option>
														<option value="5" <c:if test="${item.email_domain eq 5 }">selected</c:if>>gamil.com</option>
														<option value="6" <c:if test="${item.email_domain eq 6 }">selected</c:if>>daum.net</option>
														<option value="7" <c:if test="${item.email_domain eq 7 }">selected</c:if>>nate.com</option>
														<option value="8" <c:if test="${item.email_domain eq 8 }">selected</c:if>>dreamwiz.com</option>
														<option value="9" <c:if test="${item.email_domain eq 9 }">selected</c:if>>freechal.com</option>
													</select>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">통신사</div>
											<div class="col-5 gy-1">
												<select class="form-select" name="telecom">
													<option value=""<c:if test="${empty item.telecom}">selected</c:if>>선택</option>
													<option value="1" <c:if test="${item.telecom eq 1 }">selected</c:if>>skt</option>
													<option value="2" <c:if test="${item.telecom eq 2 }">selected</c:if>>kt</option>
													<option value="3" <c:if test="${item.telecom eq 3 }">selected</c:if>>lgU+</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">연락처</div>
											<div class="col-5 gy-1">
												<input type="text" class="form-control" name="phone_number" value="${item.phone_number }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">특기</div>
											<div class="col-5 gy-1">
												<input type="text" class="form-control" name="actor_specialty" value="${item.actor_specialty }">
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">쌍꺼풀 유무</div>
											<div class="col-5 gy-1">
												<select class="form-select" name="actor_eyelid">
													<option value="" <c:if test="${empty item.actor_eyelid}">selected</c:if>>선택</option>
													<option value="37" <c:if test="${item.actor_eyelid eq 37 }">selected</c:if>>겉쌍꺼풀</option>
													<option value="38" <c:if test="${item.actor_eyelid eq 38 }">selected</c:if>>속쌍꺼풀</option>
													<option value="39" <c:if test="${item.actor_eyelid eq 39 }">selected</c:if>>무쌍꺼풀</option>
												</select>
											</div>
										</div>
										<div class="row">
											<div class="col-2 gy-1">목소리 톤</div>
											<div class="col-5 gy-1">
												<select class="form-select" name="actor_voice">
													<option value="" <c:if test="${empty item.actor_voice}">selected</c:if>>선택</option>
													<option value="40" <c:if test="${item.actor_voice eq 40}">selected</c:if>>고음</option>
													<option value="41" <c:if test="${item.actor_voice eq 41}">selected</c:if>>중음</option>
													<option value="42" <c:if test="${item.actor_voice eq 42}">selected</c:if>>저음</option>
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
								<c:choose>
									<c:when test="${fn:length(snsList) eq 0 }">
										<div class="row">
											<div class="col txwhite">
												<div class="row">
													<div class="col-2 gy-1">SNS 정보가 없습니다.</div>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
											<div class="row">
												<div class="col txwhite">
												<c:forEach items="${snsList }" var="snsList" varStatus="statussnsList">
													<div class="row">
														<div class="col-2 gy-1"><c:out value="${snsList.type }"></c:out></div>
														<div class="col-7 gy-1">
															<input type="text" class="form-control" value="${snsList.url }">
														</div>
													</div>
												</c:forEach>	
												</div>
											</div>
									</c:otherwise>
								</c:choose>
								<div class="row">
									<div class="col mt-5 mb-3">
										<h4><b>필모그래피</b></h4>
									</div>
								</div>
								<div class="row text-center gx-1 mb-1">
									<div class="col-2 pt-1 regText">시기</div>
									<div class="col pt-1 regText">구분</div>
									<div class="col pt-1 regText">제작사</div>
									<div class="col pt-1 regText">제목</div>
									<div class="col pt-1 regText">역활</div>
									<div class="col-1">
										<button type="button" class="regFrombutton">
											<i class="fa-solid fa-plus"></i>
										</button>
									</div>
								</div>
								<c:choose>
									<c:when test="${fn:length(filmoList) eq 0 }">
										<div class="row">
											<div class="col">
												<c:out value="${item.name }"/>님의 필모그래피가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${filmoList }" var="filmoList" varStatus="statusfilmoList">
											<div class="row gx-1 text-center mb-1">
												<div class="col-2">
													<input type="date" class="form-control" value="${filmoList.period }">
												</div>
												<div class="col">
													<select class="form-select">
														<option value="" <c:if test="${empty filmoList.type }">selected</c:if>>선택</option>
														<option value="15" <c:if test="${filmoList.type eq 15}">selected</c:if>>상업영화</option>
														<option value="16" <c:if test="${filmoList.type eq 16}">selected</c:if>>단편(독립)영화</option>
														<option value="17" <c:if test="${filmoList.type eq 17}">selected</c:if>>드라마</option>
														<option value="18" <c:if test="${filmoList.type eq 18}">selected</c:if>>웹드라마</option>
														<option value="19" <c:if test="${filmoList.type eq 19}">selected</c:if>>광고(CF)</option>
														<option value="20" <c:if test="${filmoList.type eq 20}">selected</c:if>>바이럴광고</option>
													</select>
												</div>
												<div class="col">
													<input type="text" class="form-control" value="${filmoList.producer }">
												</div>
												<div class="col">
													<input type="text" class="form-control" value="${filmoList.name }">
												</div>
												<div class="col">
													<input type="text" class="form-control" value="${filmoList.role }">
												</div>
												<div class="col-1 mt-1">
													<button type="button" class="regFrombutton">
														<i class="fa-solid fa-minus"></i>
													</button>
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
								<c:choose>
									<c:when test="${fn:length(imageSubView) eq 0 }">
										<div class="row">
											<div class="col">
												<c:out value="${item.name }"/>님의 프로필 사진이 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
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
									</c:otherwise>
								</c:choose>
								<div class="row">
									<div class="col">
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
										<c:choose>
											<c:when test="${fn:length(actorVideo) eq 0}">
												<div class="row">
													<div class="col">
														<c:out value="${item.name }"/>님의 연기영상이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${actorVideo}" var="actorVideo" varStatus="statusactorVideoList">
													<div class="col">
														<video src="${actorVideo.path }${actorVideo.uuidName}" controls="controls" muted="muted"/>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>	
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
										<div class="row text-center gx-1 mb-2">
											<div class="col-4 pt-1 regText">시기</div>
											<div class="col pt-1 regText">학교명</div>
											<div class="col pt-1 regText">전공</div>
											<div class="col pt-1 regText">구분</div>
											<div class="col-1">
												<button type="button" class="regFrombutton" onclick="addEdu()">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
										<c:choose>
											<c:when test="${fn:length(eduList) eq 0 }">
												<div class="row">
													<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 학력사항이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${eduList}" var="eduList" varStatus="statuseduList">
													<div class="row gx-1 text-center">
														<div class="col-4  txwhite">
															<div class="input-group" style="display: flex; justify-content: center;">
																<input type="date" class="form-control" value="${eduList.period_s }">
																<span class="txwhite">~</span>
																<input type="date" class="form-control" value="${eduList.period_e }">
															</div>
														</div>
														<div class="col txwhite">
															<input type="text" class="form-control" value="${eduList.school_name }">
														</div>
														<div class="col txwhite">
															<input type="text" class="form-control" value="${eduList.major }">
														</div>
														<div class="col txwhite">
															<div class="col">
																<select class="form-select" name="">
																	<option value="" <c:if test="${empty eduList.type }">selected</c:if>>선택</option>
																	<option value="21" <c:if test="${eduList.type eq 21}">selected</c:if>>졸업</option>
																	<option value="22" <c:if test="${eduList.type eq 22}">selected</c:if>>재학</option>
																	<option value="23" <c:if test="${eduList.type eq 23}">selected</c:if>>휴학</option>
																	<option value="24" <c:if test="${eduList.type eq 24}">selected</c:if>>중퇴</option>
																	<option value="25" <c:if test="${eduList.type eq 25}">selected</c:if>>퇴학</option>
																</select>
															</div>
														</div>
														<div class="col-1 mt-1">
															<button type="button" class="regFrombutton" onclick="addEdu()">
																<i class="fa-solid fa-minus"></i>
															</button>
														</div>
													</div>
												</c:forEach>
											</c:otherwise>
										</c:choose>
										<div class="row gx-1 text-center">
											
											
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
											<div class="col-1 regText"></div>
										</div>
										<c:choose>
											<c:when test="${fn:length(AwardList) eq 0 }">
												<div class="row">
													<div class="col mt-3" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 수상경력이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<c:forEach items="${AwardList }" var="AwardList" varStatus="statusAwardList">
													<div class="row gx-1 text-center">
														<div class="col-4">
															<input type="date" class="form-control" value="${AwardList.period }">
														</div>
														<div class="col">
															<input type="text" class="form-control" value="${AwardList.name }">
														</div>
														<div class="col">
															<input type="text" class="form-control" value="${AwardList.issuer }">
														</div>
														<div class="col-1">
															<button type="button" class="regFrombutton" onclick="addEdu()">
																<i class="fa-solid fa-minus"></i>
															</button>
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
												<textarea rows="10" cols="50" name="aboutMe"><c:out value="${item.aboutMe }"/></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col" style="display: flex; justify-content: flex-end; margin: 30px 0px;">
										<button type="button" class="regFrombutton">목록으로</button>
										<a type="button" class="regFrombutton" style="margin-left: 10px;" id="btnSave">저장하기</a>
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
	
	var form = $("#mainForm");
	
	$("#btnSave").on("click", function(){
		form.attr("action", "/member/MypageUpdate").submit();
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>

</body>
</html>