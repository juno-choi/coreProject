<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html class="no-js" lang="zxx">
<head>
<title>login</title>
</head>

	<div class="services-area">
		<div class="container">
			<!-- Section-tittle -->
			<div class="row">
				<div class="col-12 text-center">
                        <h2 class="contact-title">Login</h2>
				</div>
                    <div class="col-lg-12">
                        <form class="form-contact" method="post" novalidate="novalidate" name="f" action="/login">
                            <div class="row">
                            	<div class="col-3">
                            	</div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <input class="form-control" name="id" id="id" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter ID">
                                    </div>
                                </div>
                                <div class="col-3">
                            	</div>
                            	
                                <div class="col-3">
                            	</div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <input class="form-control" name="pw" id="pw" type="password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter PW">
                                    </div>
                                </div>
								<div class="col-3">
                            	</div>
                            	
                                <div class="col-3">
                            	</div>
                                <div class="col-6">
                                    <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
									    <font color="red">
										    <span class="mb-1">
										        ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
										        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
										    </span>
									    </font>
									</c:if>
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" name="${_csrf.parameterName}" value="${_csrf.token}">
                                    </div>
                                </div>
								<div class="col-3">
                            	</div>
                            </div>
                            <div class="form-group mt-12 text-center">
                                <button type="submit" class="button button-contactForm boxed-btn">Login</button>
                                <a href="join" class="button button-contactForm boxed-btn">회원가입</a>
                            </div>
                        </form>
                    </div>
			</div>
		</div>
	</div>
</html>

