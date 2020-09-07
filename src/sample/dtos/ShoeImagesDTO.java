package sample.dtos;

import java.sql.Blob;

public class ShoeImagesDTO {
	private int id;
	private int shoeId;
	private Blob image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getShoeId() {
		return shoeId;
	}
	public void setShoeId(int shoeId) {
		this.shoeId = shoeId;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public ShoeImagesDTO(int id, int shoeId, Blob image) {
		super();
		this.id = id;
		this.shoeId = shoeId;
		this.image = image;
	}
	public ShoeImagesDTO() {
		super();
	}
	
	
}
