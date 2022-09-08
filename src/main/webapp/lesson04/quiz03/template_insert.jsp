<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
a {text-decoration: none;}

#wrap {width:1200px;}

header {width:1200px; height:100px; background-color:#FF7F50;}
header .logo {width:400px;}

nav {width:1200px; background-color:#FF7F50;}

.content {width:1200px;}
.content .top {height:200px;}
.content .main {height:300px;}

footer {width:1200px; height:50px;}

</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `seller`";
	
	ResultSet result = ms.select(selectQuery);
	
%>
		<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<div>
				<div class="logo d-flex justify-content-center">
					<h1 class="text-white">HONG당무 마켓</h1>
				</div>
			</div>
		</header>
		<nav>
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="/lesson04/quiz03/template.jsp" class="nav-link text-white">리스트</a></li>
				<li class="nav-item"><a href="/lesson04/quiz03/template_insert.jsp" class="nav-link text-white">물건
						올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">마이
						페이지</a></li>
			</ul>
		</nav>
		<section class="content">
			<div class="ml-5 top d-flex align-items-center">
				<div class="display-4">물건 올리기</div>
			</div>
			<div class="main">
				<form method="post" action="/lesson04/quiz03/quiz03_insert">
					<div class="d-flex">
						<select class="ml-5 form-control col-2" name="nickname">
							<option selected>-아이디 선택-</option>
						<%
							while (result.next()) {
								
						%>
							<option><%= result.getString("nickname") %></option>
						<%
							}
						%>
						</select>
						<input type="text" class="form-control ml-5 col-6" name="title" placeholder="제목">
						<input type="text" class="form-control ml-5 col-2" name="price" placeholder="가격">
					</div>
					<div class="ml-5 mt-3">
						<textarea class="form-control col-12" rows="5" name="description"></textarea>
					</div>
					<div class="ml-5 mt-3">
						<input type="text" class="form-control col-12" name="picture">
					</div>
					<button type="submit" class="form-control col-12 btn-secondary mt-3 ml-5">저장</button>
				</form>
			</div>
		</section>
		
		<footer class="d-flex justify-content-center align-items-end">
			<div class="text-center">
				<small class="text-secondary">Copyright 2021. hongdangmoo All Rights Reserved</small>
			</div>
		</footer>
	</div>
	
	
<%
	ms.disconnect();
%>
</body>
</html>