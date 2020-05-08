<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html class="no-js" lang="zxx">
<head>
<title>회원가입</title>
</head>
	<div class="services-area">
		<div class="container">
			<!-- Section-tittle -->
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<h3 class="mb-30">회원가입</h3>
							<div class="row mt-10">
								<div class="col-xl-10 col-lg-10 col-md-12">
									<input type="text" name="id" placeholder="id"
										onfocus="this.placeholder = ''" onblur="this.placeholder = 'id'" required
										class="single-input">
								</div>
								<div class="col-xl-2 col-lg-2 col-md-12">
									<button class="genric-btn primary-border radius" style="width: 100%">중복확인</button>
								</div>
							</div>
							
							<div class="row mt-10">
								<div class="col-xl-10 col-lg-10 col-md-12">
									<input type="password" name="pw" placeholder="pw"
										onfocus="this.placeholder = ''" onblur="this.placeholder = 'pw'" required
										class="single-input">
								</div>
								<div class="col-xl-2 col-lg-2 col-md-12" id="checkPw1">
								</div>
							</div>
							<div class="row mt-10">
								<div class="col-xl-10 col-lg-10 col-md-12">
									<input type="password" name="rePw" placeholder="rePw"
										onfocus="this.placeholder = ''" onblur="this.placeholder = 'check Pw'" required
										class="single-input">
								</div>
								<div class="col-xl-2 col-lg-2 col-md-12" id="checkPw2">
								</div>
							</div>
							<div class="row mt-10">
								<div class="col-6">
									<input type="text" name="email1" placeholder="Email"
										onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email'" required
										class="single-input">
								</div>
								<div class="col-1">@</div>
								<div class="col-5">
									<div class="form-select" id="default-select"">
										<select>
											<option value="naver">naver.com</option>
											<option value="daum">daum.com</option>
											<option value="google">gmail.com</option>
										</select>
									</div>
								</div>
							</div>
							<div class="row mt-10">
								<div class="col-xl-10 col-lg-10 col-md-12">
									<input type="text" name="address1" placeholder="주소" onfocus="this.placeholder = ''"
										onblur="this.placeholder = '주소'" required class="single-input" disabled="disabled">
								</div>
								<div class="col-xl-2 col-lg-2 col-md-12">
									<button class="genric-btn primary-border radius" style="width: 100%">주소찾기</button>
								</div>
							</div>
							<div class="mt-10">
								<input type="text" name="address2" placeholder="상세주소" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '상세주소'" required class="single-input">
							</div>
							<div class="row mt-10">
								<div class="col-3">
									<div class="form-select" id="default-select">
										<select>
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
										</select>
									</div>
								</div>
								<div class="col-9">
									<input type="text" name="phone" placeholder="phone"
										onfocus="this.placeholder = ''" onblur="this.placeholder = 'phone'" required
										class="single-input">
								</div>
							</div>
						</div>
					</div>
				</div>
					<div class="col-12 text-center mt-30 mb-30" >
						<button class="genric-btn success-border radius">회원가입</button>
						<button class="genric-btn primary-border radius">취 소</button>
					</div>
			</div>
		</div>
	</div>
</html>

