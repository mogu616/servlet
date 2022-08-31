<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
		int centimeter = Integer.parseInt(request.getParameter("centimeter"));
		String[] unit = request.getParameterValues("unit");
		String[] unitArr = new String[4];
		
		for (int i = 0; i < unit.length; i++) {
				if (unit[i].equals("inch")) {
					unitArr[i] = String.valueOf(centimeter / 2.54) + " in";
				} else if (unit[i].equals("yard")) {
					unitArr[i] = String.valueOf(centimeter / 91.44) + " yd";
				} else if (unit[i].equals("feet")) {
					unitArr[i] = String.valueOf(centimeter / 30.48) + " ft";
				} else if (unit[i].equals("meter")){
					unitArr[i] = String.valueOf(centimeter / (double)100) + " m";
				}
			}
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= centimeter + "cm" %></h3>
		<hr>
		<h3>
			<%
				for (int i = 0; i < unit.length; i++) {
					if (unit[i] != null) {
						out.println(unitArr[i] + " " + "<br>");
					}
				}
			 %>
		</h3>
	</div>
</body>
</html>