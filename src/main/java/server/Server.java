package server;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import rmi.service.DaoService;
import rmi.service.impl.DaoServiceImpl;

public class Server {
	public static void main(String[] args) throws NamingException, RemoteException {
		Context context = new InitialContext();
		LocateRegistry.createRegistry(7878);
		DaoService daoService = new DaoServiceImpl();
		context.bind("rmi://localhost:7878/daoService", daoService);
		System.out.println("ready");
	}
}
