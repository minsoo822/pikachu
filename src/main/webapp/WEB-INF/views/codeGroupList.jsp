<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
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
	<form action="">
	<div id="navbarFont">
	<div>
		<nav class="navbar" id="navbarType">
			<a class="navbar-brand" id="navbarFont"><h1>배우家</h1></a>
			<div class="d-flex" role="search">
				<input class="form-control me-2" type="search" placeholder="검색" aria-label="Search">
				<button class="btn btn-outline-primary" type="submit" style="margin-right: 25px;">Search</button> 
				<span><button type="button" class="btn btn-outline-primary">login</button></span> 
				<span><a class="btn btn-outline-primary" href="memberRegForm.html" role="button">Signin</a></span>
			</div>
		</nav>
	</div>
	<div class="container-fluid">
	<div style="padding: 20px 400px 20px 400px; margin-top: 20px; text-align: center;">
	<ul class="row nav justify-content-center nav-pills">
	  <li class="col nav-item dropdown">
	    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">프로필 투어</a>
	    <ul class="dropdown-menu">
	      <li><a class="dropdown-item" href="#">Action</a></li>
	      <li><a class="dropdown-item" href="#">Another action</a></li>
	      <li><a class="dropdown-item" href="#">Something else here</a></li>
	      <li><hr class="dropdown-divider"></li>
	      <li><a class="dropdown-item" href="#">Separated link</a></li>
	    </ul>
	  </li>
	  <li class="col nav-item dropdown">
	    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">오디션 공고</a>
	    <ul class="dropdown-menu">
	      <li><a class="dropdown-item" href="#">Action</a></li>
	      <li><a class="dropdown-item" href="#">Another action</a></li>
	      <li><a class="dropdown-item" href="#">Something else here</a></li>
	      <li><hr class="dropdown-divider"></li>
	      <li><a class="dropdown-item" href="#">Separated link</a></li>
	    </ul>
	  </li>
	  <li class="col nav-item dropdown">
	    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">배우프로필</a>
	    <ul class="dropdown-menu">
	      <li><a class="dropdown-item" href="#">Action</a></li>
	      <li><a class="dropdown-item" href="#">Another action</a></li>
	      <li><a class="dropdown-item" href="#">Something else here</a></li>
	      <li><hr class="dropdown-divider"></li>
	      <li><a class="dropdown-item" href="#">Separated link</a></li>
	    </ul>
		</li>
	  	<li class="col nav-item dropdown">
	    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">코드그룹리스트</a>
	    <ul class="dropdown-menu">
	      <li><a class="dropdown-item" href="#">코드관리</a></li>
	      <li><a class="dropdown-item" href="#">코드그룹관리</a></li>
	      <li><hr class="dropdown-divider"></li>
	    </ul>
	  </li>
	</ul>
	</div>
	<div style="margin: 50px 0px 50px 100px;">
		<h3>코드그룹 관리</h3>
	</div>
	<div style="margin: 0px 300px 10px 100px;">
		<table class="table table-borderless">
			<tr>
				<td>
					<select style="width: 200px;">
						<option>N</option>
						<option>Y</option>
					</select> 
					<select style="width: 200px;">
						<option>수정일</option>
						<option>-</option>
					</select>
					<input type="text" placeholder="시작일" style="width: 200px;">
					<input type="text" placeholder="종료일" style="width: 200px;">
				</td>
			</tr>
			<tr>
				<td>		
					
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button type="button" class="btn btn-outline-primary">검색</button>
						<button type="button" class="btn btn-outline-danger"><i class="fa-solid fa-arrow-rotate-right"></i></button>
					</div>
				</td>
			</tr>
		</table>
	</div>
		<table class="table table-striped table-hover" style="text-align: center;">
			<tr style="background-color: #EDE5FF;">
				<th ><input type="checkbox" onclick="selectAll(this)"></th>
				<th>#</th>
				<th>코드그룹 코드</th>
				<th>코드그룹 이름(한글)</th>
				<th>코드그룹 이름(영문)</th>
				<th>코드갯수</th>
				<th>등록일</th>
				<th>수정일</th>
			<tr>
				<td><input type="checkbox"></td>
				<td>1</td>
				<td>김민수</td>
				<td>남자</td>
				<td>31</td>
				<td>92. 06. 22</td>
				<td>175</td>
				<td>55</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>2</td>
				<td>김동욱</td>
				<td>남자</td>
				<td>36</td>
				<td>87. 06. 18</td>
				<td>172</td>
				<td>62</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>3</td>
				<td>김태리</td>
				<td>여자</td>
				<td>33</td>
				<td>87. 06. 18</td>
				<td>167</td>
				<td>53</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>4</td>
				<td>박정민</td>
				<td>남자</td>
				<td>34</td>
				<td>87. 06. 18</td>
				<td>172</td>
				<td>52</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>5</td>
				<td>안재홍</td>
				<td>남자</td>
				<td>38</td>
				<td>87. 06. 18</td>
				<td>179</td>
				<td>77</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>6</td>
				<td>박명훈</td>
				<td>남자</td>
				<td>43</td>
				<td>87. 06. 18</td>
				<td>178</td>
				<td>73</td>
			</tr>
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