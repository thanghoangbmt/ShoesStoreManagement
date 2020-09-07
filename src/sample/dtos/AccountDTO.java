package sample.dtos;

import java.sql.Blob;

public class AccountDTO {
	private String email;
	private String password;
	private String phoneNumber;
	private String fullname;
	private String addressDetails;
	private int roleID;
	private String status;
	private Blob image;
	
	public AccountDTO() {
		super();
	}

	public AccountDTO(String email, String fullname, int roleID) {
		super();
		this.email = email;
		this.fullname = fullname;
		this.roleID = roleID;
	}

	public AccountDTO(String email, String phoneNumber, String fullname, String addressDetails, int roleID,
			String status) {
		super();
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.fullname = fullname;
		this.addressDetails = addressDetails;
		this.roleID = roleID;
		this.status = status;
	}

	public AccountDTO(String email, String phoneNumber, String fullname, String addressDetails, int roleID,
			String status, Blob image) {
		super();
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.fullname = fullname;
		this.addressDetails = addressDetails;
		this.roleID = roleID;
		this.status = status;
		this.image = image;
	}

	public AccountDTO(String email, String phoneNumber, String fullname, String addressDetails, int roleID,
			Blob image) {
		super();
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.fullname = fullname;
		this.addressDetails = addressDetails;
		this.roleID = roleID;
		this.image = image;
	}

	public AccountDTO(String email, String password, String phoneNumber, String fullname, String addressDetails) {
		super();
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.fullname = fullname;
		this.addressDetails = addressDetails;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddressDetails() {
		return addressDetails;
	}

	public void setAddressDetails(String addressDetails) {
		this.addressDetails = addressDetails;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}
}
