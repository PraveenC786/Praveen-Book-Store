package com.jsp.bookStore.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.bookStore.DTO.Order;

@Repository
public class OrderDAO {

	@Autowired
	EntityManager manager;
	
	@Autowired
	EntityTransaction transaction;
	
	// to place order
	public void placeOrder(Order order) {
		transaction.begin();
		manager.persist(order);
		transaction.commit();
	}
	
	// to cancel the order
	public void cancelOrder(int orderid) {
		Order order = manager.find(Order.class, orderid);
		if(order != null && order.getStatus().equals("PLACED")) {
			order.setStatus("CANCELLED");
			transaction.begin();
			manager.merge(order);
			transaction.commit();
		}
	}
	
	// to fetch all orders for a particular user
	public List<Order> getOrderByUserId(int userid){
		return manager.createQuery("select o from Order o where o.user.id = ?1", Order.class)
				.setParameter(1, userid)
				.getResultList();
	}
	
	
	
	
	
	
	
	
}
