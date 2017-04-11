<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.xbbnhfk.DeliveryStatus.CourierDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import= "org.springframework.context.ApplicationContext"%>  
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext"%> 
<%@ page import="com.xbbnhfk.DeliveryStatus.CourierController"%>
<%@ page import="com.xbbnhfk.DeliveryStatus.CourierBean"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Courier Details</title>
</head>
<body>
<%
CourierDao courierDao=new CourierDao();
CourierBean courierBean=new CourierBean();
String courierName=request.getParameter("courierName");

String consignmentNumber=request.getParameter("consignmentNumber");
String sentDate=request.getParameter("sentDate");
String sentTime=request.getParameter("sentTime");
String courierAddress=request.getParameter("courierAddress");

int numberOfBooks=Integer.parseInt(request.getParameter("numberOfBooks")); 
String confirmationText=request.getParameter("confirmationText");
String sentTo=request.getParameter("sentTo");

courierBean.setCoDescription(confirmationText);
courierBean.setConsignmentNumber(consignmentNumber);
courierBean.setCourierAddress(courierAddress);
courierBean.setCourierName(courierName);
courierBean.setNumberOfBooks(numberOfBooks);
courierBean.setSentDate(sentDate);

courierBean.setSentTime(sentTime);
courierBean.setSentTo(sentTo);
ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");  
CourierController dao=(CourierController)ctx.getBean("edao");  
int status=dao.saveEmployee(courierBean);  
System.out.println(status); 
//courierDao.createDeliveryStatus(courierBean);
%>Courier Added successfully!
 <%RequestDispatcher rd=request.getRequestDispatcher("CourierPage.html");
                       
                             rd.include(request,response); %>
               
</body>
</html>