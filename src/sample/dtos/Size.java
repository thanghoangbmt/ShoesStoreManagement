package sample.dtos;

public class Size {
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
	public Size(int id, int size) {
		super();
		this.id = id;
		this.size = size;
	}
	public Size() {
		super();
	}
	
	
}
