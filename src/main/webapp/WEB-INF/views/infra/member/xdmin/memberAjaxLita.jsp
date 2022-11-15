<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.actorfw.infra.modules.code.CodeServiceImpl"/>


<html lang="KO">
<head>
	<title>Home</title>
	<!-- Boxiocns CDN Link -->
	<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
    <!-- jquery ui CSS -->    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />		<!-- jQuery UI CSS파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>							<!-- jQuery 기본 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/adminstyle.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
</head>
<body>
	
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
	           <!--  <div class="line">
	              <h6>코드그룹 관리</h6>
	            </div> -->
	            <table class="table table-striped">
	              <tr class="tableTr">
	                <th><input class="form-check-input" type="checkbox" name="allCheck"></th>
	                <th>#</th>
	                <th>회원 코드</th>
	                <th>회원 타입</th>
	                <th>아이디</th>
	                <th>이름</th>
	                <th>생일</th>
	                <th>성별</th>
	                <th>이메일</th>
	                <th>도메인</th>
	                <th>휴대폰번호</th>
	                <th>감독타입</th>
	                <th>키</th>
	                <th>몸무게</th>
	                <th>쌍꺼풀 유무</th>
	                <th>목소리톤</th>
	       			<th>나이</th>
	       			<th>회사유무</th>
	              </tr>
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td style="text-align: center;" colspan="18"> no Data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="list" varStatus="status">
				<tr>
					<td><input class="form-check-input" type="checkbox" name="rowCheck" value="${list.seq }"></td>
					<td>
						<c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/>
					</td>
					<td>	
						<a href="javascript:goForm(${list.seq })" class="text-decoration-none">
							<c:out value="${list.seq }"/>
						</a>
					</td>
					<td>
						<c:forEach items="${listCodeUser_type}" var="listUser_type" varStatus="statusVoice">
							<c:if test="${list.user_type eq listUser_type.seq}"><c:out value="${listUser_type.name }"/></c:if>
						</c:forEach>
					</td>
					<td><c:out value="${list.id }"/></td>
					<td><c:out value="${list.name }"/></td>
					<td><c:out value="${list.dob }"/></td>
					<td>
						<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusVoice">
							<c:if test="${list.gender eq listGender.seq}"><c:out value="${listGender.name }"/></c:if>
						</c:forEach>
					</td>
					<td><c:out value="${list.email }"/></td>
					<td>
						<c:forEach items="${listCodeDomain}" var="listDomain" varStatus="statusVoice">
							<c:if test="${list.email_domain eq listDomain.seq}"><c:out value="${listDomain.name }"/></c:if>
						</c:forEach>
					</td>
					<td><c:out value="${list.phone_number }"/></td>
					<td>
						<c:forEach items="${listCodeDirector_type}" var="listDirector_type" varStatus="statusVoice">
							<c:if test="${list.director_type eq listDirector_type.seq}"><c:out value="${listDirector_type.name }"/></c:if>
						</c:forEach>
					</td>
					<td><c:out value="${list.actor_height }"/></td>
					<td><c:out value="${list.actor_weight }"/></td>
					<td>
						<c:forEach items="${listCodeEyelid}" var="listEyelid" varStatus="statusVoice">
							<c:if test="${list.actor_eyelid eq listEyelid.seq}"><c:out value="${listEyelid.name }"/></c:if>
						</c:forEach>
					</td>
					<td>
						<c:forEach items="${listCodeVoice}" var="listVoice" varStatus="statusVoice">
							<c:if test="${list.actor_voice eq listVoice.seq}"><c:out value="${listVoice.name }"/></c:if>
						</c:forEach>
					</td>
					<td><c:out value="${list.age }"/></td>
					<td><c:out value="${list.company_useNy }"/></td>
				</tr>	
			</c:forEach>
			
		</c:otherwise>
	</c:choose>	
			</table>
				</div>
				<!-- pagination s -->
				<%@include file="../xdmin/includeMember/pagination.jsp"%>
				<!-- pagination e -->
				<div class="groupbutton">
					<div class="d-grid gap-2 d-md-block btn1" style="float: left;">
						<button class="btn btn-danger" type="submit"><i class="fa-solid fa-minus"></i></button>
						<a class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="button" onclick="btnDelete()"><i class="fa-solid fa-trash-can"></i></a>
					</div>
					<div class="d-grid gap-2 d-md-flex btn2">
						<button class="btn btn-success" type="button" id="btnExcel"><i class="fa-solid fa-file-excel"></i></button>
						<button class="btn btn-primary" type="button" id="btnForm"><i class="fa-solid fa-plus"></i></button>
					</div>
				</div>
	        </div>
	     
	</form>
	<script>
  
	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlForm = "/member/memberForm";
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
	var goUrlUele = "/member/memberUele";				/* #-> */
	var goUrlDele = "/member/memberDele";				/* #-> */
	var excelUri = "/member/excelDownload";				/* #-> */
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("#mainForm");
	var formVo = $("form[name=formVo]");
	
	$("#searchReset").on("click", function() {
		location.href= "/member/memberList";
	});
	$("#btnExcel").click(function() {
		form.attr("action", excelUri).submit();
	});
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
  
	$('#btnForm').on("click", function() {
		goForm(0);                
	});
	
	goForm = function(key) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */ 
    	seq.attr("value",key);
		form.attr("action", goUrlForm).submit();
	}
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action",goUrlList).submit();
	}
//	체크박스
	$(function() {
		var chkObj = document.getElementsByName("rowCheck");
		var rowCnt = chkObj.length;
		
		$("input[name='allCheck']").click(function(){
			var chk_listArr = $("input[name='rowCheck']");
			for (var i=0; i<chk_listArr.length; i++){
				chk_listArr[i].check = this.checked;
			} 
		});
		$("input[name='rowCheck']").click(function(){
			if($("input[name='rowCheck']:checked").length == rowCnt){
				$("input[name='allCheck']")[0].checked == true;
			} else {
				$("input[name='allCheck']")[0].checked == false;
			}
		});
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