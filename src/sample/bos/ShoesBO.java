package sample.bos;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.Part;

import sample.daos.ShoeDAO;

public class ShoesBO {
	ShoeDAO shoeDAO = new ShoeDAO();
	public boolean addnewShoe(String nameShoe, String shoeBranch, String shoeDescription, double salePrice,
			double buyPrice, String color, Part image, int size, String descriptionStyle, int quantity,
			String gender) throws ClassNotFoundException, SQLException, IOException {
		return shoeDAO.addNewShoe(nameShoe,shoeBranch,shoeDescription,salePrice,buyPrice,color,image,size,descriptionStyle,quantity,gender);
	}

}
