package com.xbbnhfk.book;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class BookSupport {
	Scanner sc=new Scanner(System.in);
	String searchWord;
                   BookDao bookDao=new BookDao();
                   
 public void forInserting()
 {
	 BookBean bookBeanObj=new BookBean();
		 System.out.println("enter bookid,pages,weight,price,author,dimension,copytype,genre,"
		 		+ "book desc");
		 int bookid=sc.nextInt();
		 int pages=sc.nextInt();
		 float weight=sc.nextFloat();
		 float price=sc.nextFloat();
		
		 String author=sc.next();
		 String dimensions=sc.next();
		 String copyType=sc.next();
		 String genre=sc.next();
		 String bookDesc=sc.next();
		 
		 bookBeanObj.setAuthor(author);
		bookBeanObj.setBookDesc(bookDesc);
		bookBeanObj.setBookid(bookid);
		bookBeanObj.setCopyType(copyType);
		bookBeanObj.setDimensions(dimensions);
		bookBeanObj.setGenre(genre);
		bookBeanObj.setPages(pages);
		bookBeanObj.setPrice(price);
		bookBeanObj.setWeight(weight);
		 bookDao.insertBook(bookBeanObj);
 }
 public void forSearching(){
	 System.out.println("enter the keyword for searching");      		
     searchWord=sc.nextLine();
     List<BookBean> searchList = bookDao.searchBook(searchWord);
     
		 Iterator<BookBean> ite =  searchList.iterator();
		while(ite.hasNext())
		{
			 
      BookBean bookBeanObje=ite.next();
      
      System.out.println("Author Name: "+bookBeanObje.getAuthor());
      System.out.println("Book Description: "+bookBeanObje.getBookDesc());
      
      System.out.println("Book id: "+bookBeanObje.getBookid());
      System.out.println("copy type: "+bookBeanObje.getCopyType());
      System.out.println("Dimension: "+bookBeanObje.getDimensions());
      System.out.println("Book Genre: "+bookBeanObje.getGenre());
      System.out.println("Pages: "+bookBeanObje.getPages());
      System.out.println("Price: "+bookBeanObje.getPrice());
      System.out.println("Weight: "+bookBeanObje.getWeight());
      
}     	
		
 }
 public void forViewing()
 {
     
     
    	List<BookBean> viewList = bookDao.viewBook();
    
          		 Iterator<BookBean> itr =  viewList.iterator();
          		while(itr.hasNext()){
          			 
                   BookBean bookBeanObj=itr.next();
                   
                   System.out.println("Author Name: "+bookBeanObj.getAuthor());
                   System.out.println("Book Description: "+bookBeanObj.getBookDesc());
                   
                   System.out.println("Book id: "+bookBeanObj.getBookid());
                   System.out.println("copy type: "+bookBeanObj.getCopyType());
                   System.out.println("Dimension: "+bookBeanObj.getDimensions());
                   System.out.println("Book Genre: "+bookBeanObj.getGenre());
                   System.out.println("Pages: "+bookBeanObj.getPages());
                   System.out.println("Price: "+bookBeanObj.getPrice());
                   System.out.println("Weight: "+bookBeanObj.getWeight());
                   
}
 }
}
