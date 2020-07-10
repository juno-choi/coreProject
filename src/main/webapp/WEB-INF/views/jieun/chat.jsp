<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Chat</title>
    
     <!-- CSS here -->
   <link rel="stylesheet" href="assets/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
   <link rel="stylesheet" href="assets/css/slicknav.css">
   <link rel="stylesheet" href="assets/css/animate.min.css">
   <link rel="stylesheet" href="assets/css/magnific-popup.css">
   <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
   <link rel="stylesheet" href="assets/css/themify-icons.css">
   <link rel="stylesheet" href="assets/css/slick.css">
   <link rel="stylesheet" href="assets/css/nice-select.css">
   <link rel="stylesheet" href="assets/css/style.css">
   <link rel="stylesheet" href="assets/css/responsive.css">
    
    <style>
      .chat_log{ width: 95%; height: 200px; }
      .name{ width: 10%; }
      .message{ width: 70%; }
      .chat{ width: 10%; }
    </style>
  </head>
  <body>
  
  <!-- Start Align Area -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
					<h3 class="mb-30">문의하기</h3>
					<div class="progress-table-wrap">
			 			<div class="progress-table">
							 <div>
						      <textarea id="chatLog" class="chat_log" readonly></textarea>
						    </div>
						    <form id="chat">
						      <input id="name" class="name" type="text" value="${username}" readonly>
						      <input id="message" class="message" type="text">
						      <input type="submit" class="chat" value="chat"/>
						    </form>
						    <div id="box" class="box"></div>
						</div>
					</div>

				</div>
			</div>
		</div>
  
  
    <script src="http://${filepath}:4321/socket.io/socket.io.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
    <script>

   	  var ioUrl = '${filepath}';
      var socket = io("http://"+ioUrl+":4321");
      $('#chat').on('submit', function(e){ 			// # -> id 값, . -> class  
        socket.emit('send message', $('#name').val(), $('#message').val());
        $('#message').val("");
        $("#message").focus();
        e.preventDefault(); // submit 했을 때 리로딩 안되게 해줌 
      });
      socket.on('receive message', function(msg){
        $('#chatLog').append(msg+'\n'); //textarea 안에 
        $('#chatLog').scrollTop($('#chatLog')[0].scrollHeight);
      });
      
    </script>
  </body>
</html>