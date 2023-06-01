package entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class OrderDetail implements Serializable{
	private int quantity;
	@Id
	@ManyToOne
	@JoinColumn(name = "orderID")
	private MyOrder order;
	@Id
	@ManyToOne
	@JoinColumn(name = "productID")
	private Product product;
	
	
	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public MyOrder getOrder() {
		return order;
	}


	public void setOrder(MyOrder order) {
		this.order = order;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	public OrderDetail() {
		// TODO Auto-generated constructor stub
	}


	public OrderDetail(int quantity, MyOrder order, Product product) {
		super();
		this.quantity = quantity;
		this.order = order;
		this.product = product;
	}


	@Override
	public String toString() {
		return "OrderDetail [quantity=" + quantity + ", order=" + order + ", product=" + product + "]";
	}
	
}
