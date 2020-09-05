package sample.dtos;

public class ShoeDetailsDTO {
	private int shoeId;
	private int sizeId;
	private String colorId;
	private int quantity;
	public ShoeDetailsDTO(int shoeId, int sizeId, String colorId, int quantity) {
		super();
		this.shoeId = shoeId;
		this.sizeId = sizeId;
		this.colorId = colorId;
		this.quantity = quantity;
	}
	public int getShoeId() {
		return shoeId;
	}
	public void setShoeId(int shoeId) {
		this.shoeId = shoeId;
	}
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public String getColorId() {
		return colorId;
	}
	public void setColorId(String colorId) {
		this.colorId = colorId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public ShoeDetailsDTO() {
		super();
	}
	
	
}	
