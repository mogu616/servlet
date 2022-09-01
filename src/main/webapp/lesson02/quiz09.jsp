<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>오늘부터 1일</h1>
	<%
		Calendar today = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		for (int i = 1; i <= 10; i++) {
			int day = i * 100;
			today.add(Calendar.DATE, 100);
			
			out.print("<h2>" + day + "일 : " +   + "</h2>");
		}
		
	%>
</body>
</html>