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
	
	img.card-img-top{
		min-height: 180px;
		max-height: 180px;
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
	<div class="row m-5" style="display: flex; justify-content: center; margin-left: auto; margin-right: auto;">
		<c:forEach items="${supportList }" var="supportList" varStatus="status">
			<div class="col-3" >
				<div class="card" style="height: 400px;">
					<img src="${supportList.path}${supportList.uuidName}" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title"><c:out value="${supportList.name }"/></h5>
						<!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
					<a href="#" onclick="goPost(${supportList.odition_seq})" class="btn btn-primary">게시물로 가기</a>
				</div>
				</div>
			</div>
		</c:forEach>
    </div>

	
	</form>
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