package com.book.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.book.domain.Book;

@Repository
@Transactional
public class BookDAO {
	
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	public void saveBook(final Book b){
		hibernateTemplate.execute(new HibernateCallback(){
			@Override
			public Object doInHibernate(Session session) throws HibernateException {
				session.save(b);
				return null;
			}
			
		});
	}
	
//查询单个详情
	public Book getBook(int bid){
		return hibernateTemplate.get(Book.class, bid);
	}
	
//查询所有列表
	public List<Book> getBooks(){
		return (List<Book>)hibernateTemplate.execute(new HibernateCallback(){

			@Override
			public Object doInHibernate(Session session) throws HibernateException {
				String hql = "from Book";
				Query query = session.createQuery(hql);
				List list = query.list();
				return list;
			}
			
		});
	}
	
}