<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE HTML>
<!--
	Binary by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>CorE</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<a href="/" class="logo"><strong>CorE</strong> Menu</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="#">이창형</a></li>
					<li><a href="/jieun/bbs">최지은</a></li>
					<li><a href="/test/bbs">최준호</a></li>
				</ul>
			</nav>

		<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h1>CorE is Corona Virus Every Thing that is info for you </h1>
					<ul class="actions">
						<li><a href="#one" class="button alt scrolly big">Continue</a></li>
					</ul>
				</div>
			</section>

		<!-- One -->
			<article id="one" class="post style1">
				<div class="image">
					<img src="images/pic14.jpg" alt="" data-position="75% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
							<h2><a href="generic.html">이창형</a></h2>
							<p class="info">자신이 하고 싶은 프로젝트 
								<a href="${pageContext.request.contextPath}/ch/list">이창형</a>
							</p>
						</header>
						<p>게시판 소개 글</p>
						<ul class="actions">
							<li><a href="generic.html" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#" class="prev disabled"><span class="icon fa-chevron-up"></span></a>
						<a href="#two" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Two -->
			<article id="two" class="post invert style1 alt">
				<div class="image">
					<img src="images/pic13.jpg" alt="" data-position="10% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
							<h2><a href="generic.html">최지은</a></h2>
							<p class="info">자신이 하고 싶은 프로젝트 <a href="#">최지은</a></p>
						</header>
						<p>게시판 소개 글</p>
						<ul class="actions">
							<li><a href="generic.html" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#one" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#three" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Three -->
			<article id="three" class="post style2">
				<div class="image">
					<img src="images/pic12.jpg" alt="" data-position="80% center" />
				</div>
				<div class="content">
					<div class="inner">
						<header>
							<h2><a href="generic.html">최준호</a></h2>
							<p class="info">자신이 하고 싶은 프로젝트 <a href="#">최준호</a></p>
						</header>
						<p>게시판 소개 글</p>
						<ul class="actions">
							<li><a href="/junho/main" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#two" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#" class="disabled next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>


		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
				</ul>
				<div class="copyright">
					&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.
				</div>
			</footer>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>