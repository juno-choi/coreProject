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
	<!-- Slider Area Start-->
	<div class="slider-area ">
		<div class="slider-active">
			<div class="single-slider slider-height d-flex align-items-center" data-background="assets/img/hero/h1_hero.png">
				<div class="container">
					<div class="row d-flex align-items-center">
						<div class="col-lg-12 col-md-12 ">
							<div class="hero__caption">
								<table class="table">
									<tr>
										<th>제목2222</th>
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
								<a href="/junho/chat" style="color: black;">채팅방가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>