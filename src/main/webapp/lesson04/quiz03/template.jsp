<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
a {text-decoration: none;}

#wrap {width:1200px;}

header {height:150px; background-color:#FF7F50;}
header .logo {width:400px;}
.content {width:1200px;}

.item-box {width:370px; border:solid 2px #FF7F50}
footer {height:50px;}

</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select a.nickname, b.price, b.pictureUrl, b.title\n" +
			"from seller as a\n" +
			"join used_goods as b\n" +
			"on a.id = b.sellerId";
	ResultSet result = ms.select(selectQuery);
	
	
%>
	<div id="wrap" class="container">
		<header class="d-flex justify-content-center align-items-center">
			<div>
				<div class="logo d-flex justify-content-center">
					<h1 class="text-white">HONG당무 마켓</h1>
				</div>
				<div>
				<nav class="bg-warning">
					<ul class="nav nav-fill">
						<li class="nav-item"><a href="#" class="nav-link text-white">리스트</a></li>
						<li class="nav-item"><a href="#" class="nav-link text-white">물건 올리기</a></li>
						<li class="nav-item"><a href="#" class="nav-link text-white">마이 페이지</a></li>
					</ul>
				</nav>
				</div>
			</div>
		</header>
		<section class="content d-flex mt-3">
			<article class="d-flex flex-wrap justify-content-around">
		<%
			while (result.next()) {
		%>
				<div class="item-box">
					<img src="<%= result.getString("pictureUrl") %>" alt="판매 사진" width="200px" height="150px">
					<div class="font-weight-bold"><%= result.getString("title") %></div>
					<div class="font-weight-bold"><%= result.getString("price") %></div>
					<div class="font-weight-bold"><%= result.getString("nickname") %></div>
				</div>
		<%
			}
			ms.disconnect();
		%>	
			</article>
		</section>
		<footer class="bg-info"></footer>
	</div>
</body>
</html>