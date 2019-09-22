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
	font-family: 'Noto Sans KR', sans-serif;
}

button {
	cursor: pointer;
}

.title {
	color: white;
	font-size: 20px;
	font-weight: bold;
}

.loginInfo {
	height: 50px;
	width: 280px;
	border-radius: 5px;
	border: none;
	margin: 3px;
	width: 280px;
}

#loginBtn, #findPwBtn {
	border: none;
	background-color: rgba(239, 238, 238, 0.5);
	color: #717072;
}

button:focus {
	outline: none;
}

#loginBtn {
	width: 100px;
	border-radius: 20px;
	padding: 3px;
	margin-bottom: 30px;
}

#findPwBtn {
	height: 80px;
	width: 100px;
	border-radius: 40px;
	margin-top: 40px;
}

#findPwComment {
	color: white;
	font-size: 13px;
	text-decoration: none;
	font-size: 13px;
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
					<button id="loginBtn" onclick="location.href ='login.jsp'">�α���</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<p class="title">��й�ȣ �н�</p>
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<form action="main.jsp" method="get">
								<br> <input type="text"
									placeholder="�̸���(example@gmail.com)" class="loginInfo">
								<br>
								<p id="findPwComment">
									<br>�����Ͻ� ���� �̸��� �ּҸ� �Է����ֽø�, <br> ���Ϸ� �ӽ� ��й�ȣ�� �����帱�Կ�.
								</p>
						</div>
						<div class="col-md-6">
							<button id="findPwBtn" type="submit">����!</button>
						</div>
						</form>
					</div>

				</div>
			</div>
		</div>

	</section>
</body>
</html>