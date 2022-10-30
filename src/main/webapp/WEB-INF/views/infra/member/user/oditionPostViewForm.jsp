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
	
	<style type="text/css">
	
	.in:hover {
		background: gray;
		cursor: pointer;
	}
		
	</style>
</head>
	
<body style="background-color: #101010;">
<form method="post" id="mainForm">
	<input type="hidden" name="seq" value="${vo.seq }">
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	<!-- start -->
 	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/member/mainHome">Actor'<span>s</span></a></h2>
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
							<li><a href="/Post/ActorPostList">전체</a></li><br>
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
	<br>sessSeq: <c:out value="${sessSeq }"/><br>
	sessName: <c:out value="${sessName }"/><br>
	sessId: <c:out value="${sessId }"/><br>
	sessAmin <c:out value="${sessAdmin }"/>
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
		<div class="oditionsearch">
			<div>
				<select class="form-select" name="shOption">
					<option value="0">선택</option>
					<option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>작품분류</option>
					<option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>작품제목</option>
					<option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>성별</option>
					<option value="4" <c:if test="${vo.shOption eq 4 }">selected</c:if>>작성자</option>
				</select>
			</div>
			<div style="padding: 0px 5px;">
				<input type="text" class="form-control" name="shValue" value="${vo.shValue }">
			</div>
			<div class="d-grid d-md-block">
				<button type="submit" class="btn btn-primary">검색</button>
				<button type="button" class="btn btn-primary" id="searchReset">리셋</button>
			</div>
		</div>
			<table class="oditiontable table">
			<thead>
				<tr>
					<th><input class="form-check-input" type="checkbox" name="allCheck"></th>
					<th>순번</th>
					<th>분류</th>
					<th>작품제목 (제작사)</th>
					<th>성별</th>
					<th>역활</th>
					<th>페이</th>
					<th>작성자</th>	
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td style="text-align: center;" colspan="9"> no Data!</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr class="in" onclick="goView(${list.seq})">
								<th><input class="form-check-input" type="checkbox" name="allCheck"></th>
								<td>
								<c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/>       <%--  순서 카운트  --%>
								</td>
								<td><c:out value="${list.type }"/></td>
								<td><c:out value="${list.name }"/></td>
								<td><c:out value="${list.gender }"/></td>
								<td><c:out value="${list.casting }"/></td>
								<td><c:out value="${list.pay }"/></td>
								<td><c:out value="${list.member_seq }"/></td>
								<td></td>
							</tr>	
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>	
		</table>
	</div>
	<div>
		<c:if test="${sessAdmin eq 1 }">
		<div class="groupbutton">
			<div class="d-grid gap-2 d-md-block btn1" style="float: left;">
				<button class="btn btn-danger" type="submit"><i class="fa-solid fa-minus"></i></button>
				<a class="btn btn-danger" type="button"><i class="fa-solid fa-trash-can"></i></a>
			</div>
			<div class="d-grid gap-2 d-md-flex btn2">
				<button class="btn btn-success" type="submit"><i class="fa-solid fa-file-excel"></i></button>
				<button class="btn btn-primary" type="button" id="btnForm"><i class="fa-solid fa-plus"></i></button>
			</div>
		</div>
	</c:if>
	<c:if test="${sessAdmin ne 1 }">
		
	</c:if>	
	</div>
	<!-- pagination s -->
	<%@include file="../user/include/pagination.jsp"%>
	<!-- pagination e -->
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
	var goUrlIndex = "/member/mainIndex"; 			/* #-> */
	var goUrlMain = "/member/mainHome";

	
	var goUrlOditionForm = "/Post/oditionPostForm";
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", "/Post/oditionPostViewList").submit();
	}
	

	$("#btnLogin").on("click", function() {
		form.attr("action", goUrlLogin).submit();
	});
	
	$("#btnLogout").on("click", function() {
		form.attr("action", goUrlLogout).submit();
	});
	
	$("#btnForm").on("click", function() {
		form.attr("action", goUrlOditionForm).submit();
	});
	
	goView = function(key) {
		seq.attr("value", key);
		form.attr("action" ,"/Post/oditionPostView").submit();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
		document.querySelector(".disableLink").removeAttribute('href');
		
		
	
	
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>