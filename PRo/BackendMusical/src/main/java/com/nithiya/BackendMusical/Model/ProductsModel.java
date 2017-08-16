package com.nithiya.BackendMusical.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Products", uniqueConstraints = { @UniqueConstraint(columnNames = "prodId") })
public class ProductsModel {

	@Id
	@NotNull(message="Please fill all Data")
	@Column(name = "prodId")
	private String prodId;
	
	@NotNull(message="Please fill all Data")
    @Column(name = "prodName")
	private String prodName;
	@NotNull(message="Please fill all Data")
    @Column(name = "prodDescription")
	private String prodDescription;
	@NotNull(message="Please fill all Data")
    @Column(name = "prodCategory")
	private CategoryModel prodCategory;
	@NotNull(message="Please fill all Data")
    @Column(name = "prodSupplier")
	private SupplierModel prodSupplier;
	@NotNull(message="Please fill all Data")
    @Column(name = "prodPrice")
	private int prodPrice;
	@NotNull(message="Please fill all Data")
    @Column(name = "prodQty")

	private String prodQty;
	@NotNull(message="Please fill all Data")
    @Column(name = "proImage")
	private String proImage;
	
	public String getProdId() {
		return prodId;
	}
	public void setProdId(String prodId) {
		this.prodId = prodId;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdDescription() {
		return prodDescription;
	}
	public void setProdDescription(String prodDescription) {
		this.prodDescription = prodDescription;
	}
	public CategoryModel getProdCategory() {
		return prodCategory;
	}
	public void setProdCategory(CategoryModel prodCategory) {
		this.prodCategory = prodCategory;
	}
	public SupplierModel getProdSupplier() {
		return prodSupplier;
	}
	public void setProdSupplier(SupplierModel prodSupplier) {
		this.prodSupplier = prodSupplier;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getProdQty() {
		return prodQty;
	}
	public void setProdQty(String prodQty) {
		this.prodQty = prodQty;
	}
	public String getProImage() {
		return proImage;
	}
	public void setProImage(String proImage) {
		this.proImage = proImage;
	}
	
	
	public ProductsModel(String prodId, String prodName, String prodDescription, CategoryModel prodCategory,
			SupplierModel prodSupplier, int prodPrice, String prodQty, String proImage) {
		super();
		this.prodId = prodId;
		this.prodName = prodName;
		this.prodDescription = prodDescription;
		this.prodCategory = prodCategory;
		this.prodSupplier = prodSupplier;
		this.prodPrice = prodPrice;
		this.prodQty = prodQty;
		this.proImage = proImage;
	}
	public ProductsModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ProductsModel [prodId=" + prodId + ", prodName=" + prodName + ", prodDescription=" + prodDescription
				+ ", prodCategory=" + prodCategory + ", prodSupplier=" + prodSupplier + ", prodPrice=" + prodPrice
				+ ", prodQty=" + prodQty + ", proImage=" + proImage + "]";
	}
	
	

}
