<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LIST</title>
</head>
<body>
	<table>
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
		</tr>
		<c:forEach items="${testBbs }" var="list">
			<tr>
				<td>${list.subject }</td>
				<td>${list.content }</td>
				<td>${list.writer }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>