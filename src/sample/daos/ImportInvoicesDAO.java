package sample.daos;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sample.utils.DBUtils;



public class ImportInvoicesDAO {
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
	public boolean addImportInvoice(double buyPrice, int quantity, int shoeDetailsId) throws ClassNotFoundException, SQLException {
		boolean result = false;
		conn = DBUtils.getConnection();
		
		//get time now
		long millis=System.currentTimeMillis();  
		java.sql.Date date=new java.sql.Date(millis);  
		
		
		if(conn!= null) {
			String sql = "Insert into Import_Invoices(BuyPrice,Quantity,DateOfPurchase,Shoe_DetailsID) values(?,?,?,?)";
			ps= conn.prepareStatement(sql);
			ps.setDouble(1, buyPrice);
			ps.setInt(2, quantity);
			ps.setDate(3, date);
			ps.setInt(4, shoeDetailsId);
			result = (ps.executeUpdate() > 0);
		}
		return result;
	}

}
