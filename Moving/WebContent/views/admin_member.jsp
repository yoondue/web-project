<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="header.jsp" />

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>


<style type="text/css">
	section {
 	  	padding-top: 120px;
  	 	padding-bottom: 100px;
	}
	h3{
		margin: 10px;
		margin-bottom: 20px;
	}
	.list-group{
		margin-top: 20px;
	}
	.page{
		margin-top: 30px;
	}

</style>

</head>
<body>

	<header>
	
	</header>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
					  <a href="#" class="list-group-item"><span class="glyphicon glyphicon-hand-right"></span> 회원 관리</a>
					  <a href="#" class="list-group-item"><span class="glyphicon glyphicon-hand-right"></span> 리뷰 관리</a>
					  <a href="#" class="list-group-item"><span class="glyphicon glyphicon-hand-right"></span> 추천리스트 관리</a>
					  <a href="#" class="list-group-item"><span class="glyphicon glyphicon-hand-right"></span> 에디터 추천 영화</a>
					</div>
				</div>
				
				<div class="col-md-9">
					<div class="row">
						<h3>회원 관리</h3>
						<div>
							<table class="table">
								<tr>
									<th>회원번호</th>
									<th>이메일</th>
									<th>닉네임</th>
									<th>관심장르</th>
									<th>성별</th>
									<th>연령대</th>
									<th>가입일</th>
									<th>회원삭제</th>
								</tr>
								<tr>
									<td>1001</td>
									<td>pika@naver.com</td>
									<td>피카츄</td>
									<td>드라마,로맨스</td>
									<td>여</td>
									<td>10대</td>
									<td>2019.08.25</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1002</td>
									<td>kkobuk@naver.com</td>
									<td>꼬부기</td>
									<td>SF,공포</td>
									<td>남</td>
									<td>30대</td>
									<td>2019.09.12</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1001</td>
									<td>pika@naver.com</td>
									<td>피카츄</td>
									<td>드라마,로맨스</td>
									<td>여</td>
									<td>10대</td>
									<td>2019.08.25</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1002</td>
									<td>kkobuk@naver.com</td>
									<td>꼬부기</td>
									<td>SF,공포</td>
									<td>남</td>
									<td>30대</td>
									<td>2019.09.12</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1001</td>
									<td>pika@naver.com</td>
									<td>피카츄</td>
									<td>드라마,로맨스</td>
									<td>여</td>
									<td>10대</td>
									<td>2019.08.25</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1002</td>
									<td>kkobuk@naver.com</td>
									<td>꼬부기</td>
									<td>SF,공포</td>
									<td>남</td>
									<td>30대</td>
									<td>2019.09.12</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1001</td>
									<td>pika@naver.com</td>
									<td>피카츄</td>
									<td>드라마,로맨스</td>
									<td>여</td>
									<td>10대</td>
									<td>2019.08.25</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1002</td>
									<td>kkobuk@naver.com</td>
									<td>꼬부기</td>
									<td>SF,공포</td>
									<td>남</td>
									<td>30대</td>
									<td>2019.09.12</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1001</td>
									<td>pika@naver.com</td>
									<td>피카츄</td>
									<td>드라마,로맨스</td>
									<td>여</td>
									<td>10대</td>
									<td>2019.08.25</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
								<tr>
									<td>1002</td>
									<td>kkobuk@naver.com</td>
									<td>꼬부기</td>
									<td>SF,공포</td>
									<td>남</td>
									<td>30대</td>
									<td>2019.09.12</td>
									<td><input type="submit" value="삭제하기" class="btn btn-danger btn-sm"></td>
								</tr>
							</table>
							
							<div class="page">
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center">
									    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
									    <li class="page-item"><a class="page-link" href="#">1</a></li>
									    <li class="page-item"><a class="page-link" href="#">2</a></li>
									    <li class="page-item"><a class="page-link" href="#">3</a></li>
									    <li class="page-item"><a class="page-link" href="#">Next</a></li>
								  </ul>
								</nav>
							</div>
							
						</div>
					</div>
				</div>
			
			</div>
		</div>
		
	</section>

	<footer>
	
	</footer>


</body>
</html>