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
	
	<!-- <style type="text/css">
	
	  .modal-backdrop {

        z-index: -1;

    }
    
	</style> -->
	
</head>
	
	<body class="homepage is-preload">
		<form id="mainForm"></form>
		<div id="page-wrapper">
		
			<!-- Header -->
				<div id="header">
				<!-- Inner -->
					<div class="inner">
						<header class="indexHeader">
							<h1 class="homepageline">
								<a href="#" onclick="goHome()" id="logo">Actor'<span style="color: #f9004d;">s</span></a>
							</h1>
							<hr class="indexhr">
							<p></p>
						</header>
						<!-- <div class="baba"> -->
						<footer class="indexFooter">
							<a onclick="goSignup()" href="#" class="indexbtn" style="margin-right: 15px;">로그인</a>
							<a  class="indexbtn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">회원가입</a>
						</footer>	
					</div>
					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div  class="modal-dialog">
					    <div style="background: #393939;" class="modal-content">
					      <div class="modal-header">
					        <h1 class="modal-title fs-5 homepageline" id="staticBackdropLabel">Actor'<span style="color: #f9004d;">s</span></h1>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        어서오세요 환영합니다.
					      </div>
					      <div class="modal-footer" style="display: flex; align-items: center; justify-content: space-between;">
					        <button type="button" class="indexbtn" id="goActorSignup">배우로 가입하기</button>
					        <button type="button" class="indexbtn" id="goDerectorSignup">디렉터로 가입하기</button>
					      </div>
					    </div>
					  </div>
					</div>
				</div>
			</div>
		</div>
	
		
		<script type="text/javascript">
		
		function goHome() {
			location.href="/member/mainHome";
		}
		function goSignup() {
			location.href="/member/loginForm";
		}
		
		form = $("#mainForm")
		
		
		$("#goActorSignup").on("click",function(){
			alert("배우로")
			form.attr("action", "/member/mainHome").submit();
		});
		$("#goDerectorSignup").on("click",function(){
			alert("감독으로")
			form.attr("action", "/member/mainHome").submit();
		});
		</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="/resources/js/jquery.min.js"></script>
		<script src="/resources/js/breakpoints.min.js"></script>
		<script src="/resources/js/main.js"></script>
		
	</body>
</html>