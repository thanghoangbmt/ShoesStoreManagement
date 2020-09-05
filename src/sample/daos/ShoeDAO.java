package sample.daos;

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

	public boolean addNewShoe(String nameShoe, String shoeBranch, String shoeDescription, float salePrice,
			float buyPrice, String color, Part image, int size, String descriptionStyle, int quantity, String gender)
			throws SQLException, ClassNotFoundException {
		boolean result = false;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {
				// get StyleID
				int styleID = 0;
				String sqlGetStyleId1 = "select * from Style where Description = ?";
				ps = conn.prepareStatement(sqlGetStyleId1);
				ps.setString(1, descriptionStyle);
				rs = ps.executeQuery();
				if (rs.next()) {
					styleID = rs.getInt("ID");
				} else {
					String sqlGetStyleId2 = "Insert into Style(Description) values (?)";
					ps = conn.prepareStatement(sqlGetStyleId2, Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, descriptionStyle);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						styleID = rs.getInt("ID");
					}
				}

				// get BranchID
				int brandId = 0;
				String sqlGetBranchId1 = "select * from Brands where Name = ?";
				ps = conn.prepareStatement(sqlGetBranchId1);
				ps.setString(1, shoeBranch);
				rs = ps.executeQuery();
				if (rs.next()) {
					brandId = rs.getInt("ID");
				} else {
					String sqlGetBranchId2 = "Insert into Brands(Name) values (?)";
					ps = conn.prepareStatement(sqlGetBranchId2, Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, shoeBranch);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						brandId = rs.getInt("ID");
					}
				}

				// get ColorID
				int colorID = 0;
				String sqlGetColorId1 = "select * from Colors where Color = ?";
				ps = conn.prepareStatement(sqlGetColorId1);
				ps.setString(1, color);
				rs = ps.executeQuery();
				if (rs.next()) {
					colorID = rs.getInt("ID");
				} else {
					String sqlGetColorId2 = "Insert into Colors(Color) values (?)";
					ps = conn.prepareStatement(sqlGetColorId2, Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, color);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						colorID = rs.getInt("ID");
					}
				}

				// get sizeID
				int sizeId = 0;
				String sqlGetSizeId1 = "select * from Size where Size = ?";
				ps = conn.prepareStatement(sqlGetSizeId1);
				ps.setInt(1, size);
				rs = ps.executeQuery();
				if (rs.next()) {
					sizeId = rs.getInt("ID");
				} else {
					String sqlGetSizeId2 = "Insert into Size(Size) values (?)";
					ps = conn.prepareStatement(sqlGetSizeId2, Statement.RETURN_GENERATED_KEYS);
					ps.setInt(1, size);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						sizeId = rs.getInt("ID");
					}
				}

				// get ShoesID
				int shoesID = 0;
				String sqlGetShoesId1 = "select * from Shoes where "
						+ "Name = ?, Description = ?, SalePrice = ?, Sex = ?, " + "Status = ?,BrandID = ?, StyleID = ?";
				ps = conn.prepareStatement(sqlGetShoesId1);
				ps.setNString(1, nameShoe);
				ps.setNString(2, shoeDescription);
				ps.setFloat(3, salePrice);
				ps.setString(4, gender);
				ps.setString(5, "Enable");
				ps.setInt(6, brandId);
				ps.setInt(7, styleID);
				rs = ps.executeQuery();
				if (rs.next()) {
					shoesID = rs.getInt("ID");
				} else {
					String sqlGetShoesId2 = "Insert into Shoes(Name,Description,SalePrice,Sex,Status,BranchID, StyleID) values (?,?,?,?,?,?,?)";
					ps = conn.prepareStatement(sqlGetShoesId2, Statement.RETURN_GENERATED_KEYS);
					ps.setNString(1, nameShoe);
					ps.setNString(2, shoeDescription);
					ps.setFloat(3, salePrice);
					ps.setString(4, gender);
					ps.setString(5, "Enable");
					ps.setInt(6, brandId);
					ps.setInt(7, styleID);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						shoesID = rs.getInt("ID");
					}
				}

				// Insert table Shoe_Details
				String sqlInsertShoeDetails = "Insert into Shoe_Details (ShoeID, SizeID, ColorID, Quantity) values(?,?,?,?)";
				ps = conn.prepareStatement(sqlInsertShoeDetails);
				ps.setInt(1, shoesID);
				ps.setInt(2, sizeId);
				ps.setInt(3, colorID);
				ps.setInt(4, quantity);
				result = (ps.executeUpdate() > 0);
				
				//Insert table Import_Invoices
				//String sqlImportInvoices = "Insert into Import_Invoices (ShoeID,BuyPrice,Quantity,DateOfPur)"; 
				
				
			}
		} finally {
			closeConnection();
		}
		return result;
	}

}
