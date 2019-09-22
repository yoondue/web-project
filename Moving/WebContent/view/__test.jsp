<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<body>
	<c:if test="${userId eq null}">
		<a
			href="https://kauth.kakao.com/oauth/authorize
            ?client_id=a2f0f2274bdbebda86172a41f72d0585
            &redirect_uri=http://localhost:8080/Moving/view/login.jsp
            &response_type=code">
			<img src="../images/kakao_account_login_btn_medium_narrow.png">
		</a>
	</c:if>
	<c:if test="${userId ne null}">
		<h1>로그인 성공입니다</h1>
	</c:if>
</body>

</body>

</html>