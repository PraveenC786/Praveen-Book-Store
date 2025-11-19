package com.jsp.bookStore.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.bookStore.DTO.Book;

@Repository
public class BookDAO {

	
	@Autowired
	EntityManager manager;
	
	@Autowired
	EntityTransaction transaction;
	
	public List<Book> getAllBooks() {
	    return manager.createQuery("SELECT b FROM Book b", Book.class).getResultList();
	}

	// to find book by id
	public Book getBookById(int id) {
		return manager.find(Book.class,  id);
	}
	
	// to find book by title
	public List<Book> getBookByTitle(String title){
		
		return manager.createQuery("select b from Book b where b.title LIKE:title", Book.class)
		.setParameter("title", "%"+title+"%")
		.getResultList();
	}
	
	
	
	
	
}
