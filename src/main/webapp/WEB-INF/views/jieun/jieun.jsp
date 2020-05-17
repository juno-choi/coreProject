<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>SEO HTML-5 Template </title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- <link rel="manifest" href="site.webmanifest"> -->
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
	<!-- Place favicon.ico in the root directory -->
<title>글 목록</title>

 <!-- CSS here -->
   <link rel="stylesheet" href="assets/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
   <link rel="stylesheet" href="assets/css/slicknav.css">
   <link rel="stylesheet" href="assets/css/animate.min.css">
   <link rel="stylesheet" href="assets/css/magnific-popup.css">
   <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
   <link rel="stylesheet" href="assets/css/themify-icons.css">
   <link rel="stylesheet" href="assets/css/slick.css">
   <link rel="stylesheet" href="assets/css/nice-select.css">
   <link rel="stylesheet" href="assets/css/style.css">
   <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
	<!-- Start Align Area -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
					<h3 class="mb-30">글 목록</h3>
					<div class="progress-table-wrap">
						<div class="progress-table">
							<div class="table-head">
								<div class="serial">게시글 번호</div>
								<div class="country">제목</div>
								<div class="visit">내용</div>
								<div class="percentage">작성자</div>
							</div>
							<c:forEach items="${jieunBbs }" var="list">
								<div class="table-row">
									<div class="serial">${list.idx }</div>
									
									
									<div class="country">
									<a href="${pageContext.request.contextPath}/jieun/detail?idx=${list.idx }">
									${list.subject }
									</a>
									</div>
									
									
									<div class="visit">${list.content }</div>
									<div class="percentage">${list.writer }</div>
								</div>
							</c:forEach>
						</div>
					</div>
					
					<div class="button-group-area mt-40">
						<a href="${pageContext.request.contextPath}/jieun/write" class="genric-btn default radius">글 작성</a>
				<!--    <a href="#" class="genric-btn info radius">Info</a> -->
						<a href="#" class="genric-btn danger radius">삭제</a>
					</div>
				</div>
			</div>
		</div>
		
		
	
<div>
	<form>
		<div>
			
		</div>
	</form>
</div>	
</body>
</html>