<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>


<!doctype html>
<html lang="ko">
<head>
	<title>작품 상세보기</title>
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
	.area {
		padding-left: 50px;
	}
/* --------------------------------------------------------------- */	
	.modal-close {
	    color: #999;
	    position: absolute;
	    right: 15px;
	    top: 10px;
	    text-decoration-line: none;
	}
	
	.modal-content {
	    background-color: #fff;
	    width: 350px;
	    position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    border-radius: 10px;
	    box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
	    text-align: center; 
	    padding: 10px;
	}
	
	.modal {
	    background-color: rgba(0, 0, 0, 0.4);
	    position: fixed;
	    top: 0;
	    left: 0;
	    height: 100vh;
	    width: 100%;
	    /* display: none; */
	} 
	
	.modal.active {
	    display: block;
	}
	
	.modal-body {
	    /* background-color: rgb(224, 224, 224); */ 
	    width: 100%;
	    height: 300px;
	    border-radius: 5px;
	    overflow-y: auto;
	}
	
	.modal-body::-webkit-scrollbar { 
	    display: none; /* Chrome, Safari, Opera*/
	}
	
	.modal-block{ 
	    width: 100%;
	    height: 40px;
	    display: flex;
	    align-items: center;
	    border-bottom: 1px solid #e0e0e0;
		margin-bottom: 10px;
		padding: 0px 0px 10px 0px;
	}
	
	.modal-block img{
		object-fit:auto;
		width: 30px; 
		height: 30px;
	}
	
	.modal_overlay {
	  position: fixed;
	  top:0;
	  left:0;
	  z-index: 100;
	  width: 100%;
	  height: 100%;
	  background-color: rgba(0,0,0,0.3);
	  backdrop-filter: blur(10px);
	  transition: all 0.3s;
	}
		
</style>
	
</head>
	
