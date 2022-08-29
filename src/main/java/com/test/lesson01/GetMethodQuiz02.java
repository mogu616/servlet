package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		PrintWriter out = response.getWriter();
		
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));
		
		int a = number1 + number2;
		int b = number1 - number2;
		int c = number1 * number2;
		int d = number1 / number2;
		out.print("{\"addtion\": " + a + ", \"subtraction\": " + b + ", \"multiplication\""
				+ ": " + c + ", \"division\": " + d + "}");
		
		
	}

}
