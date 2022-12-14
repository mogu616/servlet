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

header {width:1200px; height:100px; background-color:#FF7F50;}
header .logo {width:400px;}

nav {width:1200px; background-color:#FF7F50;}
.content {width:1200px;}

.content .item-box {width:390px; height:300px; border:solid 2px #FF7F50}
.content .item-box:hover {width:390px; height:300px; border:solid 2px #FF7F50; background-color:#FF7F50;}
.content .item-box .item-box-price {font-size:12px; color:gray;}
.content .item-box .item-box-nickname {font-size:12px; color:#FF7F50;}
footer {width:1200px; height:50px;}

</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select a.nickname, b.price, b.picture, b.title\n" +
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
		<section class="content d-flex mt-3">
			<article class="d-flex flex-wrap  justify-content-around">
		<%
			while (result.next()) {
		%>
				<div class="item-box">
					<div class="ml-2 mt-2">
						<img src="<%= result.getString("picture") %>" alt="판매 사진" width="370px" height="200px">
						<div class="font-weight-bold"><%= result.getString("title") %></div>
						<div class="item-box-price"><%= result.getString("price") %></div>
						<div class="item-box-nickname"><%= result.getString("nickname") %></div>
					</div>
				</div>
		<%
			}
			ms.disconnect();
		%>	
			</article>
		</section>
		<footer class="d-flex justify-content-center align-items-end">
			<div class="text-center">
				<small class="text-secondary">Copyright 2021. hongdangmoo All Rights Reserved</small>
			</div>
		</footer>
	</div>
</body>
</html>