package entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class MyOrder implements Serializable{
	@Id
	private int orderID;
	private Date orderDate;
	@OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
	private List<OrderDetail> orderDetails;

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public MyOrder() {
		// TODO Auto-generated constructor stub
	}

	public MyOrder(int orderID, Date orderDate, List<OrderDetail> orderDetails) {
		super();
		this.orderID = orderID;
		this.orderDate = orderDate;
		this.orderDetails = orderDetails;
	}

	public MyOrder(int orderID) {
		super();
		this.orderID = orderID;
	}

	@Override
	public String toString() {
		return "MyOrder [orderID=" + orderID + ", orderDate=" + orderDate + ", orderDetails=" + orderDetails + "]";
	}
	
	
}
