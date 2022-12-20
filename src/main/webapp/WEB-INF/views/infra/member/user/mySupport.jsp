<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>


<!doctype html>
<html lang="ko">
<head>
	<title>나의 작품 지원목록</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->
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
	
	<style>
		
	/* img.card-img-top{
		min-height: 180px;
		max-height: 180px;
	} */
		div	{
			/* border: solid 1px orange; */
		}
		.card {
			width: 18rem; 
			margin: auto; 
			margin-bottom: 30px; 
			height: 400px; 
			padding:0px;
		
		}
		.card-main {
			font-size: 10pt;
			font-weight: bold;		 
		}
		
		.card-sub {
			font-size: 15pt; 
			font-weight: bold;	
				
		}
		.regFrombutton:hover {
			color: #f9004d;
		}		  	
	</style>
	
</head>
	
<body style="background-color: black;">
	<form action="" id="mainForm" method="post">
	
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->
    <input type="hidden" name="member_seq" value="${sessSeq }">
    <input type="hidden" id="post_odition_seq" name="seq" value="">

	<div class="container" style="min-height: 700px;"> 
		<form action="" id="mainForm" method="post">
			<div class="row favoraite_card_row" style="height: 500px; margin-top: 50px;">
				<c:forEach items="${supportList }" var="supportList" varStatus="status">
					<div class="card" style="margin-right: 20px; margin-left: 20px;">       
						<img src="${supportList.path}${supportList.uuidName}" class="card-img-top" alt="..." style="height: 250px; cursor:pointer;"> 
						<div class="card-body">
							<div class="row justify-content-center mt-2" style="height: 50px;">  
								<div class="col text-center">
									<span class="card-sub"><c:out value="${supportList.name }"/></span>  
								</div>
							</div>
							<div class="row justify-content-center mt-2" style="height: 50px;">  
								<div class="col text-center">
									<button onclick="goPost(${supportList.odition_seq})" class="regFrombutton">게시물가기</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</form>
	</div>	
	<script type="text/javascript">
	
	form = $("#mainForm");
	seq = $("#post_odition_seq");
	
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
	
	goPost = function(key) {
		seq.attr("value", key);
		form.attr("action", "/Post/oditionPostView").submit();
	}
	
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>