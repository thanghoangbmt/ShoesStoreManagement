package sample.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sample.utils.DBUtils;

public class BrandsDAO {
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

	public int getBrandsId(String shoeBranch) throws ClassNotFoundException, SQLException {

		int brandId = 0;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {

				String sqlGetBranchId1 = "select * from Brands where Name = ?";
				ps = conn.prepareStatement(sqlGetBranchId1);
				ps.setString(1, shoeBranch);
				rs = ps.executeQuery();
				if (rs.next()) {
					brandId = rs.getInt(1);
				} else {
					String sqlGetBranchId2 = "Insert into Brands(Name) values (?)";
					ps = conn.prepareStatement(sqlGetBranchId2, Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, shoeBranch);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						brandId = rs.getInt(1);
					}
				}
			}
		} finally {
			closeConnection();
		}

		return brandId;
	}

}
