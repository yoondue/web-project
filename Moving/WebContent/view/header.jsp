<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Moving</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.5/popper.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

header {
	font-size: 15px;
	width: 100%;
}

footer {
	color: #B8BAC3;
	text-align: center;
	position: relative;
	clear: both;
	bottom: 0;
}

#logo {
	padding: 10px;
	width: 120px;
	margin-left: 10px;
	margin-top: 10px;
	padding-bottom: 20px;
}

form {
	padding-top: 20px;
	padding-bottom: 20px;
}
/* Style the search field */
form.search input[type=text] {
	font-size: 13px;
	border: none;
	border-bottom: 1px solid grey;
	width: 300px;
	background: none;
	outline: none;
}

form.search button {
	font-size: 17px;
	border: none;
	background: none;
	cursor: pointer;
	color: #5D5965;
}

form.search input:focus {
	border-bottom-width: 1.5px;
}

#ck_search {
	font-size: 13px;
}

.dropdown-menu {
	width: 650px;
}

/* checkbox */
input[type=checkbox] {
	display: none;
}

input[type=checkbox]+label {
	display: inline-block;
	position: relative;
	padding: 8px;
	background-color: white;
	border: 1px solid #D55C5A;
	border-radius: 5px;
	width: 8px;
}

input[type=checkbox]:checked+label {
	color: #CC679D;
}

input[type=checkbox]:checked+label:after {
	position: absolute;
	left: 8px;
	top: 0px;
	color: #fff;
	content: '\2714';
	font-size: 10px;
}

.dropdown-menu {
	border: none;
	background-color: rgba(239, 238, 238, 0.9);
}

#searchBtn, #searchExitBtn {
	border-radius: 5px;
	color: white;
	border: none;
	width: 100px;
	padding: 5px;
	cursor: pointer;
}

#searchBtn {
	background-color: #D55C5A;
}

#searchExitBtn {
	background-color: #61656A;
}
</style>
</head>
<body>
	<header>
		<nav id="#fixed"
			class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
			<a class="navbar-brand" href="#"><img src="../images/logo2.png"
				id="logo"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">��</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a class="nav-link dropdown"
						href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"><i
							class="fa fa-bars" id="menu"></i></a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<p style="padding: 30px 0 0 150px;">�帣��&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;������</p>
							<form action="search_result.jsp" method="get" id="ck_search">
								<div style="float: left; margin: 0 40px 30px 50px;">
									<br> <input type="checkbox" name="romance" value="romance"
										id="chk1"><label for="chk1"></label>���<br> <input
										type="checkbox" name="romance" value="romance" id="chk2"><label
										for="chk2"></label>������<br> <input type="checkbox"
										name="romance" value="romance" id="chk3"><label
										for="chk3"></label>�ڹ̵�<br> <input type="checkbox"
										name="romance" value="romance" id="chk4"><label
										for="chk4"></label>�׼�
								</div>
								<div style="float: left; margin: 0 40px 30px 0;">
									<br> <input type="checkbox" name="romance" value="romance"
										id="chk5"> <label for="chk5"></label>�θǽ�<br> <input
										type="checkbox" name="romance" value="romance" id="chk6"><label
										for="chk6"></label>����<br> <input type="checkbox"
										name="romance" value="romance" id="chk7"><label
										for="chk7"></label>�ִϸ��̼�<br> <input type="checkbox"
										name="romance" value="romance" id="chk8"><label
										for="chk8"></label>���͸�<br> <br> <br> <input
										type="submit" value="�˻��ϱ�" id="searchBtn">
								</div>
								<div style="float: left; margin: 0 40px 30px 0;">
									<br> <input type="checkbox" name="romance" value="romance"
										id="chk9"><label for="chk9"></label> ��Ÿ��<br> <input
										type="checkbox" name="romance" value="romance" id="chk10"><label
										for="chk10"></label>SF<br> <input type="checkbox"
										name="romance" value="romance" id="chk11"><label
										for="chk11"></label>��ť���͸�<br> <input type="checkbox"
										name="romance" value="romance" id="chk12"><label
										for="chk12"></label>������
								</div>

								<div style="float: right; margin: 0 80px 30px 50px;">
									<br> <input type="checkbox" name="lowStar" value="lowStar"><label
										for="chk13"></label>0.0~2.0 <br> <input type="checkbox"
										name="middleStar" value="middleStar"><label
										for="chk14"></label>2.1~3.0 <br> <input type="checkbox"
										name="highStar" value="highStar"><label for="chk15"></label>3.1~4.0
									<br> <input type="checkbox" name="topStar" value="topStar"><label
										for="chk16"></label>4.1~5.0<br> <br> <br> <input
										type="button" value="�ݱ�" id="searchExitBtn">
								</div>

							</form>
						</div></li>
				</ul>

				<form class="search">
					<input type="text" placeholder="�˻�� �Է��ϼ���.">
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
					<button type="button">
						<i class="fa fa-user" id="user"></i>
					</button>
				</form>

			</div>
			<!-- collapse navbar-collapse -->
		</nav>
	</header>
	<script type="text/javascript">
		$(function(){
			$("#user").click(function(){
				// ���� �۾�: if������ ���� �ɱ� - login, logout�� ����
				// login
				location.href = "login.jsp"
				
				// logout
				//location.href = "my_page.jsp"
			});
		});
	</script>
</body>
</html>