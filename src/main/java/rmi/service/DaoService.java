package rmi.service;

import java.rmi.Remote;
import java.rmi.RemoteException;

import entity.OrderDetail;

public interface DaoService extends Remote{
	public boolean create(OrderDetail od) throws RemoteException;
	public boolean update(OrderDetail od)  throws RemoteException;
	public boolean delete(long odID, long proID)  throws RemoteException;
	public OrderDetail findByID(long odID, long proID)  throws RemoteException;
}
