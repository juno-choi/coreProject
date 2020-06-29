<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- security -->
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize>
	<h5><a href="/loginPage">Login</a> 로그인 사용자가 접속할수 있는 페이지입니다.</h5>
</sec:authorize>

<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Core Project </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

		<!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css">
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
            <link rel="stylesheet" href="assets/css/flaticon.css">
            <link rel="stylesheet" href="assets/css/slicknav.css">
            <link rel="stylesheet" href="assets/css/animate.min.css">
            <link rel="stylesheet" href="assets/css/magnific-popup.css">
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="assets/css/themify-icons.css">
            <link rel="stylesheet" href="assets/css/slick.css">
            <link rel="stylesheet" href="assets/css/nice-select.css">
            <link rel="stylesheet" href="assets/css/style.css">
   </head>
   	<!-- sweetalert2 -->
	<script src="/sweetalert2/sweetalert2.js"></script>
	
   <body>
       
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->

        <!-- Header Start -->
	<div class="header-area header-transparrent ">
		<div class="main-header header-sticky">
			<div class="container">
				<div class="row align-items-center">
				<!-- Logo -->
					<div class="col-xl-2 col-lg-2 col-md-1">
						<div class="logo">
							<a href="${pageContext.request.contextPath}/"><img src="assets/img/logo/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-xl-8 col-lg-8 col-md-8">
						<!-- Main-menu -->
						<div class="main-menu f-right d-none d-lg-block">
							<nav> 
								<ul id="navigation">    
                                	<li><a href="${pageContext.request.contextPath}/"> Home</a></li>
									<li><a href="#aboutUs">About Us</a></li>
                                    <li><a>Portfolio</a>
                                    	<ul class="submenu">
                                        	<li><a href="${pageContext.request.contextPath}/ch/list">이창형</a></li>
                                            	<li><a href="${pageContext.request.contextPath}/jieun/bbs">최지은</a></li>
                                                <li><a href="${pageContext.request.contextPath}/junho/choice">최준호</a></li>
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


        <!-- Slider Area Start-->
        <div class="slider-area ">
            <div class="slider-active">
                <div class="single-slider slider-height d-flex align-items-center" data-background="assets/img/hero/h1_hero.png">
                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <div class="col-lg-7 col-md-9 ">
                                <div class="hero__caption">
                                    <h1 data-animation="fadeInLeft" data-delay=".4s">Core Project<br> Our Project</h1>
                                    <p data-animation="fadeInLeft" data-delay=".6s">Our Core Project is corona infomation that is for you</p>
                                    <!-- Hero-btn -->
                                    <div class="hero__btn" data-animation="fadeInLeft" data-delay=".8s">
                                        <a href="#aboutUs" class="btn hero-btn">About Us</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="hero__img d-none d-lg-block" data-animation="fadeInRight" data-delay="1s">
                                    <img src="assets/img/hero/hero_right.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Slider Area End-->
        <!-- What We do start-->
        <div id="aboutUs" class="what-we-do we-padding">
            <div class="container">
                <!-- Section-tittle -->
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="section-tittle text-center">
                            <h2>About Us</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-do text-center mb-30">
                            <div class="do-icon">
                                <span  class="flaticon-tasks"></span>
                            </div>
                            <div class="do-caption">
                                <h4>이창형</h4>
                                <p>게시판 / 검색기능</p>
                            </div>
                            <div class="do-btn">
                                <a href="${pageContext.request.contextPath}/ch/list"><i class="ti-arrow-right"></i> portfolio</a>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-4 col-md-6">
                        <div class="single-do text-center mb-30">
                            <div class="do-icon">
                                <span  class="flaticon-social-media-marketing"></span>
                            </div>
                            <div class="do-caption">
                                <h4>최지은</h4>
                                <p>게시판 / 네이버아이디로로그인 </p>
                            </div>
                            <div class="do-btn">
                                <a href="${pageContext.request.contextPath}/jieun/bbs"><i class="ti-arrow-right"></i> portfolio</a>
                            </div>
                        </div>
                    </div>
                     <div class="col-lg-4 col-md-6">
                        <div class="single-do text-center mb-30">
                            <div class="do-icon">
                                <span  class="flaticon-project"></span>
                            </div>
                            <div class="do-caption">
                                <h4>최준호</h4>
                                <p>Server / 기타 기능</p>
                            </div>
                            <div class="do-btn">
                                <a href="${pageContext.request.contextPath}/junho/choice"><i class="ti-arrow-right"></i> portfolio</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- What We do End-->
         <!-- Testimonial Start -->
         <div class="testimonial-area">
            <div class="container">
               <div class="testimonial-main">
                    <!-- Section-tittle -->
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-5  col-md-8 pr-0">
                            <div class="section-tittle text-center">
                                <h2>We Say</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                            <div class="col-lg-10 col-md-9">
                                <div class="h1-testimonial-active">
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial text-center">
                                        <div class="testimonial-caption ">
                                            <div class="testimonial-top-cap">
                                                <p>하고 싶은 말 </p>
                                            </div>
                                            <!-- founder -->
                                            <div class="testimonial-founder d-flex align-items-center justify-content-center">
                                                <div class="founder-img">
                                                    <img src="assets/img/testmonial/testimonial.png" alt="">
                                                </div>
                                            <div class="founder-text">
                                                <span>이창형</span>
                                                <p>게시판 / 검색기능</p>
                                            </div>
                                            </div>
                                        </div>
                                    </div><!-- Single Testimonial -->
                                    <div class="single-testimonial text-center">
                                        <div class="testimonial-caption ">
                                            <div class="testimonial-top-cap">
                                                <p>하고 싶은 말 </p>
                                            </div>
                                            <!-- founder -->
                                            <div class="testimonial-founder d-flex align-items-center justify-content-center">
                                                <div class="founder-img">
                                                    <img src="assets/img/testmonial/testimonial.png" alt="">
                                                </div>
                                            <div class="founder-text">
                                                <span>최지은</span>
                                                <p>코로나 맵 / 코로나 API 기능</p>
                                            </div>
                                            </div>
                                        </div>
                                    </div><!-- Single Testimonial -->
                                    <div class="single-testimonial text-center">
                                        <div class="testimonial-caption ">
                                            <div class="testimonial-top-cap">
                                                <p>프로젝트 진행 잘합시다~~ </p>
                                            </div>
                                            <!-- founder -->
                                            <div class="testimonial-founder d-flex align-items-center justify-content-center">
                                                <div class="founder-img">
                                                    <img src="assets/img/testmonial/testimonial.png" alt="">
                                                </div>
                                            <div class="founder-text">
                                                <span>최준호</span>
                                                <p>Server / 기타 기능</p>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
               </div>
            </div>
        </div>
        <!-- Testimonial End -->
        <!-- Tips Triks Start -->
        <div id="portfolio" class="tips-triks-area tips-padding">
            <div class="container">
                 <!-- Section-tittle -->
                 <div class="row d-flex justify-content-center">
                    <div class="col-lg-6 col-md-8 pr-0">
                        <div class="section-tittle text-center">
                            <h2>Our Portfolio Page</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-tips mb-50">
                            <div class="tips-img">
                                <img src="assets/img/tips/tips_1.jpg" alt="">
                            </div>
                            <div class="tips-caption">
                                <h4><a href="${pageContext.request.contextPath}/ch/list">이창형</a></h4>
                                <span>게시판 / 검색기능</span>
                                <p>April 22, 2020</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-tips mb-50">
                            <div class="tips-img">
                                <img src="assets/img/tips/tips_2.jpg" alt="">
                            </div>
                            <div class="tips-caption">
                                <h4><a href="${pageContext.request.contextPath}/jieun/bbs">최지은</a></h4>
                                <span>코로나 맵 / 코로나 API 기능</span>
                                <p>April 22, 2020</p>
                            </div>
                        </div>
                    </div>
                     <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-tips mb-50">
                            <div class="tips-img">
                                <img src="assets/img/tips/tips_3.jpg" alt="">
                            </div>
                            <div class="tips-caption">
                                <h4><a href="${pageContext.request.contextPath}/junho/choice">최준호</a></h4>
                                <span>Server / 기타 기능</span>
                                <p>April 22, 2020</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Tips Triks End -->

   <footer>

       <!-- Footer Start-->
      <div class="footer-main" data-background="assets/img/shape/footer_bg.png">
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-lg-3 col-md-4 col-sm-8">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                              <!-- logo -->
                             <div class="footer-logo">
                                 <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                             </div>
                             <div class="footer-tittle">
                                 <div class="footer-pera">
                                     <p class="info1">Our Emails</p>
                                     <p class="info2">Our Git-Hub repository</p>
                                </div>
                             </div>
                             <div class="footer-social">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                            </div>
                         </div>
                       </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>이창형</h4>
                                <ul>
                                    <li><a href="#">이메일</a></li>
                                    <li><a href="https://github.com/chlee731">https://github.com/chlee731</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>최지은</h4>
                                <ul>
                                    <li><a href="#">choijiuen@gmail.com</a></li>
                                    <li><a href="https://github.com/choijiuen">https://github.com/choijiuen</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>최준호</h4>
                                <ul>
                                 <li><a href="#">ililil9482@naver.com</a></li>
                                 <li><a href="https://github.com/juno-choi">https://github.com/juno-choi</a></li>
                             </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom aera -->
        <div class="footer-bottom-area footer-bg">
            <div class="container">
                <div class="footer-border">
                     <div class="row d-flex align-items-center">
                         <div class="col-xl-12 ">
                             <div class="footer-copy-right text-center">
                                 <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                             </div>
                         </div>
                     </div>
                </div>
            </div>
        </div>
      </div>
       <!-- Footer End-->

   </footer>
   
	<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <!-- Date Picker -->
        <script src="./assets/js/gijgo.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
    </body>
</html>