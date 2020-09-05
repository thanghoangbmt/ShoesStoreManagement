package sample.dtos;

import java.sql.Blob;

public class ShoesDTO {
	private int id;
	private String name;
	private String description;
	private float salePrice;
	private String sex;
	private String status;
	private int branchId;
	private int styleId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	public int getStyleId() {
		return styleId;
	}
	public void setStyleId(int styleId) {
		this.styleId = styleId;
	}
	public ShoesDTO(int id, String name, String description, float salePrice, String sex, String status, int branchId,
			int styleId) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.salePrice = salePrice;
		this.sex = sex;
		this.status = status;
		this.branchId = branchId;
		this.styleId = styleId;
	}
	public ShoesDTO(String name, String description, float salePrice, String sex, String status, int branchId,
			int styleId) {
		super();
		this.name = name;
		this.description = description;
		this.salePrice = salePrice;
		this.sex = sex;
		this.status = status;
		this.branchId = branchId;
		this.styleId = styleId;
	}
	
	
	
	
	
	
	
	
	
	
}
