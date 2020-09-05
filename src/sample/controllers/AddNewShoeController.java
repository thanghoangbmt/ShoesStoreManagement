package sample.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import sample.bos.AddNewShoeBO;
import sample.bos.BranchBO;
import sample.bos.ShoesBO;
import sample.bos.StyleBO;
import sample.bos.StyleBo;
import sample.dtos.ShoesDTO;

/**
 * Servlet implementation class AddNewShoeController
 */
@WebServlet("/AddNewShoeController")
public class AddNewShoeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		// TODO Auto-generated method stub
		String nameShoe = request.getParameter("shoeName");
		String shoeBranch = request.getParameter("shoeBranch");
		String shoeDescription = request.getParameter("shoeDescription");
		float salePrice = Float.parseFloat(request.getParameter("salePrice"));
		float buyPrice = Float.parseFloat(request.getParameter("buyPrice"));
		String color = request.getParameter("color");
		Part image = request.getPart("image");
		int size = Integer.parseInt(request.getParameter("size"));
		String descriptionStyle = request.getParameter("descriptionStyle");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String gender = request.getParameter("inlineRadioOptions");
		
//		// get Style ID // don't done
//		StyleBO styleBO = new StyleBO();
//		int styleId = styleBO.getStyleId(descriptionStyle);
		
		// get branchID don't done
//		BranchBO branchBO = new BranchBO();
//		int branchId = branchBO.getBranchId(shoeBranch);
		
//		ShoesDTO shoesDTO = new ShoesDTO;
		
		ShoesBO addNewShoeBO = new ShoesBO();
		boolean successAddNewShoe =  addNewShoeBO.addnewShoe(nameShoe, shoeBranch,shoeDescription, salePrice,buyPrice,color, image,  size, descriptionStyle, quantity, gender);
		
	}

}
