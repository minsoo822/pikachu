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
	
</head>
<body>
	<form action="http://localhost:8080/codeGroup/codeGroupListsrc">
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
	          <li><a class="link_name" href="#">코드그룹 리스트 관리</a></li>
	          <li><a href="#">코드 관리</a></li>
	          <li><a href="#">코드그룹 관리</a></li>
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
	          <h5>회원관리</h5>
	        </div>
	        <div class="two">
	          <div class="three">
	            <select>
					<option>삭제여부</option>
					<option>N</option>
					<option>Y</option>
	            </select>
	            <select>
	              <option>날짜</option>
	              <option>수정일</option>
	              <option>등록일</option>
	              <option>생일</option>
	            </select>
	            <input type="text" id="StDatePicker" placeholder="시작일">
	            <input type="text" id="EnDatePicker" placeholder="종료일">
	            <select id="shOption" name="shOption">
	              <option value="0" <c:if test="${vo.shOption eq 0 }">selected</c:if>>검색구분</option>
	              <option value="1" <c:if test="${vo.shOption eq 1 }">selected</c:if>>코드그룹 코드</option>
	              <option value="2" <c:if test="${vo.shOption eq 2 }">selected</c:if>>코드그룹 이름</option>
	              <option value="3" <c:if test="${vo.shOption eq 3 }">selected</c:if>>코드그룹 삭제여부</option>
	              <option value="4" <c:if test="${vo.shOption eq 4 }">selected</c:if>>코드그룹 사용여부</option>
	            </select>
	            <input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>"  placeholder="검색어">
	            <div class="searchBtn">
	              <button  type="submit">검색</button>
	              <button  type="submit">리셋</button>
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
	                <th><input type="checkbox"></th>
	                <th>멤버 코드</th>
	                <th>user_type7</th>
	                <th>id</th>
	                <th>password</th>
	                <th>이름</th>
	                <th>dob</th>
	                <th>성별</th>
	                <th>이메일</th>
	                <th>휴대폰</th>
	                <th>D_타입</th>
	                <th>A_타입</th>
	                <th>키</th>
	                <th>몸무게</th>
	                <th>쌍꺼풀유무</th>
	                <th>목소리톤</th>
	                <th>나이</th>
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
					<td><input type="checkbox"></td>
					<td><c:out value="${list.seq }"/></td>
					<td><c:out value="${list.user_type }"/></td>
					<td><c:out value="${list.id }"/></td>
					<td><c:out value="${list.password }"/></td>
					<td><c:out value="${list.name }"/></td>
					<td><c:out value="${list.dob }"/></td>
					<td><c:out value="${list.gender }"/></td>
					<td><c:out value="${list.email }"/></td>
					<td><c:out value="${list.phone_number }"/></td>
					<td><c:out value="${list.director_type }"/></td>
					<td><c:out value="${list.actor_type }"/></td>
					<td><c:out value="${list.actor_height }"/></td>
					<td><c:out value="${list.actor_weight }"/></td>
					<td><c:out value="${list.eyelid }"/></td>
					<td><c:out value="${list.actor_voice }"/></td>
					<td><c:out value="${list.age }"/></td>
				</tr>	
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	            </table>
	          </div>
	          <div class="pagination">
	            <a href="#">Prev</a>
	            <a href="#" class="active">1</a>
	            <a href="#" class="active">2</a>
	            <a href="#" class="active">3</a>
	            <a href="#" class="active">4</a>
	            <a href="#" class="active">5</a>
	            <a href="#">Next</a>
	          </div>
	        </div>
	      </div>
	    </div>
	  </section>
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
		  
	  });
  });
  
  </script>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
</body>
</html>