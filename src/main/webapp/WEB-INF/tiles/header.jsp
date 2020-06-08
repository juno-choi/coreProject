<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- security -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slicknav.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/themify-icons.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/nice-select.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
   </head>
   <!-- sweetalert2 -->
   <script src="/sweetalert2/sweetalert2.js"></script>
   
         <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="${pageContext.request.contextPath}/assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->

<header>
        <!-- Header Start -->
       <div class="header-area header-transparrent ">
            <div class="main-header header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/assets/img/logo/logo.png" alt=""></a><!-- main logo  -->
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8">
                            <!-- Main-menu -->
                            <div class="main-menu f-right d-none d-lg-block">
                                <nav> 
                                    <ul id="navigation">    
                                        <li><a href="${pageContext.request.contextPath}/"> Home</a></li>
                                        <li><a>Portfolio</a>
                                            <ul class="submenu">
                                                <li><a href="${pageContext.request.contextPath}/ch/list">이창형</a></li>
                                                <li><a href="${pageContext.request.contextPath}/jieun/bbs">최지은</a></li>
                                                <li><a href="${pageContext.request.contextPath}/test/bbs">최준호</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/frontHow">프론트 사용법</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>             
                        <div class="col-xl-2 col-lg-2 col-md-3">
                            <div class="header-right-btn f-right d-none d-lg-block">
                                <sec:authorize access="isAnonymous()">
                                	<a href="/loginPage" class="btn header-btn">로그인</a>
                                </sec:authorize>
                                <sec:authorize access="isAuthenticated()">
	                                <form action="/logout" method="post">
	                                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	                                	<button type="submit" class="btn header-btn">로그아웃</button>
	                                </form>
								</sec:authorize>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
       </div>
        <!-- Header End -->
        </header>
	<!-- JS here -->
	
	
</html>