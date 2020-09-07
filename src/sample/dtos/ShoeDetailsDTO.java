package sample.dtos;

import java.sql.Blob;

public class ShoeDetailsDTO extends ShoesDTO {

	private int idShoeDetails;
	private ShoeImagesDTO shoeImage;
	private SizeDTO size;
	private ColorDTO color;
	private int quantity;
	private String status;
	private Blob[] images;
	
	public int getIdShoeDetails() {
		return idShoeDetails;
	}
	public void setIdShoeDetails(int idShoeDetails) {
		this.idShoeDetails = idShoeDetails;
	}
	public ShoeImagesDTO getShoeImage() {
		return shoeImage;
	}
	public void setShoeImage(ShoeImagesDTO shoeImage) {
		this.shoeImage = shoeImage;
	}
	public SizeDTO getSize() {
		return size;
	}
	public void setSize(SizeDTO size) {
		this.size = size;
	}
	public ColorDTO getColor() {
		return color;
	}
	public void setColor(ColorDTO color) {
		this.color = color;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Blob[] getImages() {
		return images;
	}
	public void setImages(Blob[] images) {
		this.images = images;
	}

	
	
	
	
	
	
}	
