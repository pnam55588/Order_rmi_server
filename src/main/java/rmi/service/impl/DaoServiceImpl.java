package rmi.service.impl;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import dao.Dao;
import entity.OrderDetail;
import rmi.service.DaoService;

public class DaoServiceImpl extends UnicastRemoteObject implements DaoService{
	
	private Dao dao;
	
	public DaoServiceImpl() throws RemoteException {
		dao = new Dao();
	}

	public boolean create(OrderDetail od) throws RemoteException {
		if(od.getQuantity()<=0)
			return false;
		return dao.create(od);
	}

	public boolean update(OrderDetail od) throws RemoteException {
		if(od.getQuantity()<=0)
			return false;
		return dao.update(od);
	}

	public boolean delete(long odID, long proID) throws RemoteException {
		return dao.delete(odID, proID);
	}

	public OrderDetail findByID(long odID, long proID) throws RemoteException {
		return dao.findByID(odID, proID);
	}
	
}
