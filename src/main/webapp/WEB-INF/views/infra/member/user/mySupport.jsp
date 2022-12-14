<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>


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
			font-size: 8pt; 
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
			<div class="row favoraite_card_row" style="height: 500px;">
				<c:forEach items="${supportList }" var="supportList" varStatus="status">
					<div class="card" >       
						<img src="${supportList.path}${supportList.uuidName}" class="card-img-top" alt="..." style="height: 250px; cursor:pointer;" onclick="openPost(${list.postSeq})"> 
						<div class="card-body">
							<div class="row justify-content-center mt-2" style="height: 50px;">  
								<div class="col text-center">
									<span class="card-sub"><c:out value="${supportList.name }"/></span>  
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