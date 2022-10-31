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
	
	<style>
	  .profile-user-img{
	    width: 40px;
	    height: 40px;
	    border-radius: 70%;
	    overflow: hidden;
	    text-align: center; 
	  }
	
	  .profile-user-img-img{
	    width: 100%;
	    height: 100%;
	    object-fit: cover;
	  }
  i {
  	color: white;
  }
  hr {
  	color: white;
  	width: 1300px;
  }

</style>
	
</head>
	
<body>
	<form action="" id="mainForm" method="post">
	<input type="hidden" id="post_odition_seq" name="seq" value="${item.seq }">
	<input type="hidden" id="member_seq" name="member_seq" value="${sessSeq}">
	<!-- start -->
 	<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/home/Home">Actor'<span>s</span></a></h2>
				<ul>
					<li><a href="tourpostViewForm.html">프로필 투어</a></li>
					<li><a href="oditionPostViewForm.html">오디션 공고</a>
						<ul>
							<li><a href="#">전체</a></li>
							<li><a href="#">상업영화</a></li>
							<li><a href="#">독립(단편)영화</a></li>
							<li><a href="#">(웹)드라마</a></li>
							<li><a href="#">(바이럴)광고</a></li>
						</ul>
					</li>	
					<li><a href="actorPostViewForm.html">프로필 정보</a>
						<ul>
							<li><a href="actorPostViewForm.html">전체</a></li><br>
							<li><a href="actorPostManViewForm.html">남자</a></li><br>
							<li><a href="actorPostWomanViewForm.html">여자</a></li>
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
			<a href="../member/memberRegForm.html" class="btn">회원가입</a>
			<a href="../member/memberLoginForm.html" class="btn">로그인</a>
			</div>
		</nav>
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
		<div class="oditiontable">
			<h2 style="color: white; font-size: 50px; width: 1300px; margin: 20px auto;">한강</h2>
			<table class="table oditionView">
				<tr>
					<th>제목</th>
					<th>촬영분류</th>
					<th>제작사</th>
					<th>감독</th>
					<th>촬영장소 / 기간</th>
					<th>담당자</th>
				</tr>
				<tr style="background-color: #ADADAD;">
					<td><c:out value="${item.name}"/></td>
					<td><c:out value="${item.type}"/></td>
					<td><c:out value="${item.producer}"/></td>
					<td><c:out value="${item.director}"/></td>
					<td><c:out value="${item.location}"/></td>
					<td><c:out value="${item.manager}"/></td>
				</tr>
				<tr>
					<th>극중배역</th>
					<th>모집나이</th>
					<th>성별</th>
					<th>출연료</th>
					<th>이메일</th>
					<th>마감일</th>
				</tr>
				<tr style="background-color: #ADADAD;">
					<td><c:out value="${item.casting}"/></td>
					<td><c:out value="${item.age}"/></td>
					<td><c:out value="${item.gender}"/></td>
					<td><c:out value="${item.pay}"/></td>
					<td><c:out value="${item.email}"/></td>
					<td><c:out value="${item.deadline}"/></td>
				</tr>
			</table>
			<textarea class="area" rows="" cols=""><c:out value="${item.contents}"/></textarea>
		</div>
		<div class="col d-grid justify-content-end" style="width: 1400px; margin-right: auto; margin-left: auto; margin-top: 30px;">
			<a href="oditionPostViewForm.html">
				<button type="button" class="regFrombutton">
					목록으로
				</button>
			</a>
		</div>
		<div class="comentbox">
		<div class="row">
			<div class="col">
				<hr>
				<h6 class="coment">댓글 2</h6>
				<hr>
			</div>
		</div>
		<div class="row" style="margin-bottom: 30px;">
			<div class="col" id="comment_area">
				<!-- 댓글 s -->
				<c:forEach items="${postComentList }" var="postComentList" varStatus="statuspostComentList">
					<div class="row" style="margin-bottom: 20px;">
						<div class="col-1" style="display: flex; justify-content: center;">
							<div class="profile-user-img"> 
							<img src="${postComentList.path}${postComentList.uuidName }" alt="" class="profile-user-img-img"> 
							</div>
						</div>
						<div class="col" style=" color: white;">
							<div class="row">
								<div class="col-1" style="font-size: 8pt; width:68px; ">
									<c:out value="${postComentList.writer }"></c:out>
								</div>
								<div class="col-1" style="font-size: 8pt; width: 150px;">
									<c:out value="${postComentList.datetime }"></c:out>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<c:out value="${postComentList.contents }"></c:out>
								</div>
								<div class="col">
									<button>답글달기</button>
								</div>
							</div>
						</div>			
					</div>
				</c:forEach>
				<!-- 댓글 e -->
				<!-- 대댓글 s -->
				<!-- <div class="row">
					<div class="col-1" style="width: 90px; display: flex; justify-content:flex-end; align-items: center;">
						<i class="fa-solid fa-right-long"></i>
					</div>
					<div class="col-1" style="display: flex; justify-content: center; margin-bottom: 10px;">
						<div class="profile-user-img"> 
						<img src="이미지링크" alt="" class="profile-user-img-img"> 
						</div>
					</div>
					<div class="col" style=" color: white;">
						<div class="row">
							<div class="col" style="font-size: 8pt;">
								이름
							</div>
						</div>
						<div class="row">
							<div class="col">
								감사합니다
							</div>
						</div>
					</div>				
				</div> -->
				<!-- 대댓글 e -->
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="row" style="width: 1400px; margin-right: auto; margin-left: auto;">
					<!-- <hr> -->
					<div class="col-11">
						<input type="text" class="form-control" id="comment" name="contents" placeholder="내용을 입력 해주세요.">
					</div>
					<div class="col-1">
						<button type="button" class="regFrombutton" id="comentSave">등록</button>
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
	<script type="text/javascript">
	
	var seq = $("input:hidden[name=seq]");
	
	var form = $("#mainForm");
	
	$("#comentSave").on("click", function() {
		
		$.ajax({
			url: '/Post/oditionPostComentInst',
			type: 'POST',
			datatype: 'json',
			data: {
				post_odition_seq : $("#post_odition_seq").val(),
				contents : $("#comment").val(),
				member_seq : $("#member_seq").val(),
			},
			success:function(result){
				
				var txt = "";
				
				txt +='<div class="row" style="margin-bottom: 20px;">';
				txt +='<div class="col-1" style="display: flex; justify-content: center;">';
				txt +='<div class="profile-user-img"> ';
				txt +='<img src="'+ result.img +'" alt="" class="profile-user-img-img"> ';
				txt +='</div>';
				txt +='</div>';
				txt +='<div class="col" style=" color: white;">';
				txt +='<div class="row">';
				txt +='<div class="col-1" style="font-size: 8pt; width:68px; ">';
				txt += result.writer;
				txt +='</div>';
				txt +='<div class="col-1" style="font-size: 8pt; width: 150px;">';
				txt += '방금전';
				txt +='</div>';
				txt +='</div>';
				txt +='<div class="row">';
				txt +='<div class="col">';
				txt += result.comment;
				txt +='</div>';
				/* txt +='<div class="col">';
				txt +='<button>답글달기</button>';
				txt +='</div>'; */
				txt +='</div>';
				txt +='</div>';
				txt +='</div>';
				
				$("#comment_area").prepend(txt);
				$("#comment").val("");
			},
			error:function(){
				alert("ajax error..!");
			}
		})
		
		
	});
	
	
	/* comentSave = function(key) {
		seq.attr("value", key);
		form.attr("action", "/Post/oditionPostComentInst").submti();
	} */
		
	
	
		document.querySelector(".disableLink").removeAttribute('href');
	
	
	</script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>
</html>