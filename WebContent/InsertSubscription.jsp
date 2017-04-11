<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.xbbnhfk.Subscription.SubscriptionDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="com.xbbnhfk.Subscription.SubscriptionBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Subscription</title>
</head>
<body>
<% String act = request.getParameter("join");
if (act == null) {
    //no button has been selected
} else if (act.equals("annualSub")) {
	 SubscriptionBean SubscriptionBeanObj=new SubscriptionBean();
	 SubscriptionDao sDao=new SubscriptionDao();
	
	 String name= (String)session.getAttribute("uname");

	
	 
	 SubscriptionBeanObj.setEmailId(name);
	SubscriptionBeanObj.setAmount(350);
	SubscriptionBeanObj.setSubscriptionType("Annual");
System.out.println(name);
System.out.println(SubscriptionBeanObj.getAmount());System.out.println(SubscriptionBeanObj.getEmailId());System.out.println(SubscriptionBeanObj.getSubscriptionType());
	 sDao.subscribe(SubscriptionBeanObj); out.print("Thank u for subscribing");response.sendRedirect("userView.html");
	 
} else if (act.equals("lifetimeSub")) {
    //update button was pressed
	SubscriptionBean SubscriptionBeanObj=new SubscriptionBean();
	 SubscriptionDao sDao=new SubscriptionDao();

	 

	 String name= (String)session.getAttribute("uname");
	 
	 SubscriptionBeanObj.setEmailId(name);
	SubscriptionBeanObj.setAmount(1250);
	SubscriptionBeanObj.setSubscriptionType("lifeTime");
	System.out.println(name);
	System.out.println(SubscriptionBeanObj.getAmount());System.out.println(SubscriptionBeanObj.getEmailId());System.out.println(SubscriptionBeanObj.getSubscriptionType());

	 sDao.subscribe(SubscriptionBeanObj);
	 out.print("Thank u for subscribing");response.sendRedirect("userView.html");
}
else if (act.equals("agencySub")) {
    //update button was pressed
	SubscriptionBean SubscriptionBeanObj=new SubscriptionBean();
	 SubscriptionDao sDao=new SubscriptionDao();
	
	 String name= (String)session.getAttribute("agency");
String quantity=request.getParameter("quantity");
	
	 int q=(Integer.parseInt(quantity));
	 SubscriptionBeanObj.setEmailId(name);
	SubscriptionBeanObj.setAmount(q*350);
	SubscriptionBeanObj.setSubscriptionType("Annual");
	System.out.println(name);
	System.out.println(SubscriptionBeanObj.getAmount());System.out.println(SubscriptionBeanObj.getEmailId());System.out.println(SubscriptionBeanObj.getSubscriptionType());

	 sDao.subscribe(SubscriptionBeanObj); out.print("Thank u for subscribing");response.sendRedirect("userView.html");
}else {
    //someone has altered the HTML and sent a different value!
}%>
</body>
</html>