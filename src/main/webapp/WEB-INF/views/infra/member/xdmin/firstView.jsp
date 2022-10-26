<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<html lang="KO">
<head>
	<title>Home</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/adminstyle.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

	<style type="text/css">
	
	div {
		display: block;	
	}
	
	body {
	background-image: url("/resources/image/banner/photo-manipulation-g5ee022c2a_1920.jpg");
	background-size: cover;
	}
	.container {
		 margin-top: 120px;
		 margin-left: auto;
		 margin-right: auto;
		 text-align: center;
	}
	.xdmin {
		width: 480px;
		height: 730px;
		background-color:rgba(0, 0, 0, 0.8);
		border-radius: 15px;
		margin: 0px 25px 0px 10px;
	}
	.user {
		width: 480px;
		height: 730px;
		background-color:rgba(0, 0, 0, 0.8);
		border-radius: 15px;
		margin: 0px 10px 0px 25px;
	}
	.xdmintitle{
		font-size: 50px;
		margin: 20px 0px 35px 0px;
		color: white;
	}
	.usertitle {
		font-size: 50px;
		margin: 20px 0px 50px 0px;
		color: white;
	}
	img {
		max-width: 100%; 
		height: auto;
	}
	.rmf {
		margin-top: 40px;
		margin-bottom: 50px;
		font-size: 25px;
		color: white;
	}
	.btn {
		background-color: #f9004d;
		color: white;
		border: 2px solid transparent;
		font-weight: bold;
		padding: 8px 18px;
		border-radius: 30px;
		transition: transform .4s;
	}
	.btn:hover {
		background-color: transparent;
		border: 2px solid #f9004d;
		cursor: pointer;
	}
	</style>


</head>

<body>
<form name="" id="mainForm" method="post">
	<section>
		<div class="container" style="">
			<div class="row">
				<div class="col xdmin">
					<div class="row">
						<div class="col xdmintitle">관리자</div>
					</div>
					<div class="row">
						<div class="col">
							<img alt="" src="/resources/image/banner/xminIndex.png">
						</div>
					</div>
					<div class="row">
						<div class="col rmf">코드관리/코드그룹관리/회원관리</div>
					</div>
					<div class="row">
						<div class="col">
							<button type="button" class="btn" id="goXdmin">입장하기</button>
						</div>
					</div>
				</div>
				<div class="col user">
					<div class="row">
						<div class="col usertitle">사용자</div>
					</div>
					<div class="row">
						<div class="col">
							<img alt="" src="/resources/image/banner/userIndex.png">
						</div>
					</div>
					<div class="row">
						<div class="col rmf">홈/게시판/정보</div>
					</div>
					<div class="row">
						<div class="col">
							<button type="button" class="btn" id="goHome">입장하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</section>

</form>
<!-- 지도API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 부트스트랩 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
<!-- jquery ui CSS -->    
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->

	<script type="text/javascript">
	
	$("#goHome").on("click", function(){
		location.href = "/home/Home";
	});
	$("#goXdmin").on("click", function(){
		location.href = "/code/CodeList";
	});
	
	</script>




</body>
</html>