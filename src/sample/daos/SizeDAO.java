package sample.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sample.utils.DBUtils;

public class SizeDAO {
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
	public int getSizeId(int size) throws ClassNotFoundException, SQLException {
		int sizeId = 0;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {
				
				String sqlGetSizeId1 = "select * from Size where Size = ?";
				ps = conn.prepareStatement(sqlGetSizeId1);
				ps.setInt(1, size);
				rs = ps.executeQuery();
				if (rs.next()) {
					sizeId = rs.getInt(1);
				} else {
					String sqlGetSizeId2 = "Insert into Size(Size) values (?)";
					ps = conn.prepareStatement(sqlGetSizeId2, Statement.RETURN_GENERATED_KEYS);
					ps.setInt(1, size);
					ps.execute();
					rs = ps.getGeneratedKeys();
					if (rs.next()) {
						sizeId = rs.getInt(1);
					}
				}
			}
		} finally {
			closeConnection();
		}
		return sizeId;
	}
	}

