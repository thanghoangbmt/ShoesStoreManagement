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
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private final String SUCCESS = "CreateVerificationCodeController";
    private final String ERROR = "register.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = ERROR;
		boolean result = false;
		try {
			String email = request.getParameter("txtEmail");
			String password = request.getParameter("txtPassword");
			String phoneNumber = request.getParameter("txtPhoneNumber");
			String fullname = request.getParameter("txtFullname");
			String address = request.getParameter("txtAddress");
			AccountBO bo = new AccountBO();
			
            if (bo.checkExistEmail(email)) {
            	request.setAttribute("REGISTER_ERROR", "Email has been registered!");
                return;
            }
            
            if (bo.checkExistPhone(phoneNumber)) {
            	request.setAttribute("REGISTER_ERROR", "Phone number has been registered!");
                return;
            }

            AccountDTO dto = new AccountDTO(email, password, phoneNumber, fullname, address);
            
            result = bo.registerUser(dto);
            if (result) {
                HttpSession session = request.getSession();
                session.setAttribute("REGISTER_USER", dto);
                url = SUCCESS;
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
