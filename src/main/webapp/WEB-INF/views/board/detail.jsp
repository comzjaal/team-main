<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 날짜 형식 fmt tag 사용하기 위해 import함 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="nb" tagdir="/WEB-INF/tags/nb" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>상세페이지</title>
</head>
<body>
<div class="container">
<nb:navbar/>
<nb:scroll/>

	<h1>상품 페이지</h1>
	
	<div class="row">
		<div class="col-12">
			<form>
				<div class="form-group">
					<label for="mtitle">상품명</label>
					<input readonly="readonly" id="mtitle" class="form-control" name="mtitle" value="${market.mtitle }">
					
				<div class="form-group">
					<label for="mprice">가격</label>
					<input readonly="readonly" id="mprice" class="form-control" name="mprice" value="${market.mprice }">
				</div>	
				
					<div class="form-group">
					<label for="mwriter">작성자</label>
					<input readonly="readonly" id="mwriter" class="form-control" name="mwriter" value="${market.mwriter }">
				</div>	
				
				</div>
				<div class="form-group">
					<label for="mregdate">게시 날짜</label>
					<span class="form-control" id="mregdate" name="mregdate"><fmt:formatDate pattern="yyyy-MM-dd" value="${market.mregdate }"/></span>
				</div>
				
				<div class="form-group">
					<label for="mstate">상품상태</label>
					<input readonly="readonly" id="mstate" class="form-control" name="mstate" value="${market.mstate }">
				</div>	
				
				<div class="form-group">
					<label for="maddress">거래지역</label>
					<input readonly="readonly" id="maddress" class="form-control" name="maddress" value="${market.maddress }">
				</div>	
				
				<button type="button" class="btn btncl" id="info-remove-btn1"><i class="far fa-heart"></i></button>
				<!-- <i class="fas fa-heart"></i> 검은하트-->
				<input class="btn btn-primary" type="button" value="쪽지 보내기">
				
				<hr>
				<h3>상품 정보</h3>
				<hr>
				
				
				<div class="form-group">
					<label for="mdetail">상세 설명</label>
					<input readonly="readonly" id="mdetail" class="form-control" name="mdetail" value="${market.mdetail }">
				</div>
				
<%-- 				<c:if test="${not empty board.fileName }">
					<div>
						<img class="img-fluid" 
						src="${imgRoot}${board.bno }/${board.fileName}">
					</div>
				</c:if> --%>
								
				
<%-- 				<c:url value="/board/modify" var="modifyUrl">
					<c:param name="bno" value="${board.bno }" />
					<c:param name="pageNum" value="${cri.pageNum }" />
					<c:param name="amount" value="${cri.amount }" />
					<c:param name="type" value="${cri.type }"/>
					<c:param name="keyword" value="${cri.keyword }" />
				</c:url>
				
				<c:if test="${pinfo.member.userid eq board.writer }" >
					<a class="btn btn-secondary" href="${modifyUrl }">수정/삭제</a>
				</c:if> --%>
				
				
			</form>
		</div>
	</div>
</div>
	
</div>
</body>
</html>