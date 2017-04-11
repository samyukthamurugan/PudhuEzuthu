package com.xbbnhfk.book;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import com.xbbnhfk.profile.ConnectionManager;
import com.xbbnhfk.profile.ProfileBean;


public class BookDao implements iBook{
	/*public void editBookDetails(BookBean bookBean)
	{
		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;

		ResultSet resultset=null;
//ProfileBean bookBean=pbean;
		List updateList = null;
		String updateQuery="update T_XBBNHFK_BOOK set AUTHOR=?,BOOK_DESCRIPTION,COPY_TYPE=?,BOOK_DIMENSION=?,=BOOK_GENRE?,PRICE=?,PAGES=?,WEIGHT=? where BOOK_ID=?";
		try {
			stmt= conn.prepareStatement(updateQuery);

		stmt.setString(1, bookBean.getAuthor());	
		stmt.setString(2, bookBean.getBookDesc());	
		stmt.setString(3, bookBean.getCopyType());	
		stmt.setString(4, bookBean.getDimensions());	
		stmt.setString(5, bookBean.getGenre());	
		stmt.setFloat(6, bookBean.getPrice());	
		stmt.setInt(7, bookBean.getPages());	
		stmt.setFloat(8, bookBean.getWeight());	
		
		stmt.setInt(9, idC);	
		

		stmt.execute();
		

		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
	}*/
//component-1 
public  ArrayList<BookBean> viewBook()
{
	Connection conn=ConnectionManager.getConnection();
PreparedStatement stmt=null;

ResultSet resultset=null;

ArrayList<BookBean> viewList = null;

	String viewQuery="select * from T_XBBNHFK_BOOK";
	
	try
	{
		
		 stmt = conn.prepareStatement(viewQuery);
		 resultset = stmt.executeQuery();	
		 viewList = new ArrayList<BookBean>();
		 while(resultset.next()) {
			 BookBean bookBean = new BookBean();
			bookBean.setAuthor(resultset.getString("AUTHOR"));
			bookBean.setBookDesc(resultset.getString("BOOK_DESCRIPTION"));
			bookBean.setBookid(resultset.getInt("BOOK_ID"));
			bookBean.setCopyType(resultset.getString("COPY_TYPE"));
			bookBean.setDimensions(resultset.getString("BOOK_DIMENSION"));
			bookBean.setGenre(resultset.getString("BOOK_GENRE"));
			bookBean.setPages(resultset.getInt("PAGES"));
			bookBean.setPrice(resultset.getFloat("PRICE"));
			bookBean.setWeight(resultset.getFloat("WEIGHT"));
			viewList.add(bookBean);
			
		 }


	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	finally{
		try {
			if(resultset != null)
			resultset.close();
			if(stmt != null)					
			stmt.close();				
			
			if(conn != null)
			conn.close();
		}			
		 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
return viewList;
	
}



public void insertBook(BookBean bookBean)
{
	
	Connection conn=ConnectionManager.getConnection();
	PreparedStatement stmt=null;
	ResultSet resultset=null;

	/*ArrayList<BookBean> viewList = null;*/
	/*String sword;*/


//insert statement
String insertQuery="insert into T_XBBNHFK_BOOK(AUTHOR,BOOK_DESCRIPTION,COPY_TYPE,BOOK_DIMENSION,BOOK_GENRE,PAGES,PRICE,WEIGHT,BOOK_ID) values(?,?,?,?,?,?,?,?,?)" ;

try {
	stmt= conn.prepareStatement(insertQuery);

stmt.setString(1, bookBean.getAuthor());	
stmt.setString(2, bookBean.getBookDesc());	

stmt.setString(3, bookBean.getCopyType());	
stmt.setString(4, bookBean.getDimensions());	
stmt.setString(5, bookBean.getGenre());	
stmt.setInt(6, bookBean.getPages());	
stmt.setFloat(7, bookBean.getPrice());	
stmt.setFloat(8, bookBean.getWeight());	
stmt.setInt(9, bookBean.getBookid());
/*stmt.setString(9, bookBean.getPhoto());	*/
stmt.execute();


} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}finally{
	try {
		if(resultset != null)
		resultset.close();
		if(stmt != null)					
		stmt.close();				
		
		if(conn != null)
		conn.close();
	}			
	 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
}

public void insertBookToWishList(BookBean bookBean)
{
	
	Connection conn=ConnectionManager.getConnection();
	PreparedStatement stmt=null;
	ResultSet resultset=null;

	/*ArrayList<BookBean> viewList = null;*/
	/*String sword;*/


//insert statement
String insertQuery="insert into T_XBBNHFK_WISHLIST(AUTHOR,BOOK_DESCRIPTION,BOOK_ID,COPY_TYPE,BOOK_DIMENSION,BOOK_GENRE,PAGES,PRICE,WEIGHT) values(?,?,?,?,?,?,?,?,?)" ;

try {
	stmt= conn.prepareStatement(insertQuery);

stmt.setString(1, bookBean.getAuthor());	
stmt.setString(2, bookBean.getBookDesc());	
stmt.setInt(3, bookBean.getBookid());	
stmt.setString(4, bookBean.getCopyType());	
stmt.setString(5, bookBean.getDimensions());	
stmt.setString(6, bookBean.getGenre());	
stmt.setInt(7, bookBean.getPages());	
stmt.setFloat(8, bookBean.getPrice());	
stmt.setFloat(9, bookBean.getWeight());	

stmt.execute();


} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}finally{
	try {
		if(resultset != null)
		resultset.close();
		if(stmt != null)					
		stmt.close();				
		
		if(conn != null)
		conn.close();
	}			
	 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
}




//search using a particular keyword
public  ArrayList<BookBean> searchBook(String searchWord)
{
	  Connection conn=ConnectionManager.getConnection();
      PreparedStatement stmt=null;
      ResultSet resultset=null;

     ArrayList<BookBean> searchiList=  new ArrayList<BookBean>();
     String sWord="%"+searchWord+"%";
    String viewQuery1="select * from T_XBBNHFK_BOOK where AUTHOR like ?";

	try
	{
		
		    stmt = conn.prepareStatement(viewQuery1);
		 	 stmt.setString(1,sWord);	
	         resultset = stmt.executeQuery();	
	        // searchiList = new ArrayList<BookBean>();
		 while(resultset.next()) {
			 BookBean bookBean = new BookBean();
			bookBean.setAuthor(resultset.getString("AUTHOR"));
			bookBean.setBookDesc(resultset.getString("BOOK_DESCRIPTION"));
			bookBean.setBookid(resultset.getInt("BOOK_ID"));
			bookBean.setCopyType(resultset.getString("COPY_TYPE"));
			bookBean.setDimensions(resultset.getString("BOOK_DIMENSION"));
			bookBean.setGenre(resultset.getString("BOOK_GENRE"));
			bookBean.setPages(resultset.getInt("PAGES"));
			bookBean.setPrice(resultset.getFloat("PRICE"));
			bookBean.setWeight(resultset.getFloat("WEIGHT"));
			searchiList.add(bookBean);
			
		 }


	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	String viewQuery2="select * from T_XBBNHFK_BOOK where BOOK_DESCRIPTION like ?";
	
	try
	
	{ //System.out.println("hi1");
		stmt = conn.prepareStatement(viewQuery2);
		 stmt.setString(1,sWord);	
		 resultset = stmt.executeQuery();	
		 //searchiList = new ArrayList<BookBean>();
		 while(resultset.next()) {
			 BookBean bookBean = new BookBean();
			bookBean.setAuthor(resultset.getString("AUTHOR"));
			bookBean.setBookDesc(resultset.getString("BOOK_DESCRIPTION"));
			bookBean.setBookid(resultset.getInt("BOOK_ID"));
			bookBean.setCopyType(resultset.getString("COPY_TYPE"));
			bookBean.setDimensions(resultset.getString("BOOK_DIMENSION"));
			bookBean.setGenre(resultset.getString("BOOK_GENRE"));
			bookBean.setPages(resultset.getInt("PAGES"));
			bookBean.setPrice(resultset.getFloat("PRICE"));
			bookBean.setWeight(resultset.getFloat("WEIGHT"));
			searchiList.add(bookBean);
			System.out.println("hi2");
		 }


	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	String viewQuery3="select * from T_XBBNHFK_BOOK where BOOK_GENRE like ?";
	try
	{
		
		 stmt = conn.prepareStatement(viewQuery3);
		  stmt.setString(1,sWord);	
		  resultset = stmt.executeQuery();	
		// searchiList = new ArrayList<BookBean>();
		 while(resultset.next()) {
			 BookBean bookBean = new BookBean();
			bookBean.setAuthor(resultset.getString("AUTHOR"));
			bookBean.setBookDesc(resultset.getString("BOOK_DESCRIPTION"));
			bookBean.setBookid(resultset.getInt("BOOK_ID"));
			bookBean.setCopyType(resultset.getString("COPY_TYPE"));
			bookBean.setDimensions(resultset.getString("BOOK_DIMENSION"));
			bookBean.setGenre(resultset.getString("BOOK_GENRE"));
			bookBean.setPages(resultset.getInt("PAGES"));
			bookBean.setPrice(resultset.getFloat("PRICE"));
			bookBean.setWeight(resultset.getFloat("WEIGHT"));
			searchiList.add(bookBean);
			
		 }


	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	finally{
		try {
			if(resultset != null)
			resultset.close();
			if(stmt != null)					
			stmt.close();				
			
			if(conn != null)
			conn.close();
		}			
		 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
return searchiList;
}





}





