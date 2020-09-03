package sample.bos;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.naming.NamingException;

import sample.daos.AccountDAO;
import sample.dtos.AccountDTO;

public class AccountBO {
	AccountDAO dao = new AccountDAO();

	public AccountDTO checkLogin(String email, String password) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, NullPointerException {
		return dao.checkLogin(email, password);
	}

	public boolean checkExistEmail(String email) throws ClassNotFoundException, NamingException, SQLException {
		return dao.checkExistUser(email);
	}

	public boolean checkExistPhone(String phoneNumber) throws ClassNotFoundException, SQLException {
		return dao.checkExistPhone(phoneNumber);
	}

	public boolean registerUser(AccountDTO dto) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, NullPointerException {
		return dao.registerUser2(dto);
	}

	public boolean activeAccount(AccountDTO dto) throws ClassNotFoundException, SQLException {
		return dao.activeAccount(dto);
	}
}
