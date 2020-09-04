package sample.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample.bos.AccountBO;
import sample.dtos.AccountDTO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String CUSTOMER = "home.jsp";
	private final String ADMIN = "home.jsp";
	private final String STAFF = "home.jsp";
	private final String VERIFICATION = "CreateVerificationCodeController";
	
	private final String ERROR = "login.jsp";

	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = ERROR;
		boolean result = false;
		try {
			String email = request.getParameter("txtEmail");
			String password = request.getParameter("txtPassword");
			AccountBO bo = new AccountBO();
			AccountDTO dto = bo.checkLogin(email, password);
			if (dto != null) {
				HttpSession session = request.getSession();
                if (dto.getStatus().equals("New")) {
                    dto.setPassword(password);
                    session.setAttribute("REGISTER_USER", dto);
                    url = VERIFICATION;
                } else if (dto.getStatus().equals("Active")) {
                	if (dto.getRoleID() == 1) {
    					url = ADMIN;
    				} else if (dto.getRoleID() == 2) {
    					url = STAFF;
    				} else if (dto.getRoleID() == 3) {
    					url = CUSTOMER;
    				}
                    session.setAttribute("USER", dto);
                }
				
				result = true;
			} else {
				request.setAttribute("LOGINERROR", "Incorrect Email or Password!");
				result = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (result) {
				response.sendRedirect(url);
			} else {
				request.getRequestDispatcher(url).forward(request, response);
			}
		}
	}

}
