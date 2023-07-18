<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/commons/top.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
<link rel="stylesheet" href="/resource/style.css">
</head>
<body>
	<div class="write-main">
		<div class="write-range">
			<form action="/modifyReview-Task" method="post" class="write-content">
			<input type="hidden" name="number" value="${post.postId }">
				<input class="write-blank" type="text" name="title" value="${post.title }">
					<input class="write-blank1" value="${post.postBody}"
						name="postBody">
					<div class="modify-button-position">
					<div>현재 등록된 이미지:
						<br> 
						
						<c:if test="${post.img != null}">
							<img style="width: 30px;padding-top:2px; text-align: center;" src="/upload/${post.img}" onerror="this.style.display='none'"> ${post.img }</div>
						</c:if>
					<div><button class="sign-button" type="submit">수정하기</button></div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>

<c:if test="${param.cause eq 'valid' }">
	<script>
		alert("잘못된 입력입니다 !!");
	</script>
</c:if>
