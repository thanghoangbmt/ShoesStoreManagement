package sample.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample.daos.AccountDAO;
import sample.dtos.AccountDTO;
import sample.socialaccess.GooglePojo;
import sample.socialaccess.GoogleUtils;

/**
 * Servlet implementation class GoogleLoginController
 */
@WebServlet("/GoogleLoginController")
public class GoogleLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String ADMIN = "home.jsp";
    private final String STAFF = "home.jsp";
    private final String CUSTOMER = "home.jsp";
    private final String ERROR = "login.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoogleLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        boolean result = false;
        try {
            String code = request.getParameter("code");
            if (code == null || code.isEmpty()) {
                return;
            } else {
                String accessToken = GoogleUtils.getToken(code);
                GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
                String name = googlePojo.getName();
                String email = googlePojo.getEmail();
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
