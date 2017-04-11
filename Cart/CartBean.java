package com.xbbnhfk.Cart;
import com.xbbnhfk.book.BookBean;
public class CartBean {
private BookBean bookBean;
CartBean(BookBean bookBean)
{
	this.bookBean=bookBean;
}
int quantity;
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}

}
