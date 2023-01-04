<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/include/header.jsp"/>
<link rel="stylesheet" type="text/css" href="css/style.css">
  	<!-- content -->
  	<form action="#">
	<div class="d-flex mb-3">
		<div class="col-7">
			<h1>강의자료실</h1>
		</div>
		<div class="d-flex align-items-end justify-content-end col-5">
			<button type="submit" name="writeReport" value="writeReport" class="btn btn-sm btn-warning">자료 등록</button>
		</div>
	</div>
  	</form>
	
	<div class="d-flex flex-column justify-content-center">
		<table class="table">
			<thead>
				<tr>
					<th class="col-6">제목</th>
					<th class="col-3">날짜</th>
					<th class="col-3">글쓴이</th>
				</tr>
			</thead>
		</table>
		<table class="table table-bordered table-hover">
			<tbody>
				<tr>
					<td class="col-6">1주차 강의</td>
					<td class="col-3">2023-01-10</td>
					<td class="col-3">교수님</td>
				</tr>
			</tbody>
		</table>
	</div>
	
	<div class="pager d-flex justify-content-center my-3">
		<div class="flex-fulfill"></div>
		<div class="pagingButtonSet d-flex justify-content-center col-5">
			<!-- <c:if test="${pager.pageNo > 1}"> -->
				<a href="Admin?pageNo=1" type="button" class="btn btn-muted shadow">처음으로</a>
			<!-- </c:if> -->
			
			<!-- <c:if test = "${pager.groupNo > 1}"> -->
				<a href="Admin?pageNo=${pager.startPageNo-1}" type="button" class="btn btn-muted shadow">앞으로</a>
			<!-- </c:if> -->
			
			<!-- <c:forEach var="i" begin="${pager.startPageNo}" end ="${pager.endPageNo}"> -->
				<!-- <c:if test="${pager.pageNo != i}"> -->
					<a href="Admin?pageNo=${i}" type="button" class="btn btn-dark shadow">${i}</a>
				<!-- </c:if> -->
				<!-- <c:if test="${pager.pageNo == i}"> -->
					<!-- <a href="Admin?pageNo=${i}" type="button" class="btn btn-white shadow">${i}</a> -->
				<!-- </c:if> -->
			<!-- </c:forEach> -->
			
			<!-- <c:if test = "${pager.groupNo < pager.totalGroupNo }"> -->
				<a href="Admin?pageNo=${pager.endPageNo+1}" type="button" class="btn btn-muted shadow">뒤로</a>
			<!-- </c:if> -->
			<a href="Admin?pageNo=${pager.totalPageNo}"type="button" class="btn btn-muted shadow">마지막으로</a>
		</div>
		<div class="flex-fulfill"></div>
	</div>
	
<jsp:include page="/WEB-INF/views/include/footer.jsp"/>
	