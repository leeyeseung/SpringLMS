<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
tr, th, td {
	text-align: center;
}

</style>

<div class="container">
  <h3 style="text-align:center;">오티아이</h3>
  <br>
  <table class="table">
    <thead>
      <tr>
        <th>No. </th>
        <th> 이름</th>
        <th>이메일</th>
        <th>전화번호</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>신문이응</td>
        <td>moon0129@gmail.com</td>
        <td>010-1234-7896</td>
      </tr>
    </tbody>
  </table>
</div>

<%-- <div class="pager d-flex justify-content-center my-3">
   <div class="flex-fulfill"></div>
   <div class="pagingButtonSet d-flex justify-content-center col-5">
      <c:if test="${pager.pageNo > 1}"> 
         <a href="Admin?pageNo=1" type="button" class="btn btn-muted shadow">처음으로</a>
      </c:if>  
      
      <c:if test = "${pager.groupNo > 1}">
         <a href="Admin?pageNo=${pager.startPageNo-1}" type="button" class="btn btn-muted shadow">앞으로</a>
      </c:if> 
      
      <c:forEach var="i" begin="${pager.startPageNo}" end ="${pager.endPageNo}">
         <c:if test="${pager.pageNo != i}">
            <a href="Admin?pageNo=${i}" type="button" class="btn btn-dark shadow">${i}</a>
         </c:if>
         <c:if test="${pager.pageNo == i}">
            <a href="Admin?pageNo=${i}" type="button" class="btn btn-white shadow">${i}</a>
         </c:if>
      </c:forEach>
      
      <c:if test = "${pager.groupNo < pager.totalGroupNo }">
         <a href="Admin?pageNo=${pager.endPageNo+1}" type="button" class="btn btn-muted shadow">뒤로</a>
      </c:if>
      <a href="Admin?pageNo=${pager.totalPageNo}"type="button" class="btn btn-muted shadow">마지막으로</a>
   </div>
   <div class="flex-fulfill"></div>
</div> --%>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>