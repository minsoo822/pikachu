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
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>										<!-- jQuery UI 라이브러리 js파일 -->
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">   
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/adminstyle.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
	<form name="form" action="http://localhost:8080/codeGroup/codeGroupList" >
		<input type="hidden" name="seq" value="<c:out value="${dto.seq}"/>">
		<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
		<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
		<input type="hidden" name="thisPage" value="">
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
	          <h5>코드그룹관리</h5>
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
	              <option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>코드그룹 삭제여부</option>
	              <option value="4" <c:if test="${vo.shOption eq 4 }">selected</c:if>>코드그룹 사용여부</option>
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
	            <option>20</option>
	            <option>30</option>
	            <option>40</option>
	            <option>50</option>
	            
	          </select>  
	        </div>
	        <div class="four">
	          <div class="five">
	            <div class="line">
	            <!--   <h6>코드그룹 관리</h6> -->
	            </div>
	            <table class="table table-striped">
	              <tr class="tableTr">
	                <th><input class="form-check-input" type="checkbox"></th>
	                <th>#</th>
	                <th>코드그룹 코드</th>
	                <th>코드그룹 이름</th>
	                <th>코드그룹 삭제여부 N:0 Y:1</th>
	                <th>코드그룹 사용여부 N:0 Y:1</th>
	                <th>순서</th>
	                <th>코드갯수</th>
	                <th>등록일</th>
	                <th>수정일</th>
	              </tr>
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td style="text-align: center;" colspan="9"> no Data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="list" varStatus="status">
				<tr>
					<td><input class="form-check-input" type="checkbox"></td>
					<td>
					<%-- 	<c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/> 순서 카운트  --%>
					</td>
					<td>	
						<a href="/codeGroup/codeGroupForm?seq=<c:out value="${list.seq }"/>">
							<c:out value="${list.seq }"/>
						</a>
					</td>
					<td><c:out value="${list.name }"/></td>
					<td><c:out value="${list.delNy }"/></td>
					<td><c:out value="${list.useNy }"/></td>
					<td><c:out value="${list.oder }"/></td>
					<td><c:out value="${list.codeCount }"/></td>
					<td><c:out value="${list.creDate }"/></td>
					<td><c:out value="${list.modDate }"/></td>
				</tr>	
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	            </table>
	          </div>
				<!-- pagination s -->
			<%-- 	<%@include file="../xdmin/includeV1/pagination.jsp"%> --%>
				<!-- pagination e -->
				<!-- pagination s -->
				<%@include file="../xdmin/includeV1/pagination1.jsp"%>
				<!-- pagination e -->
		
	         <!--  <div class="Pagingdp">
					<div class="pagination">
						이전페이지 버튼
						<a href="#">Prev</a>
						각 번호 페이지 버튼
						<a href="#" class="active">1</a>
						<a href="#" class="active">2</a>
						<a href="#" class="active">3</a>
						<a href="#" class="active">4</a>
						<a href="#" class="active">5</a>
						다음페이지 버튼
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
						<a href="/codeGroup/codeGroupForm" class="btn btn-primary" type="submit"><i class="fa-solid fa-plus"></i></a>
					</div>
				</div>
	        </div>
	      </div>
	    </div>
		</section>
		<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">Actor's</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						정말 삭제하시겠습니까??
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">저장</button>
					</div>
				</div>
			</div>
		</div>
	</form>
  <script>
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
  
	var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	
	$("#btnSave").on("click", function(){
		alert
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
  
  	function reSet() {
  		location.href = ("/codeGroup/codeGroupList");
  	}
  
  	goList = function(keyValue) {
  		$("input:hidden[name=thisPage]").val(thisPage);
  		form.attr("actor", goUrlList).submit();
  	}
  
  
  
  
  
  
  
  
  
  </script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
</body>
</html>