package com.xbbnhfk.DeliveryStatus;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.xbbnhfk.profile.ConnectionManager;
public class CourierController extends JdbcDaoSupport {
	
	  
	  
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate1(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  
	  
	public int saveEmployee(CourierBean cbean){  
		
		List viewList = null;
	//insert statement
	String query="insert into T_XBBNHFK_DELIVERY_STAT(courier_Name,consignment_Number,sent_Date,sent_Time,courier_Address,ad_description,number_of_books,sent_to) values('"+cbean.getCourierName()+"','"+cbean.getConsignmentNumber()+"','"+cbean.getSentDate()+"','"+cbean.getSentTime()+"','"+cbean.getCourierAddress()+"','"+cbean.getCoDescription()+"',"+cbean.getNumberOfBooks()+",'"+cbean.getSentTo()+"')";
	System.out.println(query);
	    
	    return getJdbcTemplate().update(query);  
	}  
	
	 
}
