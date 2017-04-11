package com.xbbnhfk.DeliveryStatus;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.xbbnhfk.profile.ConnectionManager;
import com.xbbnhfk.DeliveryStatus.CourierBean;

public class CourierDao implements iDeliveryStatus {
public ArrayList<CourierBean> viewCourier()
	{
		Connection conn=ConnectionManager.getConnection();
	PreparedStatement stmt=null;


	ResultSet resultset=null;

	ArrayList<CourierBean> viewList = null;

		String viewQuery="select * from T_XBBNHFK_DELIVERY_STAT ";
		
		try
		{
			
			 stmt = conn.prepareStatement(viewQuery);
			 
			 resultset = stmt.executeQuery();	
			 viewList = new ArrayList<CourierBean>();
			 while(resultset.next()) {
				 CourierBean courierBean=new CourierBean();
				 courierBean.setCourierName(resultset.getString(1));
				 courierBean.setConsignmentNumber(resultset.getString(2));
				 courierBean.setSentDate(resultset.getString(3));
				 courierBean.setSentTime(resultset.getString(4));
				 courierBean.setCourierAddress(resultset.getString(5));
				 courierBean.setNumberOfBooks(resultset.getInt(6));
				 courierBean.setCoDescription(resultset.getString(7));
				 courierBean.setSentTo(resultset.getString(8));
				viewList.add(courierBean);
				
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
	return (ArrayList<CourierBean>) viewList;
		
	}
	
	
	/*public void editDeliveryStatus(int id,CourierBean proBean)
	{
		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;
int idC=id;
		ResultSet resultset=null;
//CourierBean proBean=pbean;
		List updateList = null;
		String updateQuery="update T_XBBNHFK_PROFILE_DETAILS set USER_NAME=?,USER_LAST_NAME=?,EMAIL_ID=?,ADDRESS_LINE1=?,ADDRESS_LINE2=?,CITY=?,ZIP_CODE=? where USER_ID=?";
		try {
			stmt= conn.prepareStatement(updateQuery);

		stmt.setString(1, proBean.getName());	
		stmt.setString(2, proBean.getLastName());	
		stmt.setString(3, proBean.getEmailId());	
		stmt.setString(4, proBean.getAddressLine1());	
		stmt.setString(5, proBean.getAddressLine2());	
		stmt.setString(6, proBean.getCity());	
		stmt.setString(7, proBean.getZipCode());	
		
		stmt.setInt(8, idC);	
		

		stmt.execute();
		

		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
	}*/
	
	
	public void createDeliveryStatus(CourierBean CourierBean)
	
	
	{

		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;
		ResultSet resultset=null;

		List viewList = null;
	//insert statement
	String insertQuery="insert into T_XBBNHFK_DELIVERY_STAT(courier_Name,consignment_Number,sent_Date,sent_Time,courier_Address,ad_description,number_of_books,sent_to) values(?,?,?,?,?,?,?,?)";
	try {
		stmt= conn.prepareStatement(insertQuery);

	stmt.setString(1,CourierBean.getCourierName());	
	stmt.setString(2,CourierBean.getConsignmentNumber());	
	stmt.setString(3,CourierBean.getSentDate());	
	stmt.setString(4,CourierBean.getSentTime());	
	stmt.setString(5,CourierBean.getCourierAddress());	
	stmt.setString(6,CourierBean.getCoDescription());	
	stmt.setInt(7,CourierBean.getNumberOfBooks());	
	stmt.setString(8,CourierBean.getSentTo());

	

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
}
