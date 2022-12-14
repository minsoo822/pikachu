<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="hero">
		<nav class="top-fixed">
			<h2 class="logo"><a class="logolink" href="/home/Home">Actor'<span>s</span></a></h2>
			<ul>
				<!-- <li><a href="/Post/tourPostViewList">프로필 투어</a></li> -->
				<li><a href="/Post/oditionPostViewList">오디션 공고</a>
					<!-- <ul>
						<li><a href="#">전체</a></li>
						<li><a href="#">상업영화</a></li>
						<li><a href="#">독립(단편)영화</a></li>
						<li><a href="#">(웹)드라마</a></li>
						<li><a href="#">(바이럴)광고</a></li>
					</ul> -->
				</li>	
				<li><a href="/Post/ActorPostList">프로필 정보</a>
					<ul>
					<!-- <li><a href="/Post/ActorPostList">전체</a></li><br>
						<li><a href="#">남자</a></li><br>
						<li><a href="#">여자</a></li> -->
					</ul>
				</li>	
				<li><a href="#" class="">나의채팅방</a>
					<!-- <ul>
						<li><a href="#">자유게시판</a></li>
						<li><a href="#">Q&A게시판</a></li>
						<li><a href="#">홍보게시판</a></li>
						<li><a href="#">스터디게시판</a></li>
					</ul> -->
				</li>
				<li><a href="#" class="">나의오디션지원목록</a>
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
			<c:if test="${sessSeq eq null }">
				<button type="button" class="btn" id="" data-bs-toggle="modal" data-bs-target="#staticBackdrop">회원가입</button>
				<button type="button" class="btn" id="btnLogin">로그인</button>
			</c:if>
			<c:if test="${sessSeq ne null }">
				<button type="button" class="btn" id="btnMypage" value="${sessSeq }">마이페이지</button>
				<button type="button" class="btn" id="btnLogout">로그아웃</button>
			</c:if>	
				<%-- <br>sessSeq: <c:out value="${sessSeq }"/><br>
				sessName: <c:out value="${sessName }"/><br>
				sessId: <c:out value="${sessId }"/><br> --%>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div  class="modal-dialog">
			    <div style="background: #393939;" class="modal-content">
			      <div class="modal-header">
			        <h1 class="modal-title fs-5 homepageline" id="staticBackdropLabel"style="color: white;">Actor'<span style="color: #f9004d;">s</span></h1>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body" style="color: white; text-align: center; font-size: 20px;">
			        가입 분류를 선택해주세요!!~
			      </div>
			      <div class="modal-footer" style="display: flex; align-items: center; justify-content: space-between;">
			        <button type="button" class="indexbtn" id="goActorSignup" style="cursor: pointer;">배우로 가입하기</button>
			        <button type="button" class="indexbtn" id="goDerectorSignup" style="cursor: pointer;">디렉터로 가입하기</button>
			      </div>
			    </div>
			  </div>
			</div>
		</nav>
	</div>