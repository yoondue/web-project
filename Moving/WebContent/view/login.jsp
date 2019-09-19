<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("../images/ticket.jpg");
	background-size: cover;
	background-repeat: none;
}

section {
	padding-top: 120px;
}

button {
	cursor: pointer;
}

.title {
	color: white;
	font-size: 20px;
	font-weight: bold;
}

#naverLogin {
	width: 220px;
	padding-left: 60px;
	cursor: pointer;
}

.loginInfo {
	height: 50px;
	width: 280px;
	border-radius: 5px;
	border: none;
	margin: 3px;
	width: 280px;
}

#joinBtn, #loginBtn {
	border: none;
	background-color: rgba(239, 238, 238, 0.5);
	color: #717072;
}

button:focus {
	outline: none;
}

#joinBtn {
	width: 100px;
	border-radius: 20px;
	padding: 3px;
	margin-bottom: 30px;
}

#loginBtn {
	height: 80px;
	width: 100px;
	border-radius: 40px;
	margin-top: 40px;
}

#find_pw {
	color: white;
	font-size: 13px;
	text-decoration: none;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-10"></div>
				<div class="col-md-2">
					<button id="joinBtn" onclick="location.href ='join.jsp'">ȸ������</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<p class="title">�α���</p>
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<form action="loginProc.jsp" method="post">
								<input type="text" placeholder="�̸���(example@gmail.com)"
									class="loginInfo" name="uid"> <br> <input
									type="password" placeholder="�н�����" class="loginInfo" name="upw"><br>
								<a href="find_pw.jsp" id="find_pw">��й�ȣ�� �����̳���?</a>

								<hr style="width: 300px;">
						</div>
						<div class="col-md-6">
							<button id="loginBtn" type="submit" value="login">�α���</button>
						</div>
						</form>
					</div>
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<img src="../images/naverLogin.png" id="naverLogin">
						</div>
						<div class="col-md-7"></div>
					</div>
				</div>
			</div>
		</div>

	</section>
</body>
</html>