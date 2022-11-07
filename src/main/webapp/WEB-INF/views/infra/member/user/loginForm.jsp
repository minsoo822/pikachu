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
	<link rel="stylesheet" href="/resources/css/LoginSign.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
</head>

<body style="background-color: black;">
	<form mane="" method="post">
		<div class="container">
			<div>
				<a href="#" style="text-decoration: none;">
					<h1 class="title">Actor'<span>s</span></h1>
				</a>
			</div>
			<div style="width: 400px; margin-left: auto; margin-right: auto;">
				<input id="id" style="margin-bottom: 16px;" class="form-control" type="text"placeholder="ID">
				<input id="password" class="form-control" type="password"  placeholder="Password">
			</div>
			<div class="row form-check form-switch" style="margin: 10px 0px 0px 450px;" >
				<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked">
				<label class="form-check-label" for="flexSwitchCheckChecked" style="color: white; margin-bottom: 20px;">아이디 저장</label>
			</div>
			<div class="d-grid gap-2 mx-auto mt-3" style="width: 400px;">
				<button type="button" class="btn btn-secondary" onclick="logIn()">Login</button>
			</div>
			<div class="col-2 mx-auto my-4" style="text-align: center;">
			<a class="find" href="">아이디 / 비밀번호 찾기</a>
			</div>
			<div class="mx-auto pt-4" style="border-top: solid gray 1px; width: 400px;">
				<b style="color: white;">cookie.seq:</b>
			</div>
			<div class="d-grid gap-2 mx-auto mt-2" style="width: 400px;">
				<a type="button" class="btn" style="background-color: yellow" id="kakaoBtn">Kakao</a>
			</div>
			<div class="d-grid gap-2 mx-auto mt-2" style="width: 400px;">
				<button type="button" class="btn" style="background-color: #19CE60; color: white;">Naver</button>
			</div>
			<div class="d-grid gap-2 mx-auto mt-2" style="width: 400px;">
				<button type="button" class="btn" style="background-color: #E94235; color: white;">Google</button>
			</div>
			<div class="d-grid gap-2 mx-auto mt-2" style="width: 400px;">
				<button type="button" class="btn btn" style="background-color: #4867AA; color: white;">Facebook</button>
			</div>
		</div>
	</form>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<script type="text/javascript">
	Kakao.init('4a832cceac8c9100e4ed44c4163d468a'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	
	$("#kakaoBtn").on("click", function() {
			/* Kakao.Auth.authorize({
			      redirectUri: 'http://localhost:8080/member/kakaoCallback',
			    }); */
			
			    Kakao.Auth.login({
				   	success:function(response){
				   		Kakao.API.request({ 
				   			url:'/v2/user/me',
				   			success:function(response){
				   				
				   				var token = Kakao.Auth.getAccessToken(); 
				   				console.log(token);
				   				
				   				Kakao.Auth.setAccessToken(token);
				   				var account = response.kakao_account;  
			        	   
			        	  console.log(response)
			        	  console.log("email : " + account.email);
			        	  console.log("name : " + account.profile.nickname);
			        	  console.log("picture : " + account.profile.thumbnail_image_url);
			        	  console.log("picture : " + account.gender);
			        	  console.log("picture : " + account.birthday);
			        	 /*  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length)); */
	  	        	  
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					
	  	        	  $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {
							id : account.email
							,email : account.email
	   						,name : account.profile.nickname
							,gender : account.gender == 'male' ? 28 : 29
								
						},datatype: 'json'
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/home/Home";
							}
						},
						error : function(jqXHR, status, error) {
							alert("아작스 에러 [ " + error + " ]");
						}
					});
					},
					fail: function (error) {
					console.log(error)
					},
				})
			},
			fail: function (error) {
			console.log(error)
			},
		})
	});
	
	
	/* === loginCheck === */
	function logIn() {
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,dataType:"json"
			,url: "/member/loginCheck"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "password" : $("#password").val() }
			,success: function(response) {
				if(response.rt == "success") {
					swal("로그인 성공!", response.name + " 회원님 로그인되었습니다.", "success")
					.then(function() {
						location.href="${pageContext.request.contextPath}/.do";
					});
					/* form.attr("action", goUrlMain).submit(); */
				} else {
					swal("로그인 실패!", "계정이 존재하지 않습니다. 다시 확인해 주세요.", "error");
					return false;
				}
			}
			,error : function(){
			}
		});
	}
	
	
	
	
	</script>
	
</body>
</html>