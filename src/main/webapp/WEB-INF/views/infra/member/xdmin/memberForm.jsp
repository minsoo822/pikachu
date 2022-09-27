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
</head>

<body>
	<form name="" id="mainForm" method="post">
		<input hidden="hidden" name="seq" value="${vo.seq}">
	  <div class="sidebar close">
	    <div class="logo-details">
	      <i class='bx bxl-c-plus-plus'></i>
	      <span class="logo_name">Actor's</span>
	    </div>
	    <ul class="nav-links">
	      <li>
	        <a href="#">
	          <i class='bx bx-grid-alt' ></i>
	          <span class="link_name">대시보드</span>
	        </a>
	        <ul class="sub-menu blank">
	          <li><a class="link_name" href="#">Category</a></li>
	        </ul>
	      </li>
	      <li>
	        <div class="iocn-link">
	          <a href="#">
	            <i class='bx bx-code-alt' ></i>
	            <span class="link_name">코드그룹 리스트 관리</span>
	          </a>
	          <i class='bx bxs-chevron-down arrow' ></i>
	        </div>
	        <ul class="sub-menu">
	          <li><a class="link_name" href="/codeGroup/codeGroupList">코드그룹 리스트 관리</a></li>
	          <li><a href="/code/CodeList">코드 관리</a></li>
	          <li><a href="/codeGroup/codeGroupList">코드그룹 관리</a></li>
	        </ul>
	      </li>
	      <li>
	        <div class="iocn-link">
	          <a href="#">
	            <i class='bx bx-book-alt' ></i>
	            <span class="link_name">회원관리</span>
	          </a>
	          <i class='bx bxs-chevron-down arrow' ></i>
	        </div>
	        <ul class="sub-menu">
	          <li><a class="link_name" href="#">회원관리</a></li>
	          <li><a href="#">배우 관리</a></li>
	          <li><a href="#">디렉터 관리</a></li>
	        </ul>
	      </li>
	      <li>
	        <a href="#">
	          <i class='bx bx-pie-chart-alt-2' ></i>
	          <span class="link_name">Analytics</span>
	        </a>
	        <ul class="sub-menu blank">
	          <li><a class="link_name" href="#">Analytics</a></li>
	        </ul>
	      </li>
	      <li>
	        <a href="#">
	          <i class='bx bx-line-chart' ></i>
	          <span class="link_name">Chart</span>
	        </a>
	        <ul class="sub-menu blank">
	          <li><a class="link_name" href="#">Chart</a></li>
	        </ul>
	      </li>
	      <li>
	        <div class="iocn-link">
	          <a href="#">
	            <i class='bx bx-plug' ></i>
	            <span class="link_name">Plugins</span>
	          </a>
	          <i class='bx bxs-chevron-down arrow' ></i>
	        </div>
	        <ul class="sub-menu">
	          <li><a class="link_name" href="#">Plugins</a></li>
	          <li><a href="#">UI Face</a></li>
	          <li><a href="#">Pigments</a></li>
	          <li><a href="#">Box Icons</a></li>
	        </ul>
	      </li>
	      <li>
	        <a href="#">
	          <i class='bx bx-compass' ></i>
	          <span class="link_name">Explore</span>
	        </a>
	        <ul class="sub-menu blank">
	          <li><a class="link_name" href="#">Explore</a></li>
	        </ul>
	      </li>
	      <li>
	        <a href="#">
	          <i class='bx bx-history'></i>
	          <span class="link_name">History</span>
	        </a>
	        <ul class="sub-menu blank">
	          <li><a class="link_name" href="#">History</a></li>
	        </ul>
	      </li>
	      <li>
	        <a href="#">
	          <i class='bx bx-cog' ></i>
	          <span class="link_name">Setting</span>
	        </a>
	        <ul class="sub-menu blank">
	          <li><a class="link_name" href="#">Setting</a></li>
	        </ul>
	      </li>
	      <li>
	        <div class="profile-details">
	          <div class="profile-content">
	            <img src="/resources/image/403019_avatar_male_man_person_user_icon.png" alt="profileImg">
	          </div>
	          <div class="name-job">
	            <div class="profile_name">Min soo</div>
	            <div class="job"></div>
	          </div>
	          <i class='bx bx-log-out' ></i>
	        </div>
	      </li>
	    </ul>
	  </div>
	  <section class="home-section">
	    <div class="home-content">
	      <i class='bx bx-menu' ></i>
	      <span class="text">대시보드</span>
	      <div class="nav-search">
	        <div class="search">
	          <input type="text" placeholder="Search...">
	          <button type="submit">
	            <img src="/resources/image/2093656_seach_look_search_see_icon.png" alt="">
	          </button>
	        </div>
	      </div>
	    </div>
	    <div class="main">    
	      <div class="mainSearch">
	        <div class="title">
	          <h5>전체회원 관리</h5>
	        </div>
	        <div class="two">
	          <div class="three">
	            <select name="">
					<option value="" hidden selected>삭제여부</option>
					<option>N</option>
					<option>Y</option>
	            </select>
	            <select>
	              <option hidden selected>날짜</option>
	              <option>수정일</option>
	              <option>등록일</option>
	              <option>생일</option>
	            </select>
	            <input type="text" id="StDatePicker" placeholder="시작일">
	            <input type="text" id="EnDatePicker" placeholder="종료일">
	            <select id="" name="">
	              <option value="" hidden selected>검색구분</option>
	              <option >코드그룹 번호</option>
	              <option>코드그룹 이름</option>
	              <option>코드그룹 삭제여부</option>
	              <option>코드그룹 사용여부</option>
	            </select>
	            <input type="text" id="" name="" placeholder="검색어">
	            <div class="searchBtn">
	              <button  type="submit">검색</button>
	              <button  type="submit">리셋</button>
	            </div>
	          </div>
	        </div>
	        <div class="four">
	          <div class="five">
	            <div class="row m-5">
	            	<div class="col">
	            		<div class="row">
	            			<div class="col-4">
	            				<div class="row">
	            					<div class="col">
	            						<img style="width: 400px; height: 600px;" src="" id="preview"/>
	            					</div>
	            				</div>
	            				<div class="row">
	            					<div class="col">
	            						<input type="file" name="file_path" class="form-control" style="width: 400px;">
	            					</div>
	            				</div>
	            			</div>
	            			<div class="col-8">
	            				<div class="row mb-2" style="text-align: center;">
	            					<div class="col g-2">회원타입</div>
	            					<div class="col">
	            						<select class="form-select" name="user_type" value="${item.user_type }">
	            							<option value="${item.user_type}">선택</option>
	            							<option value="26">배우</option>
	            							<option value="27">감독</option>
	            						</select>
									</div>
									<div class="col g-2">감독타입</div>
	            					<div class="col">
										<input type="text" class="form-control" name="director_type" value="${item.director_type }">
									</div>
									<div class="col g-2">회사유무</div>
	            					<div class="col">
										<select class="form-select" name="company_useNy" value="${item.company_useNy }">
											<option value="${item.company_useNy}">선택</option>
											<option value="0">N</option>
											<option value="1">Y</option>
										</select>
									</div>
	            				</div>
	            				<div class="row mb-1">
	            					<div class="col">아이디</div>
	            					<div class="col">비밀번호</div>
	            				</div>
	            				<div class="row mb-3">
	            					<div class="col">
										<input type="text" class="form-control" id="id" name="id" value="${item.id }">
										<span id="id_check"></span>
									</div>
	            					<div class="col">
										<input type="text" class="form-control" name="password" value="${item.password }">
									</div>
	            				</div>
	            				<div class="row mb-1">
	            					<div class="col">이름</div>
	            					<div class="col">&nbsp;</div>
	            					<div class="col">생일</div>
	            					<div class="col">나이</div>
	            				</div>
	            				<div class="row mb-3">
	            					<div class="col">
										<input type="text" class="form-control" name="name" value="${item.name }">
									</div>
									<div class="col">&nbsp;</div>
	            					<div class="col">
										<input type="date" class="form-control" name="dob" value="${item.dob }">
									</div>
									<div class="col">
										<input type="text" class="form-control" name="age" value="${item.age }">
									</div>
	            				</div>
	            				<div class="row mb-1">
	            					<div class="col">성별</div>
	            					<div class="col">이메일</div>
	            				</div>
	            				<div class="row mb-3">
	            					<div class="col">
										<select class="form-select" name="gender" value="${item.gender}">
											<option value="${item.gender}">선택</option>
											<option value="28">남자</option>
											<option value="29">여자</option>
										</select>
									</div>
	            					<div class="col">
										<input type="text" class="form-control">
									</div>
	            				</div>
	            				<div class="row mb-1">
	            					<div class="col">통신사</div>
	            					<div class="col">휴대폰번호</div>
	            				</div>
	            				<div class="row mb-3">
	            					<div class="col">
										<select class="form-select">
											<option>선택</option>
											<option>SKT</option>
											<option>KT</option>
											<option>LGU+</option>
										</select>
									</div>
									<div class="col">
										<input type="text" class="form-control" name="phone_number" value="${item.phone_number }">
									</div>
	            				</div>
	            				<div class="row mb-1">
	            					<div class="col">키</div>
									<div class="col">몸무게</div>
									<div class="col">쌍꺼풀</div>
									<div class="col">목소리톤</div>
	            				</div>
	            				<div class="row mb-3">
	            					<div class="col">
										<input type="text" class="form-control" name="actor_height" value="${item.actor_height }">
									</div>
									<div class="col">
										<input type="text" class="form-control" name="actor_weight" value="${item.actor_weight }">
									</div>
									<div class="col">
										<select class="form-select" name="actor_eyelid" value="${item.actor_eyelid }">
											<option value="${item.actor_eyelid}">선택</option>
											<option value="37">겉쌍꺼풀</option>
											<option value="38">속쌍꺼풀</option>
											<option value="39">무쌍꺼풀</option>
										</select>
									</div>
									<div class="col">
										<select class="form-select" name="actor_voice" value="${item.actor_voice }">
											<option value="${item.actor_voice}">선택</option>
											<option value="40">고음</option>
											<option value="41">중음</option>
											<option value="42">저음</option>
										</select>
									</div>
	            				</div>
	            				<div class="row mb-1">
	            					<div class="col">주소</div>
	            					<div class="col">관리자</div>
	            				</div>
	            				<div class="row mb-1">
									<div class="col input-group">
										<input disabled type="text" class="form-control" id="sample4_postcode" name="zip_code" placeholder="우편번호" value="${item.zip_code }">
										<button type="button" class="input-group-text" onclick="sample4_execDaumPostcode()"><i class="fa-solid fa-magnifying-glass"></i></button>
										<button class="input-group-text"><i class="fa-solid fa-rotate-left"></i></button>
									</div>
									<div class="col">
										<select class="form-select">
											<option>선택</option>
											<option>N</option>
											<option>Y</option>
										</select>
									</div>
	            				</div>
	            				<div class="row mb-1">
									<div class="col">
										<input disabled type="text" class="form-control" id=sample4_roadAddress name="address" placeholder="도로명주소" value="${item.address }">
									</div>
									<div class="col">&nbsp;</div>
	            				</div>
	            				<div class="row mb-1">
									<div class="col">
										<input type="text" class="form-control" id="sample4_detailAddress" name="address_detail" placeholder="상세주소" value="${item.address_detail }">
									</div>
									<div class="col">&nbsp;</div>
	            				</div>
	            				<div class="row mb-1">
									<div class="col">
										<input disabled type="text" class="form-control" placeholder="위도">
									</div>
									<div class="col">
										<input disabled type="text" class="form-control" placeholder="경도">
									</div>
									<div class="col">&nbsp;</div>
									<div class="col">&nbsp;</div>
	            				</div>
	            				
	            				<div class="row mt-5 d-grid justify-content-end">
									<div class="col">
										<button type="button" class="btn btn-primary" id="btnSave" onclick="reg()">등록</button>
										<button type="button" class="btn btn-primary" id="btnList">목록</button>
									</div>
								</div>
	            			</div>
	            		</div>
	            	</div>
	            </div>
	       </div>
			<div class="groupbutton">
				<div class="d-grid gap-2 d-md-block btn1" style="float: left;">
					<button class="btn btn-danger" type="submit"><i class="fa-solid fa-minus"></i></button>
					<button class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" ><i class="fa-solid fa-trash-can"></i></button>
				</div>
				<div class="d-grid gap-2 d-md-flex btn2">
					<button class="btn btn-success" type="submit"><i class="fa-solid fa-file-excel"></i></button>
					<a href="/codeGroup/codeGroupForm" class="btn btn-primary" type="submit"><i class="fa-solid fa-plus"></i></a>
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
<script>


	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
	var goUrlUele = "/member/memberUele";				/* #-> */
	var goUrlDele = "/member/memberDele";				/* #-> */
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	
	
	$("#btnSave").on("click", function(){
		
		if (seq.val() == "0" || seq.val() == ""){
	   		// insert
	   	//	if (validationInst() == false) return false;
	   		form.attr("action", goUrlInst).submit();
	   	} else {
	   		// update
	   		/* keyName.val(atob(keyName.val())); */
	   	//	if (validationUpdt() == false) return false;
	   		form.attr("action", goUrlUpdt).submit();
	   	}
	}); 
  
	$("#btnList").on("click", function(){
		form.attr("action", goUrlList).submit();
	});
	
	
	
	/* 중복아이디 체크 */
	$("#id").on("focusout", function(){ 
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/idCheck"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val() }
			,dataType : 'json'
			,success: function(response) {
				if(response.rt == "success") {
					$("#id_check").text("사용가능한 아이디입니다.");
					$("#id_check").css("color", "lightgreen");
				} else {
					$("#id_check").text("이미 사용중인 아이디입니다.");
					$("#id_check").css("color", "red");
				}
			}
		});
	});
	
	
	/* 카카오지도API */
  	function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
            }
        }).open();
    }
	
	
	
	//이미지 미리보기
	$('input[name="file_path"]').change(function(){
	    setImageFromFile(this, '#preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	
	
	$(function() {
		$( "#StDatePicker" ).datepicker({
			changeMonth: true,
			dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
			dayNameMin: ['월', '화', '수', '목', '금', '토', '일'],
			monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			minthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월', ]
		});
	});
	$(function() {
		$( "#EnDatePicker" ).datepicker({
			changeMonth: true,
			dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
			dayNameMin: ['월', '화', '수', '목', '금', '토', '일'],
			monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
			minthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월', ]
		});
	});

	/* 사이드바 */
	 let arrow = document.querySelectorAll(".arrow");
	  for (var i = 0; i < arrow.length; i++) {
	    arrow[i].addEventListener("click", (e)=>{
	   let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
	   arrowParent.classList.toggle("showMenu");
	    });
	  }
	  let sidebar = document.querySelector(".sidebar");
	  let sidebarBtn = document.querySelector(".bx-menu");
	  console.log(sidebarBtn);
	  sidebarBtn.addEventListener("click", ()=>{
	    sidebar.classList.toggle("close");
	  });
  
  </script>

</body>
</html>