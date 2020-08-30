package sample.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.restfb.types.User;

import sample.daos.AccountDAO;
import sample.dtos.AccountDTO;
import sample.socialaccess.GooglePojo;
import sample.socialaccess.GoogleUtils;
import sample.socialaccess.RestFB;

/**
 * Servlet implementation class FacebookLoginController
 */
@WebServlet("/FacebookLoginController")
public class FacebookLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final String ADMIN = "index.jsp";
	private final String STAFF = "index.jsp";
	private final String CUSTOMER = "index.jsp";
	private final String ERROR = "login.jsp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FacebookLoginController() {
		super();
		// TODO Auto-generated constructor stub
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

//		String accessToken = RestFB.getToken(code);
//		User user = RestFB.getUserInfo(accessToken);
//		String test = user.getEmail();
//		System.out.println(test);
//		request.setAttribute("id", user.getId());
//		request.setAttribute("name", user.getName());
//		RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
//		dis.forward(request, response);

		String url = ERROR;
		boolean result = false;
		try {
			String code = request.getParameter("code");
			if (code == null || code.isEmpty()) {
				return;
			} else {
				String accessToken = RestFB.getToken(code);
				User user = RestFB.getUserInfo(accessToken);
				
				String name = user.getName();
				String email = user.getId();
				AccountDAO accountDAO = new AccountDAO();
				boolean existUser = accountDAO.checkExistUser(email);

				AccountDTO dto = null;
				if (existUser) {
					dto = accountDAO.googleLogin(email);
				} else {
					dto = new AccountDTO(email, name, 3);
					result = accountDAO.registerUser(dto);
				}

				if (dto != null) {
					if (dto.getRoleID() == 1) {
						url = ADMIN;
					} else if (dto.getRoleID() == 2) {
						url = STAFF;
					} else if (dto.getRoleID() == 3) {
						url = CUSTOMER;
					}
					HttpSession session = request.getSession();
					session.setAttribute("USER", dto);
					result = true;
				}
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
