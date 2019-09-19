<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>

<%!Connection conn; // 드라이버 로드

	// DB 접속 확인
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "testuser";
	String pw = "dbslfnd";%>

<%
	try {
		// 1. JDBC 드라이버 로딩하기
		Class.forName(driver);

		// 2. DB 서버 접속하기
		conn = DriverManager.getConnection(url, id, pw);
		//out.println("정상적으로 데이터베이스에 접속되었습니다.");

	} catch (SQLException e) {
		out.println("예외가 발생하였습니다.");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${user.uid }님 반갑습니다.
	<br>
	<table border="">
		<thead>
			<tr>
				<td>아이디</td>
				<td>패스워드</td>
				<td>이름</td>
				<td>등록일</td>
			</tr>
		</thead>
		<tbody>
			<%
				// 아이디, 비밀번호 이용하여 쿼리 수행
				String sql = "SELECT * FROM student";

				// 쿼리 수행 코드
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql);

				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString("id")%></td>
				<td><%=rs.getString("passwd")%></td>
				<td><%=rs.getString("name")%></td>
				<td><%=rs.getDate("reg_date")%></td>
			</tr>
			<%
				}
				// 자원 정리
				rs.close();
				stmt.close();
				conn.close();
			%>
		</tbody>
	</table>
</body>
</html>
<%-- 	<jsp:include page="header.jsp" />
	<div class="alert alert-primary" role="alert">
		A simple primary alert with <a href="#" class="alert-link">an
			example link</a>. Give it a click if you like.
	</div>
	<div class="alert alert-primary" role="alert">
		A simple primary alert with <a href="#" class="alert-link">an
			example link</a>. Give it a click if you like.
	</div>
	<div class="alert alert-primary" role="alert">
		A simple primary alert with <a href="#" class="alert-link">an
			example link</a>. Give it a click if you like.
	</div>
	<div class="alert alert-primary" role="alert">아이디나 비밀번호를 확인해주세요.
	</div>
	<div class="alert alert-primary" role="alert">아이디나 비밀번호를 확인해주세요.
	</div>
	<div class="alert alert-secondary" role="alert">아이디나 비밀번호를
		확인해주세요.</div>
	<div class="alert alert-success" role="alert">아이디나 비밀번호를 확인해주세요.
	</div>
	<div class="alert alert-danger" role="alert">아이디나 비밀번호를 확인해주세요.</div>
	<div class="alert alert-warning" role="alert">아이디나 비밀번호를 확인해주세요.
	</div>
	<div class="alert alert-info" role="alert">아이디나 비밀번호를 확인해주세요.</div>
	<div class="alert alert-light" role="alert">아이디나 비밀번호를 확인해주세요.</div>
	<div class="alert alert-dark" role="alert">아이디나 비밀번호를 확인해주세요.</div>

 --%>