package sample.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sample.utils.DBUtils;

public class ColorDAO {
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

	public int getColorId(String color) throws ClassNotFoundException, SQLException {
		int colorID = 0;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {

				String sqlGetColorId1 = "select * from Colors where Color = ?";
				ps = conn.prepareStatement(sqlGetColorId1);
				ps.setString(1, color);
				rs = ps.executeQuery();
				if (rs.next()) {
					colorID = rs.getInt(1);
				} else {
					String sqlGetColorId2 = "Insert into Colors(Color) values (?)";
					ps = conn.prepareStatement(sqlGetColorId2, Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, color);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						colorID = rs.getInt(1);
					}
				}
			}
		} finally {
			closeConnection();
		}

		return colorID;
	}

}
