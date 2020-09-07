package sample.daos;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.Part;

import sample.utils.DBUtils;

public class ShoeDAO {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private void closeConnection() throws SQLException {
		if (rs != null) {
			rs.close();
		}

		if (ps != null) {
			ps.close();
		}

		if (conn != null) {
			conn.close();
		}
	}

	public boolean addNewShoe(String nameShoe, String shoeBranch, String shoeDescription, double salePrice,
			double buyPrice, String color, Part image, int size, String descriptionStyle, int quantity, String gender)
			throws SQLException, ClassNotFoundException, IOException {
		boolean result = false;
		try {
			// get StyleID

			StyleDAO styleDAO = new StyleDAO();
			int styleId = styleDAO.getStyleId(descriptionStyle);
			// get BranchID

			BrandsDAO brandsDAO = new BrandsDAO();
			int brandsId = brandsDAO.getBrandsId(shoeBranch);

			// get ColorID
			ColorDAO colorDAO = new ColorDAO();
			int colorId = colorDAO.getColorId(color);
			// get sizeID
			SizeDAO sizeDAO = new SizeDAO();
			int sizeId = sizeDAO.getSizeId(size);
			// get ShoesID
			ShoeDAO shoeDAO = new ShoeDAO();
			int shoeId = shoeDAO.getShoeId(nameShoe, shoeDescription, salePrice, gender, brandsId, styleId);

			ShoeDetailsDAO shoeDetailsDAO = new ShoeDetailsDAO();
			int shoeDetailsId = shoeDetailsDAO.getShoeDetailsId(shoeId, sizeId, colorId, quantity);

			ShoeImagesDAO shoeImagesDAO = new ShoeImagesDAO();
			boolean checkInsertShoeImage = shoeImagesDAO.addShoeImages(shoeDetailsId, image);

			ImportInvoicesDAO importInvoicesDAO = new ImportInvoicesDAO();
			boolean checkInsertImportInvoice = importInvoicesDAO.addImportInvoice(buyPrice, quantity, shoeDetailsId);

			if (styleId != 0 || brandsId != 0 || colorId != 0 || sizeId != 0 || shoeId != 0 || shoeDetailsId != 0
					|| checkInsertImportInvoice == false || checkInsertShoeImage == false) {
				result = false;
			}
			else {
				result = true;
			}
		} finally {
			closeConnection();
		}
		return result;
	}

	public int getShoeId(String nameShoe, String shoeDescription, double salePrice, String gender, int brandsId,
			int styleId) throws ClassNotFoundException, SQLException {
		int shoesID = 0;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {

				String sqlGetShoesId1 = "select * from Shoes where "
						+ "Name = ? and Description = ? and SalePrice = ? and Sex = ? and BrandID = ? and StyleID = ?";
				ps = conn.prepareStatement(sqlGetShoesId1);
				ps.setNString(1, nameShoe);
				ps.setNString(2, shoeDescription);
				ps.setDouble(3, salePrice);
				ps.setString(4, gender);
				ps.setInt(5, brandsId);
				ps.setInt(6, styleId);
				rs = ps.executeQuery();
				if (rs.next()) {
					shoesID = rs.getInt(1);
				} else {
					String sqlGetShoesId2 = "Insert into Shoes(Name,Description,SalePrice,Sex,BrandID, StyleID) values (?,?,?,?,?,?)";
					ps = conn.prepareStatement(sqlGetShoesId2, Statement.RETURN_GENERATED_KEYS);
					ps.setNString(1, nameShoe);
					ps.setNString(2, shoeDescription);
					ps.setDouble(3, salePrice);
					ps.setString(4, gender);
					ps.setInt(5, brandsId);
					ps.setInt(6, styleId);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						shoesID = rs.getInt(1);
					}
				}
			}
		} finally {
			closeConnection();
		}

		return shoesID;
	}

}
