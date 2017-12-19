package com.book.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.book.domain.Book;
import com.book.service.BookService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.StringLengthFieldValidator;

@Controller
@Namespace("/")
@ParentPackage("struts-default")
@Results({
	@Result(name="addSuccess", location="/BookRegSucc.jsp"),
	@Result(name="getBook", location="/BookDetails.jsp"),
	@Result(name="getBooks", location="/ListBook.jsp"),
	@Result(name="input", location="/BookRegister.jsp")
})
@Scope("prototype")
public class BookAction{

	@Resource
	private BookService bookService;
	
	private int bid;
	private String name;
	private String category;
	private String author;
	private String discount;
	private String priceStr;
	private double price;
	private String amountStr;
	private int amount;
	private String introduction;
	
	private Book book;
	private List<Book> books;

	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	@RequiredStringValidator(
			key = "error.name.required",
			trim = true,
			shortCircuit = true
	)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	@RequiredStringValidator(
			key = "error.category.required",
			trim = true,
			shortCircuit = true
	)
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}

	@RequiredStringValidator(
			key = "error.author.required",
			trim = true,
			shortCircuit = true
	)
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	@RequiredStringValidator(
			key = "error.discount.required",
			trim = true,
			shortCircuit = true
	)
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	
	@RequiredStringValidator(
			key = "error.price.required",
			trim = true,
			shortCircuit = true
	)
	public String getPrice() {
		return priceStr;
	}
	public void setPrice(String priceStr) {
		this.priceStr = priceStr;
	}

	@RequiredStringValidator(
			key = "error.amount.required",
			trim = true,
			shortCircuit = true
	)
	public String getAmount() {
		return amountStr;
	}
	public void setAmount(String amountStr) {
		this.amountStr = amountStr;
	}
	
	@RequiredStringValidator(
			key = "error.introduction.required",
			trim = true,
			shortCircuit = true
	)
	@StringLengthFieldValidator(
			key = "error.introduction.length",
			minLength = "0",
			maxLength = "100"
	)
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	public Book getBook(){
		return book;
	}

	public List<Book> getBooks() {
		return books;
	}

	@Action("addBookAction")
	public String addBook(){
		
		//校验价格
		/*if(priceStr == null || priceStr.trim().length() == 0) {
			addFieldError("year", getText("error.year.required"));
		}
		else {
			try {
				price = Double.parseDouble(priceStr);
				if(price < 1 || price > 100) {
					addFieldError("price", getText("error.price.range" , new String[]{"1" , "100"}));
				}
			} catch (Exception e) {
				addFieldError("price", getText("error.price.posive"));
			}
		}
		
		//校验数量
		if(amountStr == null || amountStr.trim().length() == 0) {
			addFieldError("amount", getText("error.amount.required"));
		}
		else {
			try {
				amount = Integer.parseInt(amountStr);
			} catch (Exception e) {
				addFieldError("amount", getText("error.amount.posive"));
			}
		}*/
		
		//添加图书
		try {
			Book b = new Book(name, category, author, discount, price, amount, introduction);
			bookService.saveBook(b);
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
		return "addSuccess";
	}
	
	@Action("getBookAction")
	public String Book(){
		try {
			book = bookService.getBook(bid);
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
		return "getBook";
	}
	
	@Action("getBooksAction")
	public String Books(){
		try {
			books = bookService.getBooks();
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
		return "getBooks";
	}
	
}
