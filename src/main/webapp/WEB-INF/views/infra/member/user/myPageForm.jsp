<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>


<html lang="KO">
<head>
	<title>마이페이지 수정</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
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
	.textstyle {
		background: transparent;
		border: none;
		color: white;
	}
	/* div {
		border: 1px solid orange;
	} */
	.mainImg {
		width: 500px;
		height: 700px;
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
							<div class="col" style="text-align: center; width: 500px; min-height: 720px;">
								<input type="hidden" name="fileSeq" value="${imageMainView.fileSeq }">
								<img class="mainImg" id="mainimage" name="plofil_image" src="${imageMainView.path }${imageMainView.uuidName}">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<input type="file" name="plofil_image" id="mainimagefile" class="file">
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
									<div class="col-1 m-4">
										<h4><b>SNS</b></h4>
									</div>
									<div class="col-1 m-4">
										<button type="button" class="regFrombutton" onclick="addSns()">
											<i class="fa-solid fa-plus"></i>
										</button>
									</div>
								</div>
								<c:choose>
									<c:when test="${fn:length(snsList) eq 0 }">
										<div class="row">
											<div class="col" id="snsPoint"  style="text-align: center; color: white; font-size: 15pt;">
												<c:out value="${item.name }"/>님의 SNS 정보가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="row">
											<div class="col txwhite"  id="snsPoint">
												<c:forEach items="${snsList }" var="snsList" varStatus="statussnsList">
													<div class="row">
														<input type="hidden" class="form-control" name="snsSeqs" value="${snsList.snsSeq }">
														<div class="col-3 gy-1">
															<select class="form-select" name="Upsns_types">
																<option value=""></option>
																<option value="11" <c:if test="${snsList.type eq 11 }">selected</c:if>>Instagram</option>
																<option value="12" <c:if test="${snsList.type eq 12 }">selected</c:if>>Facebook</option>
																<option value="13" <c:if test="${snsList.type eq 13 }">selected</c:if>>Youtube</option>
																<option value="14" <c:if test="${snsList.type eq 14 }">selected</c:if>>Homepage</option>
															</select>
														</div>
														<div class="col-7 gy-1">
															<input type="text" class="form-control" name="Upurls" value="${snsList.url }">
														</div>
														<div class="col-1 mt-1">
															<button type="button" class="regFrombutton" onclick="remove(snsDelete' + count_sns + ')">
																<i class="fa-solid fa-minus"></i>
															</button>
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
										<button type="button" class="regFrombutton" onclick="addFilmo()">
											<i class="fa-solid fa-plus"></i>
										</button>
									</div>
								</div>
								<c:choose>
									<c:when test="${fn:length(filmoList) eq 0 }">
										<div class="row">
											<div class="col" id="filmoPoint"  style="text-align: center; color: white; font-size: 15pt;">
												<c:out value="${item.name }"/>님의 필모그래피가 존재하지 않습니다.
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="row">
											<div class="col" id="filmoPoint">
												<c:forEach items="${filmoList }" var="filmoList" varStatus="statusfilmoList">
													<div class="row gx-1 text-center mb-1">
														<input type="hidden" name="filmoSeqs" value="${filmoList.filmoSeq}">
														<div class="col-2">
															<input type="date" class="form-control" name="Upfilmo_periods" value="${filmoList.period }">
														</div>
														<div class="col">
															<select class="form-select" name="Upfilmo_types">
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
															<input type="text" class="form-control" name="Upfilmo_producers" value="${filmoList.producer }">
														</div>
														<div class="col">
															<input type="text" class="form-control" name="Upfilmo_names" value="${filmoList.name }">
														</div>
														<div class="col">
															<input type="text" class="form-control" name="Upfilmo_roles" value="${filmoList.role }">
														</div>
														<div class="col-1 mt-1">
															<button type="button" class="regFrombutton">
																<i class="fa-solid fa-minus"></i>
															</button>
														</div>
													</div>
												</c:forEach>	
											</div>
										</div>
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
											<div class="col" id="filmoPoint"  style="text-align: center; color: white; font-size: 15pt;">
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
															<img id="subimg" class="subProfile" src="${imageSubView.path}${imageSubView.uuidName}">
														</div>
													</c:forEach>	
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
								<div class="row">
									<div class="col d-flex justify-content-end">
										<input type="file" name="plofil_image" id="subimgfile" class="file" multiple>
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
													<div class="col" id="filmoPoint"  style="text-align: center; color: white; font-size: 15pt;">
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
											<div class="col d-flex justify-content-end">
												<input type="file" name="plofil_image" id="" class="file" multiple>
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
												<button type="button" class="regFrombutton" onclick="addEdu()" id="eduOnDisplay">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
										<c:choose>
											<c:when test="${fn:length(eduList) eq 0 }">
												<div class="row" id="eduNoneDiv">
													<div class="col mt-3" id="eduPoint" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 학력사항이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<div class="row">
													<div class="col" id="eduPoint">
														<c:forEach items="${eduList}" var="eduList" varStatus="statuseduList">
															<div class="row gx-1 text-center">
																<input type="hidden" name="eduSeqs" value="${eduList.eduSeq }">
																<div class="col-4  txwhite">
																	<div class="input-group" style="display: flex; justify-content: center;">
																		<input type="date" name="Upedu_periods_s" class="form-control" value="${eduList.period_s }">
																		<span class="txwhite">~</span>
																		<input type="date" name="Upedu_periods_e" class="form-control" value="${eduList.period_e }">
																	</div>
																</div>
																<div class="col txwhite">
																	<input type="text" name="Upschool_names" class="form-control" value="${eduList.school_name }">
																</div>
																<div class="col txwhite">
																	<input type="text" name="Upedu_majors" class="form-control" value="${eduList.major }">
																</div>
																<div class="col txwhite">
																	<div class="col">
																		<select class="form-select" name="Upedu_types">
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
																	<button type="button" class="regFrombutton" onclick="">
																		<i class="fa-solid fa-minus"></i>
																	</button>
																</div>
															</div>
														</c:forEach>
		
													</div>
												</div>
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
											<div class="col regText">발급기관</div>
											<div class="col regText">발급명</div>
											<div class="col-1 regText"></div>
											<div class="col-1">
												<button type="button" class="regFrombutton" onclick="addAward()">
													<i class="fa-solid fa-plus"></i>
												</button>
											</div>
										</div>
										<c:choose>
											<c:when test="${fn:length(AwardList) eq 0 }">
												<div class="row">
													<div class="col mt-3" id="awardPoint" style="text-align: center; color: white; font-size: 15pt;">
														<c:out value="${item.name }"/>님의 수상경력이 존재하지 않습니다.
													</div>
												</div>
											</c:when>
											<c:otherwise>
												<div class="row mb-1">
													<div class="col" id="awardPoint">
														<c:forEach items="${AwardList }" var="AwardList" varStatus="statusAwardList">
															<div class="row gx-1 text-center pb-1">
																<input type="hidden" name="awardSeqs" value="${AwardList.awardSeq }">
																<div class="col-4">
																	<input type="date" name="Upaward_periods" class="form-control" value="${AwardList.period }">
																</div>
																<div class="col">
																	<input type="text" name="Upaward_names" class="form-control" value="${AwardList.name }">
																</div>
																<div class="col">
																	<input type="text" name="Upaward_issuers" class="form-control" value="${AwardList.issuer }">
																</div>
																<div class="col-1">
																	<button type="button" class="regFrombutton">
																		<i class="fa-solid fa-minus"></i>
																	</button>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
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
										<button type="button" class="regFrombutton" onclick="back()">뒤로가기</button>
										<button type="button" class="regFrombutton" style="margin-left: 10px;" id="btnSave">저장하기</button>
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
	
	var MypgeUpdt = "/member/MypageUpdate";
	
	var form = $("#mainForm");
	
	$("#btnSave").on("click", function(){
		form.attr("action", MypgeUpdt).submit();
	});
	
	back = function() {
		form.attr("action", "/member/Mypage").submit();
	}
	
//	Sns추가
	var count_sns = 0;	
	
	function addSns() {
	
	var tmp = "";	

		tmp += '<div class="row" pb-1 text-center" id="snsDelete' + count_sns + '">';
	    tmp += '<div class="col-3 gy-1">';
	    tmp += '<select class="form-select" name="sns_types">';
	    tmp += '<option value=""></option>';
	    tmp += '<option value="11">Instagram</option>';
	    tmp += '<option value="12">Facebook</option>';
	    tmp += '<option value="13">Youtube</option>';
	    tmp += '<option value="14">Homepage</option>';
	    tmp += '</select>';
	    tmp += '</div>';
	    tmp += '<div class="col-7 gy-1">';
	    tmp += '<input type="text" class="form-control" name="urls">';
	    tmp += '</div>';
	    tmp += '<div class="col-1 mt-1">';
	    tmp += '<button type="button" class="regFrombutton" onclick="remove(snsDelete' + count_sns + ')">';
	    tmp += '<i class="fa-solid fa-minus"></i>';
	    tmp += '</button>';
	    tmp += '</div>';
	    tmp += '</div>';
		
		count_sns += 1;

		$("#snsPoint").append(tmp);

	}
	
//	필모그래피추가
	var count_filmo = 0;	
	
	function addFilmo() {
	
	var tmp = "";
		
		tmp += '<div class="row gx-1 text-center pb-1" id="filmoDelete' + count_filmo + '">';
		tmp += '<div class="col-2">';
		tmp += '<input type="date" class="form-control" name="filmo_periods">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<select class="form-select" name="filmo_types">';
		tmp += '<option value="">선택</option>';
		tmp += '<option value="15">상업영화</option>';
		tmp += '<option value="16">단편(독립)영화</option>';
		tmp += '<option value="17">드라마</option>';
		tmp += '<option value="18">웹드라마</option>';
		tmp += '<option value="19">광고(CF)</option>';
		tmp += '<option value="20">바이럴광고</option>';
		tmp += '</select>';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="filmo_producers">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="filmo_names">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="filmo_roles">';
		tmp += '</div>';
		tmp += '<div class="col-1">';
		tmp += '<button type="button" class="regFrombutton" onclick="remove(filmoDelete' + count_filmo + ')">';
		tmp += '<i class="fa-solid fa-minus"></i>';
		tmp += '</button>';
		tmp += '</div>';
		tmp += '</div>';
		
		count_filmo += 1;
 	
		$("#filmoPoint").append(tmp);
	}
//	학력사항	
	var count_edu = 0;	

	function addEdu() {
	
	var tmp = "";
		
		tmp += '<div class="row gx-1 text-center pb-1" id="eduDelete' + count_edu + '">';
		tmp += '<div class="col-4" txwhite>';
		tmp += '<div class="input-group" style="display: flex; justify-content: center;">';
		tmp += '<input type="date" class="form-control" name="edu_periods_s">';
		tmp += '<span class="txwhite">~</span>';
		tmp += '<input type="date" class="form-control" name="edu_periods_e">';
		tmp += '</div>';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="school_names">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="edu_majors">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<select class="form-select" name="edu_types">';
		tmp += '<option value="">선택</option>';
		tmp += '<option value="21">졸업</option>';
		tmp += '<option value="22">재학</option>';
		tmp += '<option value="23">휴학</option>';
		tmp += '<option value="24">중퇴</option>';
		tmp += '<option value="25">퇴학</option>';
		tmp += '</select>';
		tmp += '</div>';
		tmp += '<div class="col-1">';
		tmp += '<button type="button" class="regFrombutton1" onclick="remove(eduDelete' + count_edu + ')">';
		tmp += '<i class="fa-solid fa-minus"></i>';
		tmp += '</button>';
		tmp += '</div>';
		tmp += '</div>';
		
		
		count_edu += 1;
		
		$("#eduPoint").append(tmp);
	}
//	수상
	var count_award = 0;	
	
	function addAward() {

	var tmp = "";	
	
		tmp += '<div class="row gx-1 text-center pb-1" id="awardDelete' + count_award + '">';
		tmp += '<div class="col-4">';
		tmp += '<input type="date" class="form-control" name="award_periods">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="award_names">';
		tmp += '</div>';
		tmp += '<div class="col">';
		tmp += '<input type="text" class="form-control" name="award_issuers">';
		tmp += '</div>';
		tmp += '<div class="col-1">';
		tmp += '<button type="button" class="regFrombutton" onclick="remove(awardDelete' + count_award + ')">';
		tmp += '<i class="fa-solid fa-minus"></i>';
		tmp += '</button>';
		tmp += '</div>';
		tmp += '</div>';
		
		count_award += 1;
		
		$("#awardPoint").append(tmp);
	}
		function remove(id) {
			
			$(id).remove();
		}
		

//	메인이미지 미리보기
    $("#mainimagefile").on("change", function(e) {
		var tmp = e.target.files[0];
	    var img = URL.createObjectURL(tmp);
	    $("#mainimage").attr("src", img);
	});
//	disable
	document.querySelector(".disableLink").removeAttribute('href');
	
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
	</script>
	
	

</body>
</html>