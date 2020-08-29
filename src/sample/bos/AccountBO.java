package sample.bos;

import java.sql.SQLException;

import sample.daos.AccountDAO;
import sample.dtos.AccountDTO;

public class AccountBO {
	AccountDAO dao = new AccountDAO();

	public AccountDTO checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
		return dao.checkLogin(email, password);
	}
}
