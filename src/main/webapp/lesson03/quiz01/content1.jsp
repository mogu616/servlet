<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String chh = request.getParameter("chh");
%>
<table class="table">
				<thead>
					<tr class="row">
						<th class="col-4">채널</th>
						<th class="col-4">채널명</th>
						<th class="col-4">카테고리</th>
					</tr>
				</thead>
<tbody>
<%    
    for (Map<String, String> item : list) {
    	if (chh == null) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>
<%   		
        } else if (chh != null && chh.equals("a")) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>
<%    
    	} else if (chh != null && chh.equals("b")) {
    		if (item.get("category").equals("지상파")) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>
<%    
    		}
    	} else if (chh != null && chh.equals("c")) {
    		if (item.get("category").equals("드라마")) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>
<%    
    		}
    	} else if (chh != null && chh.equals("d")) {
    		if (item.get("category").equals("예능")) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>
<%    
    		}
    	} else if (chh != null && chh.equals("e")) {
    		if (item.get("category").equals("영화")) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>
<%    
    		}
    	} else if (chh != null && chh.equals("f")) {
    		if (item.get("category").equals("스포츠")) {
%>
	<tr class="row">
		<th class="col-4"><%= item.get("ch") %></th>
		<td class="col-4"><%= item.get("name") %></td>
		<td class="col-4"><%= item.get("category") %></td>
	</tr>	
<% 			
    		
    	} else {
    		
    	}
    }
    }
%>
</tbody>
</table>