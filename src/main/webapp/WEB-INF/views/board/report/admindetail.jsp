<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/style.css">

<style>
	.bttn {
	   text-align: center;
	}
	
	.w-btn {
	   position: relative;
	   border: none;
	   display: inline-block;
	   padding: 15px 30px;
	   border-radius: 15px;
	   font-family: "paybooc-Light", sans-serif;
	
	   text-decoration: none;
	
	   transition: 0.25s;
	}
	
	.w-btn-attendance {
	   background-color: #34495e;
	   color: white;
	   display: inline-block;
	}
	.submitFile{
		width: 300px;
		overflow: hidden;
		text-overflow: ellipsis;
	}	
</style>

<script>
	function confirmDelete(){
		var studentsBoard = $(this).next().val();
		if(studentsBoard == null){
			var confirmflag = confirm("삭제 하시겠습니까?");
			if(confirmflag){
				form.action = "<c:url value='/board/delete'/>";
			}else{
				console.log("취소. 변화 없음");
			}
		} else{
			alert("등록된 과제글이 존재합니다.");
		}
	}

</script>

<!-- content -->
<div class="d-flex flex-column justify-content-center">
	<div id="reportTitle" class="d-flex">
		<div class="col-7">Title: ${board.boardTitle}</div>
		<div class="col-2">Writer: ${member.memberName}</div>
		<div class="col-3">Date: ${board.boardDate}</div>
	</div>
	<hr/>
	<div id="reportContent">
		${board.boardContent}
	</div>
	<form name="form">
	<c:if test="${board.memberId eq member.memberId}">
		<div class="d-flex justify-content-end">
			<input type="hidden" name="boardCategory" value="${board.boardCategory}">
			<input type="hidden" name="boardId" value="${board.boardId}">
			<input type="hidden" name="memberId" value="${board.memberId}">
			<input type="hidden" name="pageNo" value="${pageNo}">
			<button name="update" class="btn btn-sm btn-primary mx-2" formaction='<c:url value="/board/update/${board.boardId}"/>'>수정</button>
			<button name="delete" class="btn btn-sm btn-danger" onclick="confirmDelete()">삭제</button>
			<input type="hidden" name="studentsBoard" value="${studentsBoard}">
		</div>
	</c:if>
	</form>
	<hr/>
	<div id="reportSubmitInfo" class="d-flex flex-column">
		<!-- For Admin -->
		<table class="table table-bordered">
			<tbody>
				<tr>
					<td class="col-6">제출 기간</td>
					<td class="col-6">${board.reportDeadline} ${board.reportDeadlineTime}</td>
				</tr>
				<tr>
					<td class="col-6">참고 파일</td>
					<td id="attachment" class="d-flex flex-column">
						<c:if test="${!empty board.fileList}">
						<c:forEach var="file" items="${board.fileList}">
						<a href="<c:url value='/boardfile/${file.boardFileId}'/>">${file.boardFileName}(<fmt:formatNumber>${file.boardFileSize}</fmt:formatNumber>byte)</a>
						</c:forEach>
						</c:if>
					</td>
				</tr>
			</tbody>
		</table>

		<table class="table table-bordered mt-3">
			<thead>
				<tr>
					<th>학생이름</th>
					<th>과제</th>
					<th>제출 날짜</th>
					<th>부여 점수</th>
					<th>입력</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty studentsBoard}">
				<tr>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
				</tr>
				</c:if>
				<c:if test="${!empty studentsBoard}">
				<c:forEach var="student" items="${studentsBoard}" varStatus="i">
				<c:if test="">
				</c:if>
				<c:if test="${student.submissionScore == null}">
				<tr>
					<td>${student.memberName}</td>
					<td class="submitFile">
					<c:if test="${!empty student.fileList}">
					<c:forEach var="file" items="${student.fileList}">
						<a href="<c:url value='/boardfile/${file.boardFileId}'/>">${file.boardFileName}(<fmt:formatNumber>${file.boardFileSize}</fmt:formatNumber>byte)</a>
					</c:forEach>
					</c:if>
					</td>
					<td>${student.submissionSubmitDate}</td>
					<td>
					<form id="submissionScore${i.count}" action="<c:url value='/board/update/${student.boardId}'/>" method="post">
					<input type="number" name="submissionScore">
					<input type="hidden" name="pageNo" value="${pageNo}">
					<input type="hidden" name="reportNoticeId" value="${board.boardId}">
					</form>
					</td>
					<td><button form="submissionScore${i.count}" type="submit" class="btn btn-sm btn-warning mt-2">입력</button></td>
				</tr>
				</c:if>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
		<!-- <br><br><h4>Feedback</h4><br>
		<textarea name="reportFeedback" placeholder="피드백 작성란" class="col-12" rows="3" cols="150"></textarea>
		<div class="d-flex justify-content-end">
			<button type="submit" class="btn btn-sm btn-warning mt-2">과제 평가 완료하기</button>
		</div> -->
		<hr>
		<table class="table table-bordered mt-3">
			<thead>
				<tr>
					<th>학생이름</th>
					<th>과제</th>
					<th>제출 날짜  ${board.reportDeadline}</th>
					<th>부여 점수</th>
					<th>점수 수정하기</th>
					<th>입력</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty studentsBoard}">
				<tr>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
					<td>-</td>
				</tr>
				</c:if>
				<c:if test="${!empty studentsBoard}">
				<c:forEach var="student" items="${studentsBoard}" varStatus="i">
				<tr>
					<td>${student.memberName}</td>
					<td class="submitFile">
					<c:if test="${!empty student.fileList}">
					<c:forEach var="file" items="${student.fileList}">
						<a href="<c:url value='/boardfile/${file.boardFileId}'/>">${file.boardFileName}(<fmt:formatNumber>${file.boardFileSize}</fmt:formatNumber>byte)</a>
					</c:forEach>
					</c:if>
					</td>
					<td>${student.submissionSubmitDate}</td>
					<td>${student.submissionScore}</td>
					<td>
					<form id="submissionScore${i.count}" action="<c:url value='/board/update/${student.boardId}'/>" method="post">
					<input type="number" name="submissionScore">
					<input type="hidden" name="pageNo" value="${pageNo}">
					<input type="hidden" name="reportNoticeId" value="${board.boardId}">
					</form>
					</td>
					<td><button form="submissionScore${i.count}" type="submit" class="btn btn-sm btn-warning mt-2">입력</button></td>
				</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
		<!-- <h5>Feedback</h5>
		<p id="reportBoardContent" class="border">
		~~학생의 과제는 ~~고 ~~해서 ~~점수를 주었습니다<br/>
		***교수
		</p> -->
		<!-- For Admin -->
		<div class="bttn">
	   		<button class="w-btn w-btn-attendance" type="button" onclick="location.href='<c:url value="/board/cat/2/${pageNo}"/>'" style="color: white;">목록</button>
		</div>		
	</div>
</div>


<jsp:include page="/WEB-INF/views/include/footer.jsp"/>