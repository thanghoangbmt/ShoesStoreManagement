package sample.dtos;

public class ImportInvoicesDTO {
	private int id;
	private int saleInvoiceId;
	private int shoeId;
	private int sizeId;
	private int colorId;
	private float salePrice;
	private int quantity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSaleInvoiceId() {
		return saleInvoiceId;
	}
	public void setSaleInvoiceId(int saleInvoiceId) {
		this.saleInvoiceId = saleInvoiceId;
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
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public float getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public ImportInvoicesDTO(int id, int saleInvoiceId, int shoeId, int sizeId, int colorId, float salePrice,
			int quantity) {
		super();
		this.id = id;
		this.saleInvoiceId = saleInvoiceId;
		this.shoeId = shoeId;
		this.sizeId = sizeId;
		this.colorId = colorId;
		this.salePrice = salePrice;
		this.quantity = quantity;
	}
	public ImportInvoicesDTO() {
		super();
	}
	
	
}
