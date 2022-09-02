<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<html lang="KO">
<head>
	<title>Home</title>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
	<!-- Bootstrap CSS -->
	<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap extra CSS -->    
    <link href="/resources/xdmin/css/bootstrap/sidebars.css" rel="stylesheet">
    <!-- jquery ui CSS -->    
    <link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">   
	<!-- user css -->
	<link rel="stylesheet" href="/resources/css/adminstyle.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<style type="text/css">
		@font-face {
		    font-family: 'MICEGothic Bold';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2') format('woff2');
		    font-weight: 700;
		    font-style: normal;
		}
		
		#navbarType {
			padding:  20px 400px 20px 400px;
			background-color: #EDE5FF;
		}
		
		#navbarFont {
			font-family: 'MICEGothic Bold';
		}
		
		table, th, td {
			border: 1px solid black;
			border-collapse: collapse;
		}
	</style>
</head>
<body>
	<form action="http://localhost:8080/codeGroup/codeGroupListsrc">
	<div id="navbarFont">
	<div>
	<div style="margin: 50px 0px 50px 100px;">
		<h3>코드그룹리스트 관리</h3>
	</div>
	<div style="margin: 0px 300px 10px 100px;">
		<table class="table table-borderless">
			
			<tr>
				<td>
					<select style="width: 200px;" id="shOption" name="shOption">
						<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
						<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹이름</option>
						<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드사용 여부</option>
					</select> 
					<input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="내용" style="width: 200px;">
					<button type="submit" class="btn btn-outline-primary">검색</button>
				</td>
			</tr>
		</table>
	</div>
		<table class="table table-striped table-hover" style="text-align: center;">
			<tr style="background-color: #EDE5FF;">
				<th ><input type="checkbox" onclick="selectAll(this)"></th>
				<th>#</th>
				<th>코드시퀀스</th>
				<th>코드그룹 이름</th>
				<th>코드이름</th>
				<th>코드 시퀀스</th>
				<th>순서</th>
				<th>코드갯수</th>
				<th>사용 N:0 Y:1</th>
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
					<td>
						<c:out value="${vo.totalRows + ((vo.thispage - 1) * vo.rowNumToShow + status.index) }"></c:out>
					</td>
					<td><c:out value="${list.seq }"/></td>
					<td><c:out value="${list.codename }"/></td>
					<td><c:out value="${list.name }"/></td>
					<td><c:out value="${list.codeseq }"/></td>
					<td><c:out value="${list.oder }"/></td>
					<td><c:out value="${list.codeCount }"/></td>
					<td><c:out value="${list.useNy }"/></td>
				</tr>	
			</c:forEach>
		</c:otherwise>
	</c:choose>	
	
		</table>
		<div>
			<nav aria-label="Page navigation example">
				<ul class="pagination  justify-content-center">
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item">
						<a class="page-link" href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</ul>
			</nav>
		</div>
		<div>
			<div style="padding: 0px 12px 20px 12px;">
				<div class="d-grid gap-2 d-md-block" style="float: left;">
					<button class="btn btn-danger" type="button"><i class="fa-solid fa-minus"></i></button>
					<button class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="button" ><i class="fa-solid fa-trash-can"></i></button>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">배우家</h5>
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
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<button class="btn btn-success me-md-2" type="button"><i class="fa-solid fa-file-excel"></i></button>
					<a href="memberRegForm.html"><button class="btn btn-primary" type="button"><i class="fa-solid fa-plus"></i></button></a>
				</div>
			</div>
		</div>
		</div>
	</div>
	</form>
	<script type="text/javascript">
		function selectAll(selectAll)  {
		  const checkboxes 
		     = document.querySelectorAll('input[type="checkbox"]');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}
	</script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/2b8f3e92c4.js" crossorigin="anonymous"></script>
</body>
</html>