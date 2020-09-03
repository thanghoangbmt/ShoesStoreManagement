package sample.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
private final String LOGIN_CONTROLLER = "LoginController";
private final String REGISTER_CONTROLLER = "RegisterController";
private final String VERIFICATION = "VerificationController";
	
	private final String ERROR = "login.jsp";
	
	public MainController() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = ERROR;
		try {
			String action = request.getParameter("action");
			if (action.equals("Sign In")) {
				url = LOGIN_CONTROLLER;
			} else if (action.equals("Sign Up")) {
				url = REGISTER_CONTROLLER;
			} else if (action.equals("Verify")) {
				url = VERIFICATION;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			request.getRequestDispatcher(url).forward(request, response);
		}
	}

}
