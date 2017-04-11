package com.xbbnhfk.profile;


import org.apache.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProfileDao {
	final static Logger logger = Logger.getLogger(ProfileDao.class);
	
	//for viewing the profile -component 4
	public ArrayList<ProfileBean> viewProfile(String email)
	{
		Connection conn=ConnectionManager.getConnection();
	PreparedStatement stmt=null;
	System.out.println(email);

	ResultSet resultset=null;

	ArrayList<ProfileBean> viewList = null;

		String viewQuery="select * from T_XBBNHFK_PROFILE_DETAIL where email_id=?";
		
		try
		{
			logger.debug("This is debug");
		
			logger.warn("This is warn");
			 stmt = conn.prepareStatement(viewQuery);
			 stmt.setString(1,email);
			 resultset = stmt.executeQuery();	
			 viewList = new ArrayList<ProfileBean>();
			 while(resultset.next()) {
				 ProfileBean profileBean=new ProfileBean();
				 profileBean.setName(resultset.getString("USER_NAME"));
				 profileBean.setLastName(resultset.getString("USER_LAST_NAME"));
				 profileBean.setPhoneNumber(resultset.getString("PHONE_NUMBER"));
				 profileBean.setEmailId(resultset.getString("EMAIL_ID"));
				 profileBean.setAddressLine1(resultset.getString("ADDRESS_LINE1"));
				 profileBean.setAddressLine2(resultset.getString("ADDRESS_LINE2"));
				 profileBean.setCity(resultset.getString("CITY"));
				 profileBean.setZipCode(resultset.getString("ZIP_CODE"));
				
					logger.info(resultset.getString("ZIP_CODE"));
					
				 profileBean.setUserId(resultset.getInt("USER_ID"));
				viewList.add(profileBean);
				
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
	return (ArrayList<ProfileBean>) viewList;
		
	}
	
	
	public void editProfile(int id,ProfileBean proBean)
	{
		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;
int idC=id;
		ResultSet resultset=null;
//ProfileBean proBean=pbean;
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
		
		
	
	}
	
	
	public int createProfile(ProfileBean profileBean)
	
	
	{

		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;
		ResultSet resultset=null;

		List viewList = null;
		

		/*rofileBean profileBean=new ProfileBean();*/
	//insert statement
	String insertQuery="insert into T_XBBNHFK_PROFILE_DETAIL(USER_NAME,USER_LAST_NAME,PHONE_NUMBER,EMAIL_ID,ADDRESS_LINE1,ADDRESS_LINE2,CITY,ZIP_CODE) values(?,?,?,?,?,?,?,?)" ;

	try {
		stmt= conn.prepareStatement(insertQuery);

	stmt.setString(1, profileBean.getName());	
	stmt.setString(2,  profileBean.getLastName());	
	stmt.setString(3,  profileBean.getPhoneNumber());	
	stmt.setString(4, profileBean.getEmailId());	
	stmt.setString(5,  profileBean.getAddressLine1());	
	stmt.setString(6,  profileBean.getAddressLine2());	
	stmt.setString(7,  profileBean.getCity());	
	stmt.setString(8,  profileBean.getZipCode());	
	

	stmt.execute();


	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}return 1;
	}
public void createEntry(String username,String pwd)
	
	
	{

		Connection conn=ConnectionManager.getConnection();
		PreparedStatement stmt=null;
		ResultSet resultset=null;

		List viewList = null;
		

		/*rofileBean profileBean=new ProfileBean();*/
	//insert statement
	String insertQuery="insert into T_XBBNHFK_LOGIN(USER_NAME,PASSWORD) values(?,?)" ;

	try {
		stmt= conn.prepareStatement(insertQuery);

	stmt.setString(1, username);	
	stmt.setString(2,  pwd);	
	

	stmt.execute();


	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}


	public boolean loginvalidate(String loginid, String password1) {
		// TODO Auto-generated method stub
		      Connection conn = ConnectionManager.getConnection();
	       PreparedStatement stmt = null;
           ResultSet resultset = null;

    String searchQuery = "SELECT *  from T_XBBNHFK_LOGIN where USER_NAME=? and password=?";
    try {
           stmt = conn.prepareStatement(searchQuery);
           stmt.setString(1, loginid);       
           stmt.setString(2, password1);                           
           resultset = stmt.executeQuery(); 
           while(resultset.next()) {
                  return true;
                               }
           
           
    } catch (SQLException e) {
           
           e.printStackTrace();
    }      
    finally{
           try {
                  if(resultset != null)
                  resultset.close();
                  if(stmt != null)                                
                  stmt.close();                     
                  conn.commit();
                  if(conn != null)
                  conn.close();
           }                    
           catch (SQLException e) {
                        
                        e.printStackTrace();
                  }
    }
    return false;

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}

