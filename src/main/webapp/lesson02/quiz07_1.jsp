<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
    
    	String name = request.getParameter("name");
    	String point = request.getParameter("point");
	%>
	<div class="container">
		<h1>검색 결과</h1>
			<table class="table text-center">
				<thead>
					<th scope="col">메뉴</th>
					<th scope="col">상호</th>
					<th scope="col">별점</th>
				</thead>
				<tbody>
	<%	
		//Iterator<Map<String, Object>> iter = list.iterator();
		//while (iter.hasNext()) {
			//Map<>
		for (Map<String, Object> map1 : list) {
			if (point != null) {
				if (map1.containsValue(name)) {
		
		
			
	%>
					<tr>
						<th></th>
						<td></td>
						<td></td>
					</tr>
	<%
				}
			}
	
		}
	%>
				</tbody>
			</table>
	</div>
</body>
</html>