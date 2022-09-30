<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

	<div  class="row mb-1">
		<div class="col">
			<div class="row">
				<div class="col" style="color: white;">아이디</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="text" class="form-control" name="id" placeholder="ID" value="${dto.id }">
				</div>
			</div>
		</div>
	</div>
	<div  class="row mb-1">
		<div class="col">
			<div class="row">
				<div class="col" style="color: white;">비밀번호</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="password" class="form-control" name="password" placeholder="PASSWORD" value="${dto.password }">
				</div>
			</div>
		</div>
	</div>
	<div hidden class="row mb-1">
		<div class="col">
			<div class="row">
				<div class="col" style="color: white;">비밀번호 재확인</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="text" class="form-control" name="password" placeholder="PASSWORD">
				</div>
			</div>
		</div>
	</div>
	<div  class="row mb-1">
		<div class="col">
			<div class="row">
				<div class="col" style="color: white;">이름</div>
			</div>
			<div class="row">
				<div class="col">
					<input type="text" class="form-control" name="name">
				</div>
			</div>
		</div>
	</div>
	<div  class="row mb-1">
		<div class="col">
			<div class="row gx-1">
				<div class="col" style="color: white;">생년월일</div>
				<div class="col" style="color: white;">성별</div>
			</div>
			<div class="row gx-1">
				<div class="col">
					<input type="text" class="form-control" name="dob" placeholder="ex)19920622">
				</div>
				<div class="col">
					<select class="form-select">
						<option>선택</option>
						<option>남자</option>
						<option>여자</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div  class="row mb-1">
		<div class="col">
			<div class="row">
				<div class="col" style="color: white;">메일</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="col input-group">
						<input type="text" class="form-control" name="email">
						<span class="input-group-text">@</span>
						<select class="form-select"  name="email_domain">
							<option value="">선택</option>
							<option value="4">naver.com</option>
							<option value="5">gamil.com</option>
							<option value="6">daum.net</option>
							<option value="7">nate.com</option>
							<option value="8">dreamwiz.com</option>
							<option value="9">freechal.com</option>
							<option value="10">직접입력</option>
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div  class="row">
		<div class="col">
			<div class="row">
				<div class="col" style="color: white;">휴대전화</div>
			</div>
			<div class="row mb-1 gx-1">
				<div class="col-4">
					<select class="form-select" name="telecom">
						<option hidden value="">통신사</option>
						<option value="1">SKT</option>
						<option value="2">KT</option>
						<option value="3">LGU+</option>
					</select>
				</div>
				<div class="col">
					<input type="text" class="form-control" name="phone_number">
				</div>
			</div>	
		</div>
	</div>