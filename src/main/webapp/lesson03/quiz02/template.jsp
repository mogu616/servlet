<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Melong</title>
<style>
a {text-decoration: none;}
a:hover {text-decoration: none;}

#wrap {width:1200px; margin:auto;}
header {width:1200px; height:100px;}
header > .logo {width:150px;}
header > .logo > .logo-font > a{color:#29A745; font-weight:bold;}
header > .logo > .logo-font > a:hover {color:#29A745; font-weight:bold;}
header > .search {width:400px;}

.menu {width:1200px;}
.menu .menu-link-text {color:black; font-weight:bold;}
.content2-musicInfo .content2-musicInfo-singerText {color:#29A745; font-weight:bold;}
.content2-lyrics {width:1200px; height:150px;}

.content1-profile {width:1200px; height:200px; border:solid 1px #29A745;}
.content2-musicInfo {width:1200px; height:250px; border:solid 1px #29A745;}
.content1-list {width:1200px; height:400px};


footer {width:1200px; height:50px;}

</style>
</head>
<body>
<%
    String title = request.getParameter("title");
%>

	<div id="wrap" class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="menu.jsp"/>
		<%
			if (title == null) {
		%>
		<jsp:include page="content1.jsp"/>
		<%
			} else {
		%>
		<jsp:include page="content2.jsp?title=<%= title %>"/>
		<%
			}
		%>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>