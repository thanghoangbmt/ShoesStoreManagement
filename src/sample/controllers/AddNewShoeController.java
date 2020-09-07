package sample.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



import sample.bos.ShoesBO;

/**
 * Servlet implementation class AddNewShoeController
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
@WebServlet("/AddNewShoeController")
public class AddNewShoeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String SUCCESS = "addNewShoe.jsp";
	private final String ERROR = "addNewShoe.jsp";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNewShoeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// TODO Auto-generated method stub
		String nameShoe = request.getParameter("shoeName");
		String shoeBranch = request.getParameter("shoeBranch");
		String shoeDescription = request.getParameter("shoeDescription");
		double salePrice = Double.parseDouble(request.getParameter("salePrice1"));
		double buyPrice = Double.parseDouble(request.getParameter("buyPrice"));
		String color = request.getParameter("color");
		Part image = request.getPart("image");
		int size = Integer.parseInt(request.getParameter("size"));
		String descriptionStyle = request.getParameter("descriptionStyle");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String gender = request.getParameter("inlineRadioOptions");
		
		
		
		String url = ERROR;
		ShoesBO addNewShoeBO = new ShoesBO();
		try {
			boolean successAddNewShoe =  addNewShoeBO.addnewShoe(nameShoe, shoeBranch,shoeDescription, salePrice,buyPrice,color, image,  size, descriptionStyle, quantity, gender);
			if(successAddNewShoe == true) {
				request.setAttribute("AddSuccess", "Add new shoe FINISHED");
				url = SUCCESS;
			}
			else {
				request.setAttribute("AddSuccess", "Add new shoe ERROR");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			request.getRequestDispatcher(url).forward(request, response);
		}
		
	}

}
