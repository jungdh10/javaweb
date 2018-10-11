package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class DoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getRequestURI -> /0903javaweb/login.do
		//getContextPath -> /0903javaweb
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = 
			requestURI.substring(contextPath.length()+1);
		switch(command) {
		case "login.do":
			System.out.println("로그인 요청 처리");
			break;
		case "register.do":
			System.out.println("회원가입 요청 처리");
			break;
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}




