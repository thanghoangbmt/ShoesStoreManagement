package sample.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sample.utils.DBUtils;

public class ShoeDetailsDAO {
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

	public int getShoeDetailsId(int shoeId, int sizeId, int colorId, int quantity)
			throws ClassNotFoundException, SQLException {
		int shoeDetailsId = 0;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {
				// Insert table Shoe_Details
				String sqlInsertShoeDetails = "Insert into Shoe_Details (ShoeID, SizeID, ColorID, Quantity,Status) values(?,?,?,?,?)";
				ps = conn.prepareStatement(sqlInsertShoeDetails, Statement.RETURN_GENERATED_KEYS);
				ps.setInt(1, shoeId);
				ps.setInt(2, sizeId);
				ps.setInt(3, colorId);
				ps.setInt(4, quantity);
				ps.setString(5, "enable");
				ps.execute();
				rs = ps.getGeneratedKeys();
				if (rs.next()) {
					shoeDetailsId = rs.getInt(1);
				}
			}
		} finally {
			closeConnection();
		}
		return shoeDetailsId;
	}

}
