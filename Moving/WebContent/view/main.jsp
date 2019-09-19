<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*"%>

<%!
	Connection conn; // ����̹� �ε�

	// DB ���� Ȯ��
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "codelab";
	String pw = "oracleyj";%>

<%
	try {
		// 1. JDBC ����̹� �ε��ϱ�
		Class.forName(driver);

		// 2. DB ���� �����ϱ�
		conn = DriverManager.getConnection(url, id, pw);
		//out.println("���������� �����ͺ��̽��� ���ӵǾ����ϴ�.");

	} catch (SQLException e) {
		out.println("���ܰ� �߻��Ͽ����ϴ�.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
section {
	padding-top: 120px;
	padding-bottom: 100px;
	font-family: 'Noto Sans KR', sans-serif;
}

.d-block, .card {
	cursor: pointer;
}

#separate {
	height: 100px;
}

#subtitle {
	margin-bottom: 20px;
}

.movieBody {
	height: 80px;
}

#part2 {
	/* background-color: #EFEEEE; */
	
}

.container {
	width: 100%;
}

.userImage {
	border: 2px solid #EFEEEE;
	border-radius: 50%;
	width: 80px;
	height: 80px;
	margin: 20px;
}

.reviewBody {
	background-color: #EFEEEE;
	margin: 10px;
}

.moreReview {
	margin-bottom: 10px;
}

#moreReview {
	color: #894242;
	font-size: 13px;
	text-decoration: none;
	font-weight: bold;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section>
		<div class="container">
			<!-- carousel -->
			<div class="row">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="../images/carousel1.png"
								alt="First slide" id="carouselMovie1">
							<div class="carousel-caption d-none d-md-block"
								style="text-align: left">
								<h3>��ȯ���� ��������</h3>
								<h1>�׷��� �δ��佺Ʈ ȣ��</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="../images/carousel2.png"
								alt="Second slide" id="carouselMovie2">
							<div class="carousel-caption d-none d-md-block"
								style="text-align: left">
								<h3>�뷡�� ����̰� �Ƹ��ٿ�</h3>
								<h1>��󷣵�</h1>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="../images/carousel3.png"
								alt="Third slide" id="carouselMovie3">
							<div class="carousel-caption d-none d-md-block"
								style="text-align: left">
								<h3>�Ȼ��� ���� �ִϸ��̼�</h3>
								<h1>����</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row" id="separate"></div>

			<!-- card (movie) -->
			<div class="row" id="part1">
				<div class="row" id="subtitle">
					<h4>�ۡۡ۴��� ���� ��õ ��ȭ</h4>
				</div>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<div class="card-deck">
							<div class="card movie1">
								<img src="../images/dummy.png" class="card-img-top" alt="...">
								<div class="card-body movieBody">
									<h6 class="card-title">���������</h6>
									<p class="card-text">
										<small class="text-muted">2015 �� ���</small>
									</p>
								</div>
							</div>
							<div class="card movie2">
								<img src="../images/dummy.png" class="card-img-top" alt="...">
								<div class="card-body deckBody">
									<h6 class="card-title">���������</h6>
									<p class="card-text">
										<small class="text-muted">2015 �� ���</small>
									</p>
								</div>
							</div>
							<div class="card movie3">
								<img src="../images/dummy.png" class="card-img-top" alt="...">
								<div class="card-body deckBody">
									<h6 class="card-title">���������</h6>
									<p class="card-text">
										<small class="text-muted">2015 �� ���</small>
									</p>
								</div>
							</div>
							<div class="card movie4">
								<img src="../images/dummy.png" class="card-img-top" alt="...">
								<div class="card-body deckBody">
									<h6 class="card-title">���������</h6>
									<p class="card-text">
										<small class="text-muted">2015 �� ���</small>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
			<div class="row" id="separate"></div>

			<!-- card (review) -->
			<div id="part2">
				<div class="row" id="subtitle">
					<h4>�ǽð� ����</h4>
				</div>
				<div class="row moreReview">
					<div class="col-md-10"></div>
					<div class="col-md-2">
						<a href="review.jsp" id="moreReview">������</a>
					</div>
				</div>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-5">
						<div class="card mb-3 review1" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-5">
									<div class="userImage"></div>
								</div>
								<div class="col-md-7">
									<div class="card-body reviewBody">
										<p class="card-text">User ID:</p>
										<h5 class="card-title">contents' title</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="card mb-3 review2" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-5">
									<div class="userImage"></div>
								</div>
								<div class="col-md-7">
									<div class="card-body reviewBody">
										<p class="card-text">User ID:</p>
										<h5 class="card-title">contents' title</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>

				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-5">
						<div class="card mb-3 review3" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-5">
									<div class="userImage"></div>
								</div>
								<div class="col-md-7">
									<div class="card-body reviewBody">
										<p class="card-text">User ID:</p>
										<h5 class="card-title">contents' title</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-5">
						<div class="card mb-3 review4" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-5">
									<div class="userImage"></div>
								</div>
								<div class="col-md-7">
									<div class="card-body reviewBody">
										<p class="card-text">User ID:</p>
										<h5 class="card-title">contents' title</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
				</div>

			</div>
			<!-- <div class="row" id="part2"> -->
		</div>
		<!-- container -->
	</section>

	<script type="text/javascript">
		$(function() {
			// carousel
			$("#carouselMovie1").click(function() {
				location.href = "#";
			});
			$("#carouselMovie2").click(function() {
				location.href = "#";
			});
			$("#carouselMovie3").click(function() {
				location.href = "#";
			});

			// card (movie)
			var movie1 = "http://naver.com";
			var movie2 = "http://google.com";
			var movie3 = "http://daum.net";
			var movie4 = "http://naver.com";

			$(".movie1").click(function() {
				location.href = movie1;
			});
			$(".movie2").click(function() {
				location.href = movie2;
			});
			$(".movie3").click(function() {
				location.href = movie3;
			});
			$(".movie4").click(function() {
				location.href = movie4;
			});

			// card (review)
			var review1 = "http://naver.com";
			var review2 = "http://google.com";
			var review3 = "http://daum.net";
			var review4 = "http://naver.com";

			$(".review1").click(function() {
				location.href = review1;
			});
			$(".review2").click(function() {
				location.href = review2;
			});
			$(".review3").click(function() {
				location.href = review3;
			});
			$(".review4").click(function() {
				location.href = review4;
			});

		});
	</script>
</body>
</html>