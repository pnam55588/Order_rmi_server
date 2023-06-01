package dao;

import java.util.List;

import db.JPAConnection;
import entity.MyOrder;
import entity.OrderDetail;
import entity.Product;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;

public class Dao {
	private EntityManagerFactory emf;
	public Dao() {
		emf = JPAConnection.getInstance().getEmf();
	}
	
	public boolean create(OrderDetail od) {
		if(od.getQuantity() <=0)
			return false;
		EntityManagerFactory emf = JPAConnection.getInstance().getEmf();
		EntityManager em = emf.createEntityManager();
		EntityTransaction tr = em.getTransaction();
		tr.begin();
		try {
			em.persist(od);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return false;
	}
	public boolean update(OrderDetail od) {
		if(od.getQuantity() <=0)
			return false;
		EntityManagerFactory emf = JPAConnection.getInstance().getEmf();
		EntityManager em = emf.createEntityManager();
		EntityTransaction tr = em.getTransaction();
		tr.begin();
		try {
			em.merge(od);
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return false;
	}
	public boolean delete(long odID, long proID) {
		EntityManagerFactory emf = JPAConnection.getInstance().getEmf();
		EntityManager em = emf.createEntityManager();
		EntityTransaction tr = em.getTransaction();
		tr.begin();
		try {
			Query q = em.createNativeQuery("DELETE FROM OrderDetail WHERE orderID = "+odID+" and productID ="+ proID);
			q.executeUpdate();
			tr.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return false;
	}
	public OrderDetail findByID(long odID, long proID) {
		EntityManagerFactory emf = JPAConnection.getInstance().getEmf();
		EntityManager em = emf.createEntityManager();
		EntityTransaction tr = em.getTransaction();
		OrderDetail od = new OrderDetail();
		tr.begin();
		try {
			List<Object[]> list = em.createNativeQuery("select * from OrderDetail where orderID = "+odID+" and productID = "+ proID, Object[].class).getResultList();
			if(list.size() >0) {
				Object[] o = list.get(0);
				od.setQuantity((Integer) o[0]);
				od.setOrder(new MyOrder((Integer) o[1]));
				od.setProduct(new Product((String) o[2]));
			}
			tr.commit();
			return od;
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}
		return od;
	}
}
