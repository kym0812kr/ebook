<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style type="text/css">
table {
	border-collapse: collapse;
	width: 100%
}

table td, th {
	border-bottom: 1px solid #ddd;
	padding: 15px;
	text-align: center;
}
</style>
</head>
<body>
	<c:if test="${loginUser == null}">
		<div style="text-align: center;">
			<button onclick="location='LoginForm.do'">로그인</button>
		</div>
	</c:if>
	<form action="Main.do">
		<table>
			<c:if test="${ownlist==null}">
				<tr>
					<td style="text-align: right" colspan="5">검색어<input
						type="text" name="keyword"> <select name="type" size="1">
							<option value="1">책번호</option>
							<option value="2">책제목</option>
							<option value="3">소유자</option>
					</select> <input type="submit" value="검색">
					</td>
				</tr>
			</c:if>
			<tr>
				<th>책번호</th>
				<th>책제목</th>
				<th>유료/무료 여부</th>
				<th>소유 여부</th>
				<th>소유자 ID</th>
			</tr>
			<c:if test="${ownlist!=null}">
				<c:forEach items="${ownlist}" var="o">
					<tr>
						<td>${o.book_no}</td>
						<td>${o.book_name}</td>
						<td>${o.book_price}</td>
						<td>${o.book_own}</td>
						<td>${o.book_owner}</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${ownlist==null}">
				<c:forEach items="${booklist}" var="b">
					<tr>
						<td>${b.book_no}</td>
						<td>${b.book_name}</td>
						<td>${b.book_price}</td>
						<td>${b.book_own}</td>
						<td>${b.book_owner}</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${ownlist==null}">
				<tr>
					<td colspan="6"><c:if test="${current != 1}">
							<a
								href="Main.do?page=1<c:if test='${keyword != null}'>&keyword=${keyword}&type=${type}</c:if>">[처음]</a>
							<a
								href="Main.do?page=${current-1}<c:if test='${keyword != null}'>&keyword=${keyword}&type=${type}</c:if>">[이전]</a>
						</c:if> <c:forEach begin="${start}" end="${end<last? end: last}" var="i">
							<c:choose>
								<c:when test="${i == current }">
					[${i}]
				</c:when>
								<c:otherwise>
									<a
										href="Main.do?page=${i}<c:if test='${keyword != null}'>&keyword=${keyword}&type=${type}</c:if>">[${i}]</a>
								</c:otherwise>
							</c:choose>
						</c:forEach> <c:if test="${current <last}">
							<a
								href="Main.do?page=${current+1}<c:if test='${keyword != null}'>&keyword=${keyword}&type=${type}</c:if>">[다음]</a>
							<a
								href="Main.do?page=${last}<c:if test='${keyword != null}'>&keyword=${keyword}&type=${type}</c:if>">[마지막]</a>
						</c:if></td>
				</tr>
			</c:if>
		</table>
	</form>
	<c:if test="${loginUser != null}">
		<div style="text-align: center;">
			<input type="button" value="로그아웃" onclick="location.href='logout.do'"
				style="text-align: center;">
			<c:if test="${ownlist == null}">
				<input type="button" value="내 소유의 책 목록보기"
					onclick="location.href='ownlist.do?loginUser=${loginUser}'">
			</c:if>
			<c:if test="${ownlist != null}">
				<input type="button" value="전체목록보기" onclick="history.back()">
			</c:if>
		</div>
	</c:if>
</body>
</html>