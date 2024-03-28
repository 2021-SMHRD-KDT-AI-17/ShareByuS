<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>채팅</title>
<script type="text/javascript">
function connect() {
	var ws = new WebSocket("ws://61.80.80.163:8092/controller/goChat");

	ws.onopen = function() {
		console.log('Info: connection opened.');
		setTimeout(function() {
			connect();
		}, 1000); // retry connection!!
	};

	ws.onmessage = function(evt) {
		console.log(evt.data + '\n');
	};

	ws.onclose = function(evt) {
		console.log('Info: connection closed.');
	};
	ws.onerror = function(evt) {
		console.log('Info: connection closed.');
	};
}

/* 	$('#enterBtn').on('click', function(event) {
		event.preventDefault();
		if (socket.readyState !== 1)
			return;
		let msg = $('#message').val();
		ws.send(msg);
	}); */

	/* $(document).ready(function() {
		$('#message').keypress(function(event) {
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if (keycode == '13') {
				send();
			}
			event.stopPropagation();
		}); */
		$('#sendBtn').click(function() {
			send();
		});
		$('#enterBtn').click(function() {
			connect();
		});
		$('#exitBtn').click(function() {
			disconnect();
		});
	/* }); */
</script>
<style>
#chatArea {
	width: 200px;
	height: 100px;
	overflow-y: auto;
	border: 1px solid black;
}
</style>
</head>
<body>
	이름:
	<input type="text" id="nickname">
	<input type="button" id="enterBtn" value="입장">
	<input type="button" id="exitBtn" value="나가기">

	<h1>대화 영역</h1>
	<div id="chatArea">
		<div id="chatMessageArea"></div>
	</div>
	<br />
	<input type="text" id="message">
	<input type="button" id="sendBtn" value="전송">
</body>
</html>