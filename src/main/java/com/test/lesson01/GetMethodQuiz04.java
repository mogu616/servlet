package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String search = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
				"강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.print("<html><head><title>" + search + "</title></head><body>");
			Iterator<String> iter = list.iterator();
			while (iter.hasNext()) {
				String a = iter.next();
				if (a.contains(search)) {
					String boldSearch = "<b>" + search + "</b>";
					a.replace(search, boldSearch);
					out.print(a + "<br>");
				}
			}
		out.print("</body></html>");
		
	}
}

//					String[] b = a.split(" ");
//					for (int i = 0; i < b.length; i++) {
//						if (b[i].equals(search)) {
//							out.print(b[i] = ("<b>" + search + "</b>"));
//						}
//					}
//					String join = String.join(" ", b);