package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class InsertQuiz03 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String picture = request.getParameter("picture");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery1 = "insert into `used_goods` (`title`, `price`, `picture`)"
				+ "value ('" + title + "', '" + price + "', '" + picture + "')";
		String insertQuery2 = "insert into `seller` (`nickname`)"
				+ "value ('" + nickname + "')";
		try {
			ms.update(insertQuery1);
			ms.update(insertQuery2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		ms.disconnect();
		
		response.sendRedirect("/lesson04/quiz03/template.jsp");
	}
}