<body>
	<form action="" id="mainForm" method="post">
	<c:set var="listCodeFilmo_type" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
	<input type="hidden" id="post_odition_seq" name="post_odition_seq" value="${item.seq }">
	<input type="hidden" id="member_seq" name="member_seq" value="${sessSeq}">
	<input type="hidden" id="odition_seq" name="odition_seq" value="${vo.seq }">
	<input type="hidden" id="mm_seq" name="mm_seq" value="${sessSeq}">
	<input type="hidden" id="seq" name="seq" value="">
	<!-- start -->
 	<!-- header s -->
    <%@include file="/resources/include/header.jsp"%>
    <!-- header e -->

	<div class="oditionpost">
		<!-- <div class="titile">
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
		</div> -->
		<div class="oditiontable">
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
					<td>
					<c:forEach items="${listCodeFilmo_type }" var="listFilmo_type" varStatus="statuslistCodeFilmo_type">
						<c:if test="${item.type eq listFilmo_type.seq}"><c:out value="${listFilmo_type.name }"/></c:if>
					</c:forEach>
					</td>	
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
					<td>
						<c:forEach items="${listCodeGender }" var="listGender" varStatus="statuslistGender">
							<c:if test="${item.gender eq listGender.seq}"><c:out value="${listGender.name }"/></c:if>	
						</c:forEach>
					</td>
					<td><c:out value="${item.pay}"/></td>
					<td><c:out value="${item.email}"/></td>
					<td><c:out value="${item.deadline}"/></td>
				</tr>
			</table>
			<div class="row" style="margin-left: auto; margin-right: auto; width: 1400px; height: 400px; margin-bottom: 50px;">
				<div class="col-7">
					<textarea class="" rows="" cols="" readonly style="height: 400px; padding: 50px; background-color: #d9d9d9;"><c:out value="${item.contents}"/></textarea>
				</div>
				<div class="col-5">
					<div id="map" style="width:100%;height:100%;"></div>
				</div>
			</div>
		</div>
		<div class="col" style="width: 1400px; margin-top: 30px; text-align: right; margin-left: auto; margin-right: auto; margin-bottom: 20px;">
			<a href="#" style="margin-left: 10px; text-decoration: none;">
						<button onclick="suPportList()" type="button" class="btn btn-success">
							지원현황
						</button>
					</a>
			<c:choose>
				<c:when test="${count == 0 }">
					<a href="#" style="margin-left: 10px; text-decoration: none;">
						<button id="suPport" type="button" class="regFrombutton" style="background: green;">
							지원하기
						</button>
					</a>
				</c:when>
				<c:otherwise>
					<a href="#" style="margin-left: 10px; text-decoration: none;">
						<button id="suPportDel" type="button" class="btn btn-warning">
							지원취소
						</button>
					</a>
				</c:otherwise>			
			</c:choose>
			<a href="/Post/oditionPostViewList" style="margin-left: 10px; ">
				<button type="button" class="regFrombutton">
					목록으로
				</button>
			</a>
			
		</div>
		<!-- 팔로우 모달 창 -->
		<div class="modal"  id="modal-notice">
			<div class="modal-content">
				<a href="javascript:closeModal('modal-notice')" class="modal-close">x</a>
				<span id="followTitle" style="font-weight:bold; font-size: 13pt; margin-bottom:5px;">작품 지원현황</span>
				<div id="modaldata" class="modal-body">
				
				<!-- 지원자 정보 들어가는 곳  -->
				            
				</div>
			</div>	
		</div>
		<div class="comentbox">
		<div class="row">
			<div class="col">
				<hr>
				<h6 class="coment">댓글</h6>
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
								<!-- <div class="col">
									<button>답글달기</button>
								</div> -->
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
	<input type="hidden" id="address" value="${item.address }">
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
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4a832cceac8c9100e4ed44c4163d468a&libraries=services,clusterer,drawing"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script type="text/javascript">
	
	var address = $("#address").val();
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(address , function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">촬영장소</div>'
	        });
	        infowindow.open(map, marker);
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
	
	
	var seq = $("input:hidden[name=seq]");
	
	var form = $("#mainForm");
	
	
	suPportList = function() {
			
		$('#modaldata').html('');
		
		$.ajax({
			
			url: '/Post/supportList',
			type: 'POST',
			datatype: 'json',
			data: {
				odition_seq : $("#odition_seq").val()
			},
			success:function(result) {
				if(result.rt == "success") {
					var txt = "";
					
					for(var i = 0; i < result.list.length; i++) {
						
					txt += '<div class="row modal-block">'
						txt += '<div class="col-2">'
						txt += '<img src="'+result.list[i].path + result.list[i].uuidName+'" alt="" width="100%" height="100%" style="border-radius:50%;">'
						txt += '</div>'
						txt += '<div class="col-6 text-start" style="cursor:pointer; font-size:10pt;" onclick="runForm(' + result.list[i].seq +')">'+result.list[i].name+'</div>'
						txt += '<div class="col-3 text-end"></div>'
						txt += '</div>'
					}
					
					$('#modaldata').html(txt); 
				}
			},
			error:function(){
				alert("ajax error..!");
			}
			
		});
		
		$("#modal-notice").addClass('active');
			
	};
	
	//모달 닫기
	closeModal = function(modal) {
		$("#"+modal).removeClass('active');
	};
	
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
	
	var goUrlLogout = "/member/logoutForm";
	var goUrlLogin = "/member/loginForm";
	var goUrlIndex = "/member/mainIndex"; 			/* #-> */
	var goUrlMain = "/member/mainHome";
	var goUrlMypage = "/member/Mypage";
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var member_seq = $("#member_seq").val();
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	
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
	
	runForm = function(key) {
		if (key == member_seq) {
			form.attr("action", goUrlMypage).submit();
		} else {
			seq.attr("value", key);
			form.attr("action" ,"/Post/ActorView").submit();
		}
	};
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
	
	$("#suPport").on("click", function(){
		
		$.ajax({
			url: '/Post/supportInst'
			,type: 'POST'
			,datatype: 'json'
			,data: {
				post_odition_seq : $("#post_odition_seq").val()
				,member_seq : $("#member_seq").val()
			}
			,success: function(result) {
				if(result.rt == "success") {
					swal("지원 성공!", "작품에 접수 되었습니다.", "success")
					.then(function() {
						location.href="/Post/oditionPostViewList";
					});
					/* form.attr("action", goUrlMain).submit(); */
				}
			}
			,error : function(){
				alert("ajax error..!")
			}
		})
	});
	
	$("#suPportDel").on("click", function(){
		swal({
			  title: "지원을 취소하시겠어요?",
			  text: "지원하신 작품이 취소될수있습니다!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    swal("지원하신 작품 취소가 완료되었습니다!", {
			      icon: "success",
			    })
			    .then(function() {
					form.attr("action", "/Post/supportDel").submit();
			    });
			  } else {
			    swal("변동사항 없습니다");
			  }
			});
	});
	
	
	
	
	
	//상단바 디세이블처리
	/* document.querySelector(".disableLink").removeAttribute('href'); */
	/* comentSave = function(key) {
		seq.attr("value", key);
		form.attr("action", "/Post/oditionPostComentInst").submti();
	} */
		
	
	
		/* document.querySelector(".disableLink").removeAttribute('href'); */
	
	
	</script>
</body>
</html>