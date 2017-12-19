package com.book.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.book.dao.BookDAO;
import com.book.domain.Book;
import com.book.exception.BookException;

@Service
public class BookService {
	
	@Resource
	private BookDAO bookDAO;
	
	@Transactional(propagation=Propagation.REQUIRED, rollbackFor=BookException.class)
	public void saveBook(Book b) throws BookException{
		bookDAO.saveBook(b);
	}
	
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
	public List<Book> getBooks(){
		return bookDAO.getBooks();
	}
	
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)
	public Book getBook(int bid){
		return bookDAO.getBook(bid);
	}
}
