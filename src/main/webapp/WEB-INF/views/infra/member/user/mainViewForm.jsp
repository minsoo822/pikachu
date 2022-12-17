<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>

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
	
	  .modal-backdrop {

        z-index: -1;

    }
    /* div {
    	border: solid 1px orange;
    
    } */
    	.graphBox{
		posiotion:relative;
		width:100%;
		display:grid;
		grid-template-columns: 1fr 2fr;
		grid-gap:30px;
		min-height: 200px;
	}
	
	.graphBox .box{ 
		position:relative;
		background: #fff;
		padding:20px;
		width:100%;
		box-shadow: 0 7px 25px rgba(0,0,0,0.08);
		border-radius: 20px;
	}
	</style>
	
</head>
 
	
<body>
<form method="post" name="mainForm" id="mainForm">
	<input type="hidden" name="seq" value="${vo.seq }">
	<c:set var="listCodeFilmo_type" value="${CodeServiceImpl.selectListCachedCode('4') }"/>
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('7') }"/>
	<!-- start -->
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->
	<!-- odition post summary -->
	<div class="tour">
		<!-- <div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">통계 정보</h2>
		</div> -->
		<div class="container">
			<div class="row d-flex" style="justify-content:space-between; align-items:center; padding-left: 10px;padding-right: 10px;">
				<div class="col-3">
			        <div class="row" style="width:250px; height:150px; border:none; border-radius:10px; box-shadow: 0 7px 25px rgba(0,0,0,0.08); background: #757575; margin: 25px;">
			            <div class="col-8" style="padding-top:36px; padding-left: 30px;">
			                <div class="row"> 
			                    <span style="font-size:26pt; font-weight:bold; color: white;"><c:out value="${memberCount }"></c:out></span>
			                </div>
			                <div class="row">
			                    <span style="color:#fcfc; font-size:12pt; font-weight:500; padding-left:15px;">회원수</span>   
			                </div>
			            </div>
			            <div class="col text-center" style="padding-top:50px;">
			                <i style="color:#101010; font-size:36pt; margin-top:auto;" class="fa-solid fa-user"></i> 
			            </div>
			        </div>
			        <div class="row" style="width:250px; height:150px; border:none; border-radius:10px; box-shadow: 0 7px 25px rgba(0,0,0,0.08); background: #757575; margin-left: 25px;ss">
			            <div class="col-7" style="padding-top:36px; padding-left: 30px;">
			                <div class="row"> 
			                    <span style="font-size:26pt; font-weight:bold; color: white;"><c:out value="${postCount }"></c:out></span>
			                </div>
			                <div class="row">
			                    <span style="color:#fcfc; font-size:12pt; font-weight:500; padding-left:15px;">게시물 수</span>   
			                </div>
			            </div> 
			            <div class="col text-center" style="padding-top:50px;">
			                <i style="color:#101010; font-size:36pt; margin-top:auto;" class="fa-regular fa-pen-to-square"></i>
			            </div>
			        </div>
				</div>			
				<div class="col-9">
					<div class="row mt-4">
			        	<div class="graphBox" style="padding-left: 0px; padding-right: 0px;">
			        		<div class="box">
			        			<canvas id="myChart"></canvas> 
			        		</div>
			        		<div class="box">	        			
			        			<canvas id="myChart2"></canvas> 
			        		</div>
			        	</div>
			        </div>
				</div>	
			</div>
		</div>
	</div>	        
	<div class="odition" style="background: black;">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">오디션 공고</h2>
		</div>
		<div class="box">
			<div class="row">
		<c:forEach items="${oditionList }" var="oditionList" varStatus="statusoditionList">
				<div class="col-4">
					<div class="card">
						<div class="row g-0">
							<div class="col-5">
								<img alt="" src="${oditionList.path }${oditionList.uuidName}">
							</div>
							<div class="col-7">
								<h5><c:out value="${oditionList.name }"/></h5>
								<div class="pra">
									<p>
										제작 : <c:out value="${oditionList.producer }"/><br> 
										배역 : <c:out value="${oditionList.casting }"/><br>
										연령 : <c:out value="${oditionList.age }"/><br>
										성별 : <c:forEach items="${listCodeGender}" var="listGender" varStatus="statuslistGender">	
												<c:if test="${oditionList.gender eq listGender.seq }"><c:out value="${listGender.name }"/></c:if>			
											 </c:forEach>
									</p>
									<p style="text-align: center; ">
										<button type="button" class="mainoditionbutton" onclick="goOditionView(${oditionList.seq})">더보기</button>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
		</c:forEach>
			</div>
		</div>
	</div>	
	<!-- profil post summary -->
	<div class="actor" style="background: #101010;">
		<div class="titile">
			<h2 style="color: white; font-size: 50px; width: 1130px; margin: 15px auto;">배우 프로필</h2>
		</div>
		<div class="boxattor row" style="margin-left: auto; margin-right: auto; width: 1180px;">
		<c:forEach items="${memberList }" var="memberList" varStatus="statusmemberList">
			<div class="cardactorHome col-2" onclick="goActorView(${memberList.seq})">
				<img src="${memberList.path}${memberList.uuidName}" class="card-img-top" alt="..." href="">
				<h5 style="text-align: center; margin-bottom: 0px; margin-top: 5px;"><c:out value="${memberList.name }"/></h5>
				<div class="pra">
					<p style="text-align: center;"><c:out value="${memberList.age }"/>세</p>
				</div>
			</div>
		</c:forEach>	
		</div>
	</div>
	<!-- tour post summary -->
	
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script type="text/javascript">
	
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
	
	<script>
	  const ctx = document.getElementById('myChart');
	
	  new Chart(ctx, {
		type: 'doughnut',
		data: {
		    labels: ['남', '여'],
		    datasets: [{
		      label: '# of Votes',
		      data: [12, 19],
		      borderWidth: 1
		    }]
		  },
		  options: {
		    scales: {
		      y: {
		        beginAtZero: true
		      }
		    }
		  }
		});
	  const ctx2 = document.getElementById('myChart2');
	  new Chart(ctx2, {
	    type: 'line',
	    data: {
	      labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
	      datasets: [
	    	  {
	    	      label: '남',
	    	      data: [12, 22, 33, 22, 21, 56],
	    	      borderColor: '#36A2EB',
	    	      backgroundColor: '#9BD0F5',
	    	    },
	    	    { 
	    	      label: '여',
	    	      data: [43, 31, 14, 23, 7, 34],
	    	      borderColor: '#FF6384',
	    	      backgroundColor: '#FFB1C1',
	    	    }
    	  ]
	    },
	    options: {
	      scales: {
	        y: {
	          beginAtZero: true
	        }
	      }
	    }
	  });
	</script>
	
	
	
	

</body>
</html>