package com.xbbnhfk.book;

import org.apache.log4j.Logger;





public class BookBean {
	final static Logger logger = Logger.getLogger(BookBean.class);
	//declare variables
private String author;
private String dimensions;
private String copyType;
private String genre;
private float weight;
private float price;
private int bookid;
private int pages;
private String bookDesc;
/*private String photo;*/
 //create getters and setters
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getDimensions() {
	return dimensions;
}
public void setDimensions(String dimensions) {
	this.dimensions = dimensions;
}
public String getCopyType() {
	return copyType;
}

public String getBookDesc() {
	return bookDesc;
}
public void setBookDesc(String bookDesc) {
	this.bookDesc = bookDesc;
}
public int getBookid() {
	return bookid;
}
public void setBookid(int bookid) {
	this.bookid = bookid;
	logger.info("book id set");
}
public void setCopyType(String copyType) {
	this.copyType = copyType;
}
public String getGenre() {
	return genre;
}
public void setGenre(String genre) {
	this.genre = genre;
}
public float getWeight() {
	return weight;
}
public void setWeight(float weight) {
	this.weight = weight;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public int getPages() {
	return pages;
}
public void setPages(int pages) {
	this.pages = pages;
}
/*public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}*/
}
