<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

				<div class="Pagingdp">
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
				</div>