<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

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
	<link rel="stylesheet" href="/resources/css/adminstyle.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
</head>
<body>
	<form action="" id="" name="form" method="post">
		<input type="hidden" name="seq" value="${vo.seq}">

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
	          <a href="/member/memberList">
	            <i class='bx bx-book-alt' ></i>
	            <span class="link_name">회원관리</span>
	          </a>
	          <i class='bx bxs-chevron-down arrow' ></i>
	        </div>
	        <ul class="sub-menu">
	          <li><a class="link_name" href="#">회원관리</a></li>
	          <li><a href="/member/actorList">배우 관리</a></li>
	          <li><a href="/member/directorList">디렉터 관리</a></li>
	        </ul>
	      </li>
	      <!-- <li>
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
	      </li> -->
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
	          <h5>코드그룹 관리</h5>
	        </div>
	        <div class="two">
	          <div class="three">
	            <select name="shUseOption">
					<option value="" hidden selected>사용여부</option>
					<option value="0">N</option>
					<option value="1">Y</option>
	            </select>
	            <select>
	              <option hidden selected>날짜</option>
	              <option>수정일</option>
	              <option>등록일</option>
	              <option>생일</option>
	            </select>
	            <input type="text" id="StDatePicker" placeholder="시작일">
	            <input type="text" id="EnDatePicker" placeholder="종료일">
	             <select name="shDelOption">
					<option value="" hidden selected>삭제여부</option>
					<option value="0">N</option>
					<option value="1">Y</option>
	            </select>
	            <select id="shOption" name="shOption">
	              <option value="" hidden selected>검색구분</option>
	              <option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>코드그룹 번호</option>
	              <option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>코드그룹 이름</option>
	            </select>
	            <input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>"  placeholder="검색어">
	            <div class="searchBtn">
	              <button  type="submit">검색</button>
	              <button  type="button" onclick="reSet();">리셋</button>
	            </div>
	          </div>
	        </div>
	        <div class="wow">
	          <select>
	            <option>10</option>
	          </select>  
	        </div>
	        <div class="four">
	          <div class="five">
	            <div class="line">
	              <!-- <h6>코드그룹 관리</h6> -->
	            </div>
	            <div class="row" style="margin: 25px; text-align: center;">
	            	<div class="col">
						<div class="row mb-2">
							<div class="col">코드</div>
							<div class="col">
								<input type="text" class="form-control" placeholder="자동생성" disabled value="<c:out value="${item.seq}"/>">
							</div>
						</div>
						<div class="row mb-2">
							<div class="col">코드이름</div>
							<div class="col">
								<input type="text" class="form-control" name="name" id="name" value="${item.name}">
							</div>
						</div>
						<div class="row mb-2">
							<div class="col">순서</div>
							<div class="col">
								<input type="text" class="form-control"name="oder" id="oder" value="<c:out value="${item.oder}"/>">
							</div>
						</div>
						<div class="row mb-2">
							<div class="col">사용여부</div>
							<div class="col">
								<select class="form-select" id="useNy" name="useNy" value="<c:out value="${item.useNy }"/>">
									<option value="" <c:out value="${item.useNy }"/>" hidden selected>선택</option>
									<option value="0" <c:if test="${item.useNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.useNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row mb-2">
							<div class="col">삭제여부</div>
							<div class="col">
								<select class="form-select" id="delNy" name="delNy">
									<option value="" hidden selected>선택</option>
									<option value="0" <c:if test="${item.delNy eq 0}">selected</c:if>>N<option>
									<option value="1" <c:if test="${item.delNy eq 1}">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col">설명</div>
							<div class="col">
								<textarea cols="40"></textarea>
							</div>
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
				<!-- <div class="Pagingdp">
					<div class="pagination">
						<a href="#">Prev</a>
						<a href="#" class="active">1</a>
						<a href="#" class="active">2</a>
						<a href="#" class="active">3</a>
						<a href="#" class="active">4</a>
						<a href="#" class="active">5</a>
						<a href="#">Next</a>
					</div>
				</div> -->
				<div class="groupbutton">
					<div class="d-grid gap-2 d-md-block btn1" style="float: left;">
						<button class="btn btn-danger" type="submit"><i class="fa-solid fa-minus"></i></button>
						<button class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" ><i class="fa-solid fa-trash-can"></i></button>
					</div>
					<div class="d-grid gap-2 d-md-flex btn2">
						<button class="btn btn-success" type="submit"><i class="fa-solid fa-file-excel"></i></button>
						<a href="#"><button class="btn btn-primary" type="submit"><i class="fa-solid fa-plus"></i></button></a>
					</div>
				</div>
	        </div>
	      </div>
	    </div>
		</section>
	</form>
 	
	<form name="formVo" id="formVo" method="post">
		<!-- *Vo.jsp s -->
		<%@include file="../xdmin/includeCodeGroup/codeGroupVo.jsp"%>		<!-- #-> -->
		<!-- *Vo.jsp e -->
	</form>

  <script>

	var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	function reg() {
		
		  if(document.getElementById("name").value == '' || document.getElementById("name").value == null) {
			  alert("코드그룹 이름을 입력해주세요.");
			  document.getElementById("name").value = "";
			  document.getElementById("name").focus();
			  return false;
		  }
		  
		  if(document.getElementById("useNy").value == 2) {
			  alert("코드그룹 사용유무를 선택해주세요.");
			  document.getElementById("useNy").value = 2;
			  document.getElementById("useNy").focus();
			  return false;
		  }
		
			  document.getElementById("FormInst").submit();
	  }	  
	
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
		formVo.attr("action", goUrlList).submit();
	});
	
  
  
  
  
//  alert("test");
  
//  alert(document.getElementById('name').value);			//input
//  alert(document.getElementById('oder').value);	
//  alert(document.getElementById('use').options[document.getElementById('use').selectedIndex].value);	//select
//  alert(document.getElementById('use').value);															//select
//  
//  alert(document.getElementById('radio').value);
//  alert(document.getElementById('check').value);

  
  
  
  
  
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
</body>
</html>
