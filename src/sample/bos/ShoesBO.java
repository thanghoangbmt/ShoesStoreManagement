package sample.bos;

import javax.servlet.http.Part;

import sample.daos.ShoeDAO;

public class ShoesBO {
	ShoeDAO shoeDAO = new ShoeDAO();
	public boolean addnewShoe(String nameShoe, String shoeBranch, String shoeDescription, float salePrice,
			float buyPrice, String color, Part image, int size, String descriptionStyle, int quantity,
			String gender) {
		return shoeDAO.addNewShoe(nameShoe,shoeBranch,shoeDescription,salePrice,buyPrice,color,image,size,descriptionStyle,quantity,gender);
	}

}
