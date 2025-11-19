package com.jsp.bookStore.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.bookStore.DTO.User;

@Repository
public class UserDAO {

	@Autowired
	EntityManager manager;
	
	@Autowired
	EntityTransaction transaction;
	
	// to save user object
	public void saveUser(User user) {
		transaction.begin();
		manager.persist(user);
		transaction.commit();
	}

	
	// to search user [for login verification]
	public User findUserByEmailAndPassword(String email , String password ) {
		
		List<User> userList = manager.createQuery("select u from User u where u.email=?1 and u.password=?2"  , User.class)
				.setParameter(1, email)
				.setParameter(2, password)
				.getResultList();
		
		return userList.isEmpty() ? null : userList.get(0);
	}
	
	// update user Object
	public void updateUser(int userid, String newName) {
		User user = manager.find(User.class, userid);
		if(user != null) {
			user.setName(newName);
			transaction.begin();
			manager.merge(user);
			transaction.commit();
		}
	}
	
	// to remove a user
	public void updateUser(int userid) {
		User user = manager.find(User.class, userid);
		if(user != null) {
			transaction.begin();
			manager.remove(user);
			transaction.commit();
		}
	}
	
	public void updateLoggedInUser(User user) {
		transaction.begin();
		manager.merge(user);
		transaction.commit();
	}
}



















