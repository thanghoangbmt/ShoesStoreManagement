package sample.dtos;

public class ColorDTO {
	private int id;
	private String color;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public ColorDTO(int id, String color) {
		super();
		this.id = id;
		this.color = color;
	}
	public ColorDTO() {
		super();
	}
	
	
}
