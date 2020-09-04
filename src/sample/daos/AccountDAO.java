package sample.daos;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import sample.dtos.AccountDTO;
import sample.utils.DBUtils;
import sample.utils.Utils;

public class AccountDAO {
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

	public AccountDTO checkLogin(String email, String password) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, NullPointerException {
		AccountDTO result = null;
		try {
			conn = DBUtils.getConnection();
			if (conn != null) {
				String sql = "SELECT a.Fullname, r.Description AS RoleDescription, a.Status AS Status " 
						+ "FROM Accounts a, Account_Roles r "
						+ "WHERE Email = ? AND Password = ? AND a.RoleID = r.ID";
				ps = conn.prepareStatement(sql);
				ps.setString(1, email);
				String encryptedPassword = Utils.encriptPasswordBySHA256(password);
				ps.setString(2, encryptedPassword);
				rs = ps.executeQuery();
				if (rs.next()) {
					String fullname = rs.getString("Fullname");
					String role = rs.getString("RoleDescription");
					String status = rs.getString("Status");
					result = new AccountDTO();
					result.setEmail(email);
					result.setFullname(fullname);
					result.setStatus(status);
					int roleID = 0;
					if (role.equals("Admin")) {
						roleID = 1;
					} else if (role.equals("Staff")) {
						roleID = 2;
					} else if (role.equals("Customer")) {
						roleID = 3;
					}
					result.setRoleID(roleID);
				}
			}
		} finally {
			closeConnection();
		}
		return result;
	}

	public boolean checkExistUser(String email) throws NamingException, SQLException, ClassNotFoundException {
        boolean result = false;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT RoleID FROM Accounts WHERE Email = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, email);
                rs = ps.executeQuery();
                if (rs.next()) {
                    result = true;
                }
            }
        } finally {
            closeConnection();
        }
        return result;
    }

	public AccountDTO googleLogin(String email) throws SQLException, ClassNotFoundException {
        AccountDTO result = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT a.Fullname, r.Description as RoleDescription "
                        + "FROM Accounts a, Account_Roles r "
                        + "WHERE Email = ? "
                        + "AND a.RoleID = r.ID AND Status = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, email);
                ps.setString(2, "Active");
                rs = ps.executeQuery();
                if (rs.next()) {
                    String fullname = rs.getString("fullname");
                    String role = rs.getString("RoleDescription");
                    result = new AccountDTO();
                    result.setEmail(email);
					result.setFullname(fullname);
					int roleID = 0;
					if (role.equals("Admin")) {
						roleID = 1;
					} else if (role.equals("Staff")) {
						roleID = 2;
					} else if (role.equals("Customer")) {
						roleID = 3;
					}
					result.setRoleID(roleID);
                }
            }
        } finally {
            closeConnection();
        }

        return result;
    }

	public boolean registerUser(AccountDTO dto) throws ClassNotFoundException, SQLException {
		boolean result = false;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO Accounts(Email, Fullname, RoleID, Status) "
                		+ "VALUES(?,?,?,?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, dto.getEmail());
                ps.setString(2, dto.getFullname());
                ps.setInt(3, 3);
                ps.setString(4, "Active");
                result = (ps.executeUpdate() > 0);
            }
        } finally {
            closeConnection();
        }
        return result;
	}
	
	public boolean registerUser2(AccountDTO dto) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, NullPointerException {
		boolean result = false;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO Accounts(Email, Password, PhoneNumber, Fullname, "
                		+ "AddressDetails, RoleID, Status) "
                		+ "VALUES(?,?,?,?,?,?,?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, dto.getEmail());
                String encryptedPassword = Utils.encriptPasswordBySHA256(dto.getPassword());
                ps.setString(2, encryptedPassword);
                ps.setString(3, dto.getPhoneNumber());
                ps.setString(4, dto.getFullname());
                ps.setString(5, dto.getAddressDetails());
                ps.setInt(6, 3);
                ps.setString(7, "New");
                result = (ps.executeUpdate() > 0);
            }
        } finally {
            closeConnection();
        }
        return result;
	}

	public boolean checkExistPhone(String phoneNumber) throws ClassNotFoundException, SQLException {
		boolean result = false;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT RoleID FROM Accounts WHERE PhoneNumber = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, phoneNumber);
                rs = ps.executeQuery();
                if (rs.next()) {
                    result = true;
                }
            }
        } finally {
            closeConnection();
        }
        return result;
	}

	public boolean activeAccount(AccountDTO dto) throws ClassNotFoundException, SQLException {
		boolean result = false;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPDATE Accounts SET Status = ? "
                        + "WHERE Email = ?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, "Active");
                ps.setString(2, dto.getEmail());
                result = (ps.executeUpdate() > 0);
            }
        } finally {
            closeConnection();
        }
        return result;
	}
}
