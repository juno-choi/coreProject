<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html class="no-js" lang="zxx">
<head>
<title>Access Denied</title>
</head>
<script type="text/javascript">
function historyBack(){
	window.history.go(-2);
}
</script>
<div class="services-area">
	<div class="container">
		<!-- Section-tittle -->
		<div class="row">
			<div class="col-12 text-center">
				<h2 class="contact-title">Access Denied !!!</h2>
			</div>
			<div class="col-lg-12 text-center">
				<span>권한이 없어 접근에 제한됩니다.<br>관리자에게 문의하세요.</span>
			</div>
			<div class="col-lg-12 text-center">
				<a href="javascript:historyBack();" class="button button-contactForm boxed-btn">돌아가기</a>
			</div>
		</div>
	</div>
</div>
</html>

