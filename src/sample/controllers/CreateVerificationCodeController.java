package sample.controllers;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample.dtos.AccountDTO;
import sample.utils.SendMailSSL;

/**
 * Servlet implementation class CreateVerificationCodeController
 */
@WebServlet("/CreateVerificationCodeController")
public class CreateVerificationCodeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String SUCCESS = "verification.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateVerificationCodeController() {
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
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = SUCCESS;
        try {
            HttpSession session = request.getSession();
            AccountDTO accountDTO = (AccountDTO) session.getAttribute("REGISTER_USER");
            
            Random rd = new Random();
            int randomNumber = rd.nextInt(999999);
            String verificationCode = String.format("%06d", randomNumber);
            session.setAttribute("VERIFICATIONCODE", verificationCode);
            String subject = "Verification Email";
            String messageText = "Your verification code is: " + verificationCode;
            SendMailSSL.sendMail(accountDTO.getEmail(), subject, messageText);
        } catch (Exception e) {
           	e.printStackTrace();
        } finally {
            response.sendRedirect(url);
        }
    }

}
