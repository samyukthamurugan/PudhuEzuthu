package com.xbbnhfk.DeliveryStatus;

import com.xbbnhfk.book.BookBean;

public class CourierBean {
String courierName;
String consignmentNumber;
String sentDate;String sentTo;
String coDescription;
public String getCoDescription() {
	return coDescription;
}
public void setCoDescription(String coDescription) {
	this.coDescription = coDescription;
}
public int getNumberOfBooks() {
	return numberOfBooks;
}
public void setNumberOfBooks(int numberOfBooks) {
	this.numberOfBooks = numberOfBooks;
}
String sentTime;
String courierAddress;

int numberOfBooks;
public String getCourierName() {
	return courierName;
}
public void setCourierName(String courierName) {
	this.courierName = courierName;
}
public String getConsignmentNumber() {
	return consignmentNumber;
}
public void setConsignmentNumber(String consignmentNumber) {
	this.consignmentNumber = consignmentNumber;
}
public String getSentDate() {
	return sentDate;
}
public void setSentDate(String sentDate) {
	this.sentDate = sentDate;
}
public String getSentTime() {
	return sentTime;
}
public void setSentTime(String sentTime) {
	this.sentTime = sentTime;
}
public String getCourierAddress() {
	return courierAddress;
}
public void setCourierAddress(String courierAddress) {
	this.courierAddress = courierAddress;
}
public String getSentTo() {
	return sentTo;
}
public void setSentTo(String sentTo) {
	this.sentTo = sentTo;
}


}
