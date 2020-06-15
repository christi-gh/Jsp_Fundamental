package kr.or.kpc.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//http://localhost/hello 로 호출하겠다는 명령어
//http://localhost:8080/hello.kpc?id=syh1011&pwd=1234 로 만들어보기 
@WebServlet("/hello.kpc")
public class HelloServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
	throws IOException {
		//서블릿이 반드시 html만 서비스 하는 것이 아님 application/jpg(이미지), excel 도 가능
		response.setContentType("text/html;charset=utf-8");  
		PrintWriter out = response.getWriter();
		out.println("<html>									");
		out.println("	<head>								");
		out.println("	<title>Hello Servlet</title>		");
		out.println("	</head>								");
		out.println("	<body>								");
		out.println("		<h1>Hello Servlet</h1>			");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		out.println("<h1>									");
		out.println("id : "+id +", pwd : "+pwd);
		out.println("</h1>									");
		out.println("	</body>								");
		out.println("</html>								");
	}
}
