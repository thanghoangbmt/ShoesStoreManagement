package sample.dtos;

public class SizeDTO {
	private int id;
	private int size;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public SizeDTO(int id, int size) {
		super();
		this.id = id;
		this.size = size;
	}
	public SizeDTO() {
		super();
	}
	
	
}
