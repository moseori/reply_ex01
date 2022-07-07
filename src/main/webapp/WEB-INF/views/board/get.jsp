<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jspf" %>
<div class="container">
	<div class="title">
		<h2>제목 : ${board.title}</h2>
	</div>
	<div class="content">
		내용 :
		<p>${board.content}</p>
	</div>
	<div>작성자 : ${board.writer}</div>
	<a href="list" class="list">목록으로</a>
	<div class="reply_area">
	<c:if test="${not empty board.replyList}">
		<c:forEach items="${board.replyList}" var="reply">
			<div>
				<p>작성자 : ${reply.replyer}</p>
				<p>내용 : ${reply.reply}</p>
				<p>등록일 : ${reply.regDate}</p>
			</div>
		</c:forEach>
		</c:if>
		<c:if test="${empty board.replyList}"><p>댓글없음</p></c:if>
	</div>
</div>
<style>
	.container div {outline: 1px solid blue; padding : 10px 0;}
	.list { padding: 5px 0; display: inline-block;}
</style>
<%@ include file="../layout/footer.jspf" %>