<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>LIST</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		
	<h3>글작성하기</h3>
			<form action="<%=request.getContextPath()%>/ch/write.do" id="write" method="post">		
			<div class ="form-group">	
			<label for ="bname">이름</label>
			<input type ="text" id ="bname" name ="bname"  class="form-control"/>
			</div>
			
			<div class ="form-group">	
				<label for ="btitle">제목</label>
				<input type ="text" id ="btitle" name ="btitle" placeholder="제목입력" class="form-control" />
			</div>
			
			<div class ="form-group">
				<label for ="bcontent">내용</label>
				<textarea  id ="bcontent" name ="bcontent" cols="60" rows="10" placeholder="내용입력" class="form-control" ></textarea>
			</div>		
			
			<div class ="form-group text-right" >	
				<input type="submit" value="작성" class="btn btn-info" title = "작성버튼"/>				
				<input type="reset" value="취소" class="btn btn-danger" title = "취소버튼"/>	
				<a href="<%=request.getContextPath()%>/ch/list" class="btn btn-danger" title="목록으로 돌아가기">목록보기</a>			
			</div>
		</form>
	</div>
</body>
</html>