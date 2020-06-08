<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
	
</head>

<!-- socket으로 해당 ip로 연결됨 -->
<script src="http://39.118.28.172:5555/socket.io/socket.io.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.js"></script>

<script>
$(document).ready(function(){
	var socket = io("http://39.118.28.172:5555");

	var msg = document.querySelector('#msg');
	var msg_process = document.querySelector('#msg_process');
	var user_name = '${userName}';
	
	
	msg.addEventListener("keydown",function(e){
		if(e.keyCode == 13){
			msg_process.click();
		}
	});

	msg_process.addEventListener('click',function(){
		var data = {};
		data.msg = msg.value;
		data.user = user_name;
		var json = JSON.stringify(data);
		
		socket.emit('send_msg',json);
		msg.value = "";
	});

	socket.on('send_msg',function(msg){
		var chat_box = document.querySelector('#chat_box');
		var div = document.createElement('div');
		div.innerHTML = msg;
		chat_box.appendChild(div);
		document.querySelector('#chat_box').scrollTop = document.querySelector('#chat_box').scrollHeight;
	});

	//alert test
	var test = document.querySelector('#alert');
	test.addEventListener('click',function(e){
		Swal.fire('Any fool can use a computer');
	});
	
});


</script>


<div class="services-area">
	<div class="container">
			<!-- Section-tittle -->
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-12">
						<div class="single-textarea" id="chat_box" style="width: 800px; height: 500px; border: 1px solid black; overflow: auto;"></div>
					</div>
					<div class="col-lg-12">
						<div class="row">
							<span class="col-4">
								<input class="single-input" type="text" id="msg"/>
							</span>
							<button class="genric-btn success circle arrow" id="msg_process">전송</button>
							<button id="alert">테스트</button>
							<p><sec:authorize access="isAuthenticated()">
                    <sec:authentication property="principal.username" var="user_id" />
                    <div id="user_id">안녕하세요. ${userName }</div>
                </sec:authorize></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
