package entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Product implements Serializable{
	@Id
	private String productID;
	private String description;
	private double price;
	
	public String getProductID() {
		return productID;
	}

	public void setProductID(String productID) {
		this.productID = productID;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(String productID, String description, double price) {
		super();
		this.productID = productID;
		this.description = description;
		this.price = price;
	}

	public Product(String productID) {
		super();
		this.productID = productID;
	}

	@Override
	public String toString() {
		return "Product [productID=" + productID + ", description=" + description + ", price=" + price + "]";
	}
	
}
