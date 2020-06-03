<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	msg.addEventListener("keydown",function(e){
		if(e.keyCode == 13){
			msg_process.click();
		}
	});

	msg_process.addEventListener('click',function(){
		socket.emit('send_msg',msg.value);
		msg.value = "";
	});

	socket.on('send_msg',function(msg){
		var chat_box = document.querySelector('#chat_box');
		var div = document.createElement('div');
		div.innerHTML = msg;
		chat_box.appendChild(div);
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
						<div id="chat_box" style="width: 800px; height: 500px; border: 1px solid black;"></div>
					</div>
					<div class="col-lg-12">
						<input type="text" id="msg"/>
						<button id="msg_process">전송</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
