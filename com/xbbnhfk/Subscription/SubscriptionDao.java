package com.xbbnhfk.Subscription;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.xbbnhfk.DeliveryStatus.CourierBean;
import com.xbbnhfk.Subscription.SubscriptionDetails;
import com.xbbnhfk.profile.ConnectionManager;

public class SubscriptionDao implements iSubscription {
	public  ArrayList<SubscriptionDetails> viewSubscriptions()
	{
		Connection conn=ConnectionManager.getConnection();
	PreparedStatement stmt=null;

	ResultSet resultset=null;

	ArrayList<SubscriptionDetails> viewList =null;

String viewQuery="select p.user_name,p.user_last_name,s.sub_type,s.amount,s.email from T_XBBNHFK_PROFILE_DETAIL p join T_XBBNHFK_SUBSCRIPTION s on p.email_id=s.email";
	
	
		try
		{
			
			 stmt = conn.prepareStatement(viewQuery);
			 resultset = stmt.executeQuery();	
			 viewList = new ArrayList<SubscriptionDetails>();
			 while(resultset.next()) {
				 SubscriptionDetails sBean = new SubscriptionDetails();
				sBean.setSubType(resultset.getString("SUB_TYPE"));
				sBean.setAmount(resultset.getFloat("AMOUNT"));
				sBean.setEmail(resultset.getString("EMAIL"));
				sBean.setUserName(resultset.getString("USER_NAME"));
				sBean.setLastName(resultset.getString("USER_LAST_NAME"));
				viewList.add(sBean);
				
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
	public  ArrayList<SubscriptionBean> viewSubscriptionIndi(String email)
	{
		Connection conn=ConnectionManager.getConnection();
	PreparedStatement stmt=null;

	ResultSet resultset=null;

	ArrayList<SubscriptionBean> viewList = new ArrayList<SubscriptionBean>();

		String viewQuery="select * from T_XBBNHFK_SUBSCRIPTION where email=?";
		
		try
		{
			
			stmt = conn.prepareStatement(viewQuery);
			 stmt.setString(1,email);
			 resultset = stmt.executeQuery();	
			 while(resultset.next()) {
				SubscriptionBean sBean = new SubscriptionBean();
				sBean.setSubscriptionType(resultset.getString("SUB_TYPE"));
				sBean.setAmount(resultset.getFloat("AMOUNT"));
				sBean.setEmailId(resultset.getString("EMAIL"));
				
				viewList.add(sBean);
				
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

	public void subscribe(SubscriptionBean subscriptionBean)
	{
		
		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;
		ResultSet resultset=null;

		/*ArrayList<SubscriptionBean> viewList = null;*/
		/*String sword;*/


	//insert statement
	String insertQuery="insert into T_XBBNHFK_SUBSCRIPTION(SUB_TYPE,AMOUNT,EMAIL) values(?,?,?)" ;

	try {
		stmt= conn.prepareStatement(insertQuery);

	stmt.setString(1, subscriptionBean.getSubscriptionType());	
	stmt.setFloat(2, subscriptionBean.getAmount());	
	stmt.setString(3, subscriptionBean.getEmailId());	
	

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
