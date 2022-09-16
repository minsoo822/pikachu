<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="container-fluid px-0 mt-2">
    <div class="row">
        <div class="col">
            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
            <ul class="pagination justify-content-center mb-0">
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
<c:if test="${vo.startPage gt vo.pageNumToShow}">
                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
</c:if>
<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
	<c:choose>
		<c:when test="${i.index eq vo.thisPage}">
                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:when>
		<c:otherwise>             
                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
		</c:otherwise>
	</c:choose>
</c:forEach>                
<c:if test="${vo.endPage ne vo.totalPages}">                
                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>
 <%-- 				<div class="Pagingdp">
					<div class="pagination">
						<!-- 이전페이지 버튼 -->
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<a href="javascript:goList(${vo.startPage - 1})">Prev</a>
					</c:if>	
						<!-- 각 번호 페이지 버튼 -->
				<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
					<c:choose>
						<c:when test="${i.index eq vo.thisPage}">	
							<a href="javascript:goList(${i.index})" class="active">${i.index}</a>
						</c:when>
						<c:otherwise> 	
							<a href="javascript:goList(${i.index})" class="active">${i.index}</a>
						</c:otherwise>	
					</c:choose>
				</c:forEach>
							<!-- 다음페이지 버튼 -->
						<c:if test="${vo.endPage ne vo.totalPages}">
							<a href="javascript:goList(${vo.endPage + 1})">Next</a>
						</c:if>	
					</div>
				</div>   --%>