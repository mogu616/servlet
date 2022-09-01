<%@page import="javax.swing.JPopupMenu.Separator"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캘린더</title>
<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
		cal.set(2022, Calendar.SEPTEMBER, 1);
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
	%>
	<div class="container">
		<h1 class="text-center"><%= cal.get(Calendar.YEAR) %>-<%= sdf.format(cal.getTime()) %></h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<tr>
	<%
		int startWeek = cal.get(Calendar.DAY_OF_WEEK);
		int finalDate = cal.getActualMaximum(Calendar.DATE);
		for (int i = 1; i < startWeek; i++) {
	%>
					<td></td>
	<%		
		}
		for (int i = 1; i <= finalDate; i++) {
			if (cal.get(Calendar.DAY_OF_WEEK) % 7 == 1) {
	%>	
				</tr>
				<tr>
	<%		
			}
	%>
					<td class="display-4"><%= i %></td>
	<%		
				cal.add(Calendar.DATE, 1);
		}
	%>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>