package db;



import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAConnection {
	private static JPAConnection instance;
	private EntityManagerFactory emf;
	
	private JPAConnection() {
		emf = Persistence.createEntityManagerFactory("CRM");
	}
	
	public static JPAConnection getInstance() {
		if(instance == null)
			instance = new JPAConnection();
		return instance;
	}
	
	public EntityManagerFactory getEmf() {
		return emf;
	}
}
