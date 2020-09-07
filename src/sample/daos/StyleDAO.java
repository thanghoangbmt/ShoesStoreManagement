package sample.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sample.utils.DBUtils;

public class StyleDAO {
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

	public int getStyleId(String descriptionStyle) throws ClassNotFoundException, SQLException {
		
		int styleID = 0;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {
				String sqlGetStyleId1 = "select * from Style where Description = ?";
				ps = conn.prepareStatement(sqlGetStyleId1);
				ps.setString(1, descriptionStyle);
				rs = ps.executeQuery();
				if (rs.next()) {
					styleID = rs.getInt(1);
				} else {
					String sqlGetStyleId2 = "Insert into Style(Description) values (?)";
					ps = conn.prepareStatement(sqlGetStyleId2, Statement.RETURN_GENERATED_KEYS);
					ps.setString(1, descriptionStyle);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						styleID = rs.getInt(1);
					}
				}
			}
		} finally {
			closeConnection();
		}

		return styleID;
	}

}
