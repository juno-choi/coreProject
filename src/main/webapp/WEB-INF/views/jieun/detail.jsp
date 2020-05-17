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
<title>디테일</title>
<style>
.whole-wrap {
    margin-top: 8%;
}
</style>
</head>
<body>
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
	<div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">상세보기</h2>
                    </div>
                    
                    <div class="col-lg-8">
                        <form action="<%=request.getContextPath()%>/jieun/write.do" id="write" method="post">
                            <div class="row">
                            	<div class="col-12">
                                    <div class="form-group">
                                    
                                        ${jieunBbs.subject}
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea id="content" name="content"  cols="30" rows="9" >
                                        
                                        ${jieunBbs.content}
                                        </textarea>
                                    </div>
                                </div>
                              <div class="col-sm-6">
                                    <div class="form-group">
                                        
                                        ${jieunBbs.writer}
                                    </div>
                                </div>
                                  <!--
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
                                    </div>
                                </div>	-->
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">삭제</button>
                            </div>
                        </form>
                    </div>
                </div>
                </div>
                </div>
                </div>
                
</body>
</html>