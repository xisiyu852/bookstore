package com.book.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="book")
public class Book {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int bid;
	
	private String name;
	private String category;
	private String author;
	private String discount;
	private double price;
	private int amount;
	private String introduction;
	
	public Book() {
		super();
	}

	public Book(String name, String category, String author, String discount, double price, int amount,
			String introduction) {
		super();
		this.name = name;
		this.category = category;
		this.author = author;
		this.discount = discount;
		this.price = price;
		this.amount = amount;
		this.introduction = introduction;
	}

	public Book(int bid, String name, String category, String author, String discount, double price, int amount,
			String introduction) {
		super();
		this.bid = bid;
		this.name = name;
		this.category = category;
		this.author = author;
		this.discount = discount;
		this.price = price;
		this.amount = amount;
		this.introduction = introduction;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Override
	public String toString() {
		return "BookRegister [bid=" + bid + ", name=" + name + ", category=" + category + ", author=" + author
				+ ", discount=" + discount + ", price=" + price + ", amount=" + amount + ", introduction="
				+ introduction + "]";
	}
	
	
	
}
