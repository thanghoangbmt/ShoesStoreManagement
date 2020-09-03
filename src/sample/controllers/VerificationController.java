package sample.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample.bos.AccountBO;
import sample.daos.AccountDAO;
import sample.dtos.AccountDTO;

/**
 * Servlet implementation class VerificationController
 */
@WebServlet("/VerificationController")
public class VerificationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String SUCCESS = "LoginController";
    private final String ERROR = "verification.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerificationController() {
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
        String url = ERROR;
        try {
            String userVerificationCode = request.getParameter("txtVerificationCode");
            HttpSession session = request.getSession();
            String verificationCode = (String) session.getAttribute("VERIFICATIONCODE");
            if (userVerificationCode.equals(verificationCode)) {
                AccountDTO dto = (AccountDTO) session.getAttribute("REGISTER_USER");
                AccountBO bo = new AccountBO();
                bo.activeAccount(dto);
                url = SUCCESS + "?txtEmail=" + dto.getEmail() + "&txtPassword=" + dto.getPassword();
            } else {
                request.setAttribute("VERIFICATION_ERROR", "Incorrect verification code!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

}
