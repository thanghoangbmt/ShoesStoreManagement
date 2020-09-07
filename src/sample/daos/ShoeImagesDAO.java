package sample.daos;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.Part;

import sample.utils.DBUtils;

public class ShoeImagesDAO {
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

	public boolean addShoeImages(int shoeDetailsId, Part image) throws IOException, ClassNotFoundException, SQLException
			{
		boolean result = false;

		InputStream inputStream = null;
		if (image != null) {
			long fileSize = image.getSize();
			String fileContent = image.getContentType();
			inputStream = image.getInputStream();
		}

		conn = DBUtils.getConnection();
		try {
			PreparedStatement pst = conn
					.prepareStatement("INSERT into Shoe_Images (Shoe_DetailsID, Image) values (?,?)");
			pst.setInt(1, shoeDetailsId);
			pst.setBlob(2, inputStream);
			result = (pst.executeUpdate() > 0);
		} finally {
			closeConnection();
		}
		return result;
	}

}
