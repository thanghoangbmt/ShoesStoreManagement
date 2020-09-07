package sample.dtos;

public class ShoesDTO {
	private int idShoe;
	private String name;
	private String description;
	private float salePrice;
	private String sex;
	private BrandsDTO brands;
	private StyleDTO style;
	public int getIdShoe() {
		return idShoe;
	}
	public void setIdShoe(int idShoe) {
		this.idShoe = idShoe;
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
	public BrandsDTO getBrands() {
		return brands;
	}
	public void setBrands(BrandsDTO brands) {
		this.brands = brands;
	}
	public StyleDTO getStyle() {
		return style;
	}
	public void setStyle(StyleDTO style) {
		this.style = style;
	}

	
	
	
	
	
	
	
	
	
	
}
