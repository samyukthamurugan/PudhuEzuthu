<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.xbbnhfk.book.BookDao"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="com.xbbnhfk.book.BookBean"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
BookDao bookDao=new BookDao();
BookBean bookBeanObj=new BookBean();


int pages=Integer.parseInt(request.getParameter("pages"));
float weight=Float.parseFloat(request.getParameter("weight"));
float price=Float.parseFloat(request.getParameter("price"));

String author=request.getParameter("author");
System.out.println(author);
String dimensions=request.getParameter("dimension");
String copyType=request.getParameter("copy");
String genre=request.getParameter("genre");
String bookDesc=request.getParameter("name");
String img=request.getParameter("image");
bookBeanObj.setAuthor(author);
bookBeanObj.setBookDesc(bookDesc);
/* bookBeanObj.setPhoto(img); */
bookBeanObj.setCopyType(copyType);
bookBeanObj.setDimensions(dimensions);
bookBeanObj.setGenre(genre);
bookBeanObj.setPages(pages);
bookBeanObj.setPrice(price);
bookBeanObj.setWeight(weight);


bookDao.insertBook(bookBeanObj);/* 
 RequestDispatcher rd=request.getRequestDispatcher("addBookHotel.jsp");  */
%>Book Inserted successfully!
</body>
</html>